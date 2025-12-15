#Versio optimitzada "manualment"
_ZN5Deque10push_frontERKi_opt:
    # rdi = this, rsi = &k
    # PROLOGUE SIMPLIFICADO
    pushq   %rbx
    pushq   %r12
    
    # CARGAS ÚNICAS
    movq    (%rdi), %rbx        # rbx = _valors (GUARDADO)
    movl    12(%rdi), %r12d     # r12d = _ultim (GUARDADO)
    movl    8(%rdi), %eax       # eax = _mida
    
    # Verificar capacidad (1 acceso)
    leal    -1(%rax), %eax      # eax = _mida - 1
    cmpl    %eax, %r12d
    jge     .end                # Salir si no hay espacio
    
    # Si no hay elementos, saltar a insertar
    testl   %r12d, %r12d
    jz      .insert
    
    # USAR REGISTRO PARA ÍNDICE (NO MEMORIA)
    movl    %r12d, %ecx         # ecx = i = _ultim
    
    # PRE-CALCULAR DIRECCION BASE
    leaq    (%rbx,%rcx,4), %rdx # rdx = _valors + i*4 (posición destino)
    
.loop:
    # CARGAR _valors[i-1] DIRECTO
    movl    -4(%rdx), %eax      # eax = _valors[i-1]
    movl    %eax, (%rdx)        # _valors[i] = eax
    
    # ACTUALIZAR DIRECCIÓN (más eficiente que recalcular)
    subq    $4, %rdx            # rdx apunta a siguiente elemento
    
    loop    .loop               # DEC ecx y salta si ecx != 0
    
.insert:
    # Insertar k al principio (1 acceso)
    movl    (%rsi), %eax        # eax = k
    movl    %eax, (%rbx)        # _valors[0] = k
    
    # Incrementar _ultim (1 acceso)
    leal    1(%r12d), %eax      # eax = _ultim + 1
    movl    %eax, 12(%rdi)      # Guardar nuevo _ultim
    
.end:
    popq    %r12
    popq    %rbx
    ret





#MOLT es eficient
_ZN5Deque10push_frontERKi_ultra:
    # NO PROLOGUE para menos overhead (trust caller-saved regs)
    # rdi = this, esi = k (ya viene en registro, no puntero!)
    
    # Cargar todo de una vez
    movq    (%rdi), %r8         # r8 = _valors
    movl    12(%rdi), %ecx      # ecx = _ultim
    movl    8(%rdi), %eax       # eax = _mida
    
    # Verificar espacio rápido
    leal    -1(%rax), %eax
    cmpl    %eax, %ecx
    jge     .ultra_end
    
    # Si vacío, insertar directamente
    testl   %ecx, %ecx
    jz      .ultra_insert
    
    # LOOP UNROLLING 4x (más rápido para arrays grandes)
    movl    %ecx, %edx
    shrl    $2, %edx            # edx = count / 4
    jz      .small_shift
    
.unroll_loop:
    # Mover 4 elementos de una vez
    movl    -16(%r8,%rcx,4), %eax   # _valors[i-4]
    movl    -12(%r8,%rcx,4), %r9d   # _valors[i-3]
    movl    -8(%r8,%rcx,4), %r10d   # _valors[i-2]
    movl    -4(%r8,%rcx,4), %r11d   # _valors[i-1]
    
    movl    %eax, (%r8,%rcx,4)      # _valors[i] = ...
    movl    %r9d, 4(%r8,%rcx,4)     # _valors[i+1] = ...
    movl    %r10d, 8(%r8,%rcx,4)    # _valors[i+2] = ...
    movl    %r11d, 12(%r8,%rcx,4)   # _valors[i+3] = ...
    
    subl    $4, %ecx                # i -= 4
    decl    %edx
    jnz     .unroll_loop

.small_shift:
    # Elementos restantes (0-3)
    andl    $3, %ecx
    jz      .ultra_insert
    
.remainder:
    movl    -4(%r8,%rcx,4), %eax
    movl    %eax, (%r8,%rcx,4)
    decl    %ecx
    jnz     .remainder

.ultra_insert:
    # Insertar
    movl    %esi, (%r8)
    
    # Incrementar _ultim
    movl    12(%rdi), %eax
    incl    %eax
    movl    %eax, 12(%rdi)

.ultra_end:
    ret





#MAXIMO rendimiento

_ZN5Deque10push_frontERKi_sse:
    # rdi = this, esi = k
    
    # Cargar datos esenciales
    movq    (%rdi), %r8         # _valors
    movl    12(%rdi), %ecx      # _ultim
    movl    8(%rdi), %eax       # _mida
    
    # Check rápido
    leal    -1(%rax), %eax
    cmpl    %eax, %ecx
    jge     .sse_end
    
    # Si vacío
    testl   %ecx, %ecx
    jz      .sse_insert
    
    # Usar SSE para bloques de 4 elementos
    movl    %ecx, %edx
    shrl    $2, %edx            # número de bloques SSE
    jz      .sse_small
    
.sse_loop:
    # Calcular offset
    movl    %ecx, %eax
    shll    $4, %eax            # eax = i * 16 (bytes)
    
    # Cargar 4 ints con SSE (alineados si es posible)
    movdqu  -16(%r8,%rax), %xmm0   # _valors[i-4..i-1]
    movdqu  %xmm0, (%r8,%rax)      # _valors[i..i+3]
    
    subl    $4, %ecx
    decl    %edx
    jnz     .sse_loop

.sse_small:
    # Procesar restantes (0-3)
    andl    $3, %ecx
    jz      .sse_insert
    
.sse_remainder:
    movl    -4(%r8,%rcx,4), %eax
    movl    %eax, (%r8,%rcx,4)
    decl    %ecx
    jnz     .sse_remainder

.sse_insert:
    movl    %esi, (%r8)
    
    # Actualizar _ultim
    movl    12(%rdi), %eax
    incl    %eax
    movl    %eax, 12(%rdi)

.sse_end:
    ret

# deque_asm_corregit.s
# Implementació de les funcions de Deque en Assembly x86-64
# Sistema: Linux x86-64 (System V ABI)
# Registres: rdi = this (punter a Deque), esi/rsi = valor/paràmetre

.data

.bss

.text

# =================================================================
# Funció: push_front_asm
# Paràmetres: rdi = punter a Deque, esi = valor k
# Descripció: Insereix un element al davant del deque
# =================================================================
.global push_front_asm
push_front_asm:
    # Prologue: guardem registres que preservarem
    pushq   %rbx
    pushq   %r12
    
    # Càrrega dels membres de l'estructura Deque
    # Estructura: _valors(0), _mida(8), _ultim(12)
    movq    (%rdi), %rbx        # rbx = _valors (punter a l'array)
    movl    12(%rdi), %r12d     # r12d = _ultim (nombre d'elements)
    movl    8(%rdi), %eax       # eax = _mida (capacitat màxima)
    
    # Verificació de capacitat: if (_ultim >= _mida - 1) return
    decl    %eax                # eax = _mida - 1
    cmpl    %eax, %r12d         # compara _ultim amb _mida-1
    jge     .final_push_front   # si _ultim >= _mida-1, surt
    
    # Si el deque està buit, inserim directament
    testl   %r12d, %r12d        # verifica si _ultim == 0
    jz      .inserir_push_front
    
    # Preparació per al bucle de desplaçament
    movl    %r12d, %ecx         # ecx = i = _ultim (comptador)
    leaq    (%rbx,%rcx,4), %rdx # rdx = _valors + i*4 (posició actual)
    
.bucle_push_front:
    # Desplaça element: _valors[i] = _valors[i-1]
    movl    -4(%rdx), %eax      # eax = _valors[i-1]
    movl    %eax, (%rdx)        # _valors[i] = eax
    
    # Moure's a l'element anterior
    subq    $4, %rdx            # rdx apunta ara a _valors[i-1]
    
    # Verificar si hem arribat al principi
    cmpq    %rbx, %rdx          # compara amb _valors[0]
    ja      .bucle_push_front   # continua si rdx > rbx
    
.inserir_push_front:
    # Inserir nou element al davant
    movl    %esi, (%rbx)        # _valors[0] = k
    
    # Incrementar _ultim
    incl    %r12d               # _ultim++
    movl    %r12d, 12(%rdi)     # guarda el nou valor a memòria
    
.final_push_front:
    # Epilogue: restaurar registres
    popq    %r12
    popq    %rbx
    ret

# =================================================================
# Funció: push_back_asm
# Paràmetres: rdi = punter a Deque, esi = valor k
# Descripció: Insereix un element al darrere del deque
# =================================================================
.global push_back_asm
push_back_asm:
    pushq   %rbx
    
    # Càrrega dels membres necessaris
    movq    (%rdi), %rbx        # rbx = _valors
    movl    12(%rdi), %eax      # eax = _ultim
    movl    8(%rdi), %ecx       # ecx = _mida
    
    # Verificació de capacitat: if (_ultim >= _mida) return
    cmpl    %ecx, %eax          # compara _ultim amb _mida
    jge     .final_push_back    # si _ultim >= _mida, surt
    
    # Inserir al final: _valors[_ultim] = k
    movl    %esi, (%rbx,%rax,4) # accés indexat: base + índex*4
    
    # Incrementar _ultim
    incl    %eax                # _ultim++
    movl    %eax, 12(%rdi)      # guarda a memòria
    
.final_push_back:
    popq    %rbx
    ret

# =================================================================
# Funció: pop_front_asm
# Paràmetres: rdi = punter a Deque
# Descripció: Elimina l'element del davant del deque
# =================================================================
.global pop_front_asm
pop_front_asm:
    pushq   %rbx
    pushq   %r12
    
    # Càrrega dels membres
    movq    (%rdi), %rbx        # rbx = _valors (NO es modifica!)
    movl    12(%rdi), %r12d     # r12d = _ultim
    
    # Verificar si el deque està buit
    testl   %r12d, %r12d        # _ultim == 0?
    jz      .final_pop_front    # si buit, surt
    
    # Cas especial: només un element
    cmpl    $1, %r12d
    je      .decrementar_pop_front
    
    # Preparar per al desplaçament
    leal    -1(%r12d), %ecx     # ecx = _ultim - 1 (elements a moure)
    leaq    4(%rbx), %rdx       # rdx = _valors + 1 (origen: segon element)
    xorl    %eax, %eax          # eax = 0 (índex destí)
    
.bucle_pop_front:
    # Verificar si hem mogut tots els elements
    cmpl    %ecx, %eax          # i < _ultim-1?
    jge     .decrementar_pop_front
    
    # Desplaça: _valors[i] = _valors[i+1]
    movl    (%rdx,%rax,4), %r8d # r8d = _valors[i+1]
    movl    %r8d, (%rbx,%rax,4) # _valors[i] = _valors[i+1]
    
    # Incrementar índex
    incl    %eax                # i++
    jmp     .bucle_pop_front
    
.decrementar_pop_front:
    # Decrementar _ultim
    decl    %r12d               # _ultim--
    movl    %r12d, 12(%rdi)     # guarda a memòria
    
.final_pop_front:
    popq    %r12
    popq    %rbx
    ret

# =================================================================
# Funció: pop_back_asm
# Paràmetres: rdi = punter a Deque
# Descripció: Elimina l'element del darrere del deque
# =================================================================
.global pop_back_asm
pop_back_asm:
    pushq   %rbx
    
    # Càrrega de _ultim
    movl    12(%rdi), %ebx      # ebx = _ultim
    
    # Verificar si el deque està buit
    testl   %ebx, %ebx          # _ultim == 0?
    jz      .final_pop_back     # si buit, surt
    
    # Decrementar _ultim (no cal esborrar físicament l'element)
    decl    %ebx                # _ultim--
    movl    %ebx, 12(%rdi)      # guarda a memòria
    
.final_pop_back:
    popq    %rbx
    ret

# =================================================================
# Funció: sum (exemple de funció simple)
# Paràmetres: (int a, int b) passats per la pila (convenció antiga)
# Retorna: a + b a eax
# =================================================================
.global sum
sum:
    pushq   %rbp
    movq    %rsp, %rbp          # Enllaç dinàmic
    movl    8(%rbp), %eax       # a -> eax
    addl    12(%rbp), %eax      # b + eax -> eax
    popq    %rbp                # Desfés enllaç
    ret                         # retorna amb resultat a eax

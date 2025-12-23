# Registres: rdi = this (punter a Deque), esi/rsi = valor/paràmetre

.data

.bss

.text

.global push_front_asm
push_front_asm:
    pushq   %rbx
    pushq   %r12
    
    # Càrrega dels membres de l'estructura Deque
    # _valors(0), _mida(8), _ultim(12)
    movq    (%rdi), %rbx        # rbx = _valors (punter a l'array)
    movl    12(%rdi), %r12d     # r12d = _ultim (nombre d'elements)
    movl    8(%rdi), %eax       # eax = _mida (capacitat màxima)
    
    # if (_ultim >= _mida - 1) return
    decl    %eax                # eax = _mida - 1
    cmpl    %eax, %r12d         # compara _ultim amb _mida-1
    jge     .final_push_front   # si _ultim >= _mida-1, surt
    
    # Si el deque està buit, inserim directament
    testl   %r12d, %r12d        # verifica si _ultim == 0
    jz      .inserir_push_front
    
    movl    %r12d, %ecx         # ecx = i = _ultim (comptador)
    leaq    (%rbx,%rcx,4), %rdx # rdx = _valors + i*4 (posició actual)
    
.bucle_push_front:
    # _valors[i] = _valors[i-1]
    movl    -4(%rdx), %eax      # eax = _valors[i-1]
    movl    %eax, (%rdx)        # _valors[i] = eax
    
    subq    $4, %rdx            # rdx apunta ara a _valors[i-1]
    
    # Comprovar si hem arribat al principi
    cmpq    %rbx, %rdx          # compara amb _valors[0]
    ja      .bucle_push_front   # continua si rdx > rbx
    
.inserir_push_front:
    movl    %esi, (%rbx)        # _valors[0] = k
    
    incl    %r12d               # _ultim++
    movl    %r12d, 12(%rdi)     # guarda el nou valor a memòria
    
.final_push_front:
    popq    %r12
    popq    %rbx
    ret




.global push_back_asm
push_back_asm:
    pushq   %rbx
    
    # Càrrega dels membres de l'estructura Deque
    # _valors(0), _mida(8), _ultim(12)
    movq    (%rdi), %rbx        # rbx = _valors
    movl    12(%rdi), %eax      # eax = _ultim
    movl    8(%rdi), %ecx       # ecx = _mida
    
    # if (_ultim >= _mida) return
    cmpl    %ecx, %eax          # compara _ultim amb _mida
    jge     .final_push_back    # si _ultim >= _mida, surt
    
    movl    %esi, (%rbx,%rax,4) # _valors[_ultim] = k
    
    incl    %eax                # _ultim++
    movl    %eax, 12(%rdi)      # guarda a memòria
    
.final_push_back:
    popq    %rbx
    ret





.global pop_front_asm
pop_front_asm:
    pushq   %rbx
    pushq   %r12
    
    # Càrrega dels membres de l'estructura Deque
    # _valors(0), _mida(8), _ultim(12)
    movq    (%rdi), %rbx        # rbx = _valors (punter a l'array)
    movl    12(%rdi), %r12d     # r12d = _ultim (nombre d'elements)
    movl    8(%rdi), %eax       # eax = _mida (capacitat màxima)
    
    # Comprovar si el deque està buit
    testl   %r12d, %r12d        # _ultim == 0?
    jz      .final_pop_front    # si buit, surt
    
    # Si només hi ha un element, "eliminem" directament
    cmpl    $1, %r12d
    je      .decrementar_pop_front
    
    movl    %r12d, %ecx         # ecx = i = _ultim (comptador)
    leaq    (%rbx,%rcx,4), %rdx # rdx = _valors + i*4 (posició actual)
    subq    $4, %rdx		 # començem a _valors[_ultim-1]
    
.bucle_pop_front:
    # _valors[i] = _valors[i+1]
    movl    4(%rdx), %eax      # eax = _valors[i+1]
    movl    %eax, (%rdx)        # _valors[i] = eax
    
    subq    $4, %rdx            # rdx apunta ara a _valors[i-1]
    
    # Comprovar si hem arribat al principi
    cmpq    %rbx, %rdx          # compara amb _valors[0]
    ja      .bucle_pop_front   # continua si rdx > rbx

    # Decrementar _ultim (no cal esborrar físicament l'element)
.decrementar_pop_front:
    decl    %r12d               # _ultim--
    movl    %r12d, 12(%rdi)     # guarda a memòria
    
.final_pop_front:
    popq    %r12
    popq    %rbx
    ret




.global pop_back_asm
pop_back_asm:
    pushq   %rbx
    
    # Càrrega de _ultim
    movl    12(%rdi), %ebx      # ebx = _ultim
    
    # Comprovar si el deque està buit
    testl   %ebx, %ebx          # _ultim == 0?
    jz      .final_pop_back     # si buit, surt
    
    # Decrementar _ultim (no cal esborrar físicament l'element)
    decl    %ebx                # _ultim--
    movl    %ebx, 12(%rdi)      # guarda a memòria
    
.final_pop_back:
    popq    %rbx
    ret

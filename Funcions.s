push_front:
    ; rdi = &deque = this, rsi = &k
    pushq   %rbx
    pushq   %r12
    
    ; portem els atributs de deque a registres
    movq    %rdi, %rbx        ;rbx = _valors
    movl    12(%rdi), %r12d     ;r12d = _ultim
    movl    8(%rdi), %eax       ;eax = _mida
    
    ; if (_ultim < _mida-1) 
    dec		%eax      			; eax = _mida - 1
    cmpl    %eax, %r12d			; _mida-1 ?? _ultim
    jle     .end_pf                ; acaba si _ultim >= _mida (sempre serà == com a màxim)
    
    ; si _ultim == 0, insereix directament
    testl   %r12d, %r12d
    jz      .insert
    
    movl    %r12d, %ecx        	; ecx = _ultim
    
    leaq    (%rbx,%ecx,4), %rdx ; rdx = _valors + _ultim*4 (posició inicial a l'últim element del deque)
    
.loop_pf:
    movl    -4(%rdx), %eax      ; eax = _valors[i-1]
    movl    %eax, (%rdx)        ; _valors[i] = eax
								; "i" teòrica, ja que aquesta implementació no utilitza un iterador
    
    subq    $4, %rdx            ; rdx apunta al següent element (_valors[i-1])
    
    cmpq	%rbx, %rdx
    jz		.loop 				; si rdx apunta a _valors[0], sortim del bucle
								; (equivalent a acabar quan i == 0)
    
.insert_pf:
    movl    (%rsi), %eax        ; eax = k
    movl    %eax, (%rbx)        ; _valors[0] = k
    
    movl    %r12d, %eax      	; eax = _ultim
    inc		%eax				; ++_ultim
    movl    %eax, 12(%rdi)      ; guardem el nou valor a memòria
    
.end_pf:
    popq    %r12
    popq    %rbx
    ret




push_back:
    ; rdi = &deque = this, rsi = &k
    pushq   %rbx
    pushq   %r12
    
    ; portem els atributs de deque a registres
    movq    %rdi, %rbx        ;rbx = _valors
    movl    12(%rdi), %r12d     ;r12d = _ultim
    movl    8(%rdi), %eax       ;eax = _mida
    
    ; if (_ultim < _mida-1) 
    dec		%eax      			; eax = _mida - 1
    cmpl    %eax, %r12d			; _mida-1 ?? _ultim
    jle     .end_pb                ; acaba si _ultim >= _mida (sempre serà == com a màxim)
  
.insert_pb:			; etiqueta innecessaria pero afegida per millor lectura

    movl    %r12d, %ecx        	; ecx = _ultim
    leaq    (%rbx,%ecx,4), %rdx ; rdx = _valors + _ultim*4

    movl    (%rsi), %eax        ; eax = k
    movl    %eax, (%rdx)        ; _valors[_ultim] = k
    
    movl    %r12d, %eax      	; eax = _ultim
    inc	    %eax				; ++_ultim
    movl    %eax, 12(%rdi)      ; guardem el nou valor a memòria
    
.end_pb:
    popq    %r12
    popq    %rbx
    ret



pop_front:
    ; rdi = &deque = this
    pushq   %rbx
    pushq   %r12
    
    ; portem els atributs de deque a registres
    movq    %rdi, %rbx        ;rbx = _valors
    movl    12(%rdi), %r12d     ;r12d = _ultim
    movl    8(%rdi), %eax       ;eax = _mida
    
    ; si _ultim == 0, acaba directament
    testl   %r12d, %r12d
    jz      .end_pof
    
    movl    %r12d, %ecx        	; ecx = _ultim
    leaq    (%rbx,%ecx,4), %rdx ; rdx = _valors + _ultim*4

.loop_pof:
    movl    4(%rbx), %eax      ; eax = _valors[i+1]
    movl    %eax, (%rbx)        ; _valors[i] = eax
								; "i" teòrica, ja que aquesta implementació no utilitza un iterador
    
    addq    $4, %rbx            ; rbx apunta al següent element (_valors[i+1])
    
    cmpq	%rbx, %rdx
    jz		.loop 				; si rdx apunta a _valors[_ultim], sortim del bucle	

    movl    %r12d, %eax      	; eax = _ultim
    dec		%eax				; --_ultim
    movl    %eax, 12(%rdi)      ; guardem el nou valor a memòria						
    
.end_pof:
    popq    %r12
    popq    %rbx
    ret


pop_back:
    ; rdi = &deque = this
    pushq   %rbx
    pushq   %r12
    
    ; portem els atributs de deque a registres
    movq    %rdi, %rbx        ;rbx = _valors
    movl    12(%rdi), %r12d     ;r12d = _ultim
    movl    8(%rdi), %eax       ;eax = _mida
    
    ; si _ultim == 0, acaba directament
    testl   %r12d, %r12d
    jz      .end_pof
    
				; no cal eliminar l'últim element, ja que quedarà inaccessible quan movem _ultim
				; i només serà accessible després de rebre un nou valor per push	

    movl    %r12d, %eax      	; eax = _ultim
    dec		%eax				; --_ultim
    movl    %eax, 12(%rdi)      ; guardem el nou valor a memòria						
    
.end_pof:
    popq    %r12
    popq    %rbx
    ret
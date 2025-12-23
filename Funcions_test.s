.data

.bss

.text

.global push_front
push_front:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	-8(%rbp), %rdx
    movl	-12(%rbp), %eax
    
    # portem els atributs de deque a registres
    movl	0(%rdx), %ebx	#ebx = _mida
    movl	4(%rdx), %ecx  #ecx = _ultim
    addq	$8, %rdx	#rdx = &valors
    
    # if (_ultim < _mida-1)
    dec		%ebx      			# ebx = _mida - 1
    cmpl    %ebx, %ecx			# _mida-1 ?? _ultim
    jle     .end_pf                # acaba si _ultim >= _mida-1 (sempre serà == com a màxim)
    
    # si _ultim == 0, insereix directament
    testl   %ecx, %ecx
    jz      .insert_pf
    ////////////////////////////////////////////////
    leaq    (%rdx,%rcx,4), %rdx # rdx = _valors + _ultim*4 (posició inicial a l'últim element del deque)
    
.loop_pf:
    movl    -4(%rdx), %eax      # eax = _valors[i-1]
    movl    %eax, (%rdx)        # _valors[i] = eax
                                                                # "i" teòrica, ja que aquesta implementació no utilitza un iterador
    
    subq    $4, %rdx            # rdx apunta al següent element (_valors[i-1])
    
    cmpq	%rbx, %rdx
    jz		.loop_pf 				# si rdx apunta a _valors[0], sortim del bucle
                                                                # (equivalent a acabar quan i == 0)
    
.insert_pf:
    movl    (%rsi), %eax        # eax = k
    movl    %eax, (%rbx)        # _valors[0] = k
    
    movl    %r12d, %eax      	# eax = _ultim
    inc		%eax				# ++_ultim
    movl    %eax, 12(%rdi)      # guardem el nou valor a memòria
    
.end_pf:
    popq    %r12
    popq    %rbx
    ret


.global push_back
push_back:
    pushq	%rbp
    movq	%rsp, %rbp
    movq	%rdi, -8(%rbp)
    movl	%esi, -12(%rbp)
    movq	-8(%rbp), %rax
    movl	(%rax), %eax
    leal	-1(%rax), %edx
    movq	-8(%rbp), %rax
    movl	4(%rax), %eax

    cmpl    %eax, %edx			# _mida-1 ?? _ultim
    jle     .end_pb                # acaba si _ultim >= 	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
.end_pb:
    nop
    popq    %rbp
    ret






.global pop_front
pop_front:
    # rdi = &deque = this
    pushq   %rbx
    pushq   %r12
    
    # portem els atributs de deque a registres
    movq    %rdi, %rbx        #rbx = _valors
        movq    12(%rdi), %rcx
    movl    12(%rdi), %r12d     #r12d = _ultim
    movl    8(%rdi), %eax       #eax = _mida
    
    # si _ultim == 0, acaba directament
    testl   %r12d, %r12d
    jz      .end_pof
    
    leaq    (%rbx,%rcx,4), %rdx # rdx = _valors + _ultim*4

.loop_pof:
    movl    4(%rbx), %eax      # eax = _valors[i+1]
    movl    %eax, (%rbx)        # _valors[i] = eax
                                                                # "i" teòrica, ja que aquesta implementació no utilitza un iterador
    
    addq    $4, %rbx            # rbx apunta al següent element (_valors[i+1])
    
    cmpq	%rbx, %rdx
    jz		.loop_pof 				# si rdx apunta a _valors[_ultim], sortim del bucle

    movl    %r12d, %eax      	# eax = _ultim
    dec		%eax				# --_ultim
    movl    %eax, 12(%rdi)      # guardem el nou valor a memòria
    
.end_pof:
    popq    %r12
    popq    %rbx
    ret




.global pop_back
pop_back:
    # rdi = &deque = this
    pushq   %rbx
    pushq   %r12
    
    # portem els atributs de deque a registres
    movq    %rdi, %rbx        #rbx = _valors
    movl    12(%rdi), %r12d     #r12d = _ultim
    movl    8(%rdi), %eax       #eax = _mida
    
    # si _ultim == 0, acaba directament
    testl   %r12d, %r12d
    jz      .end_pob
    
                                # no cal eliminar l'últim element, ja que quedarà inaccessible quan movem _ultim
                                # i només serà accessible després de rebre un nou valor per push

    movl    %r12d, %eax      	# eax = _ultim
    dec		%eax				# --_ultim
    movl    %eax, 12(%rdi)      # guardem el nou valor a memòria
    
.end_pob:
    popq    %r12
    popq    %rbx
    ret

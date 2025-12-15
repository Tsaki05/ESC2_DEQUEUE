	.file	"dequeue.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN5Deque11copy_valuesERKS_,"axG",@progbits,_ZN5Deque11copy_valuesERKS_,comdat
	.align 2
	.weak	_ZN5Deque11copy_valuesERKS_
	.type	_ZN5Deque11copy_valuesERKS_, @function
_ZN5Deque11copy_valuesERKS_:
.LFB2086:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L2:
	movq	-32(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L3
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L5
.L3:
	call	__cxa_throw_bad_array_new_length@PLT
.L6:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L5:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L6
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2086:
	.size	_ZN5Deque11copy_valuesERKS_, .-_ZN5Deque11copy_valuesERKS_
	.section	.text._ZN5DequeC2ERKi,"axG",@progbits,_ZN5DequeC5ERKi,comdat
	.align 2
	.weak	_ZN5DequeC2ERKi
	.type	_ZN5DequeC2ERKi, @function
_ZN5DequeC2ERKi:
.LFB2089:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jg	.L8
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movl	$4, %edi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L7
.L8:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movabsq	$2305843009213693950, %rdx
	cmpq	%rdx, %rax
	ja	.L10
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	jmp	.L7
.L10:
	call	__cxa_throw_bad_array_new_length@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2089:
	.size	_ZN5DequeC2ERKi, .-_ZN5DequeC2ERKi
	.weak	_ZN5DequeC1ERKi
	.set	_ZN5DequeC1ERKi,_ZN5DequeC2ERKi
	.section	.text._ZN5DequeD2Ev,"axG",@progbits,_ZN5DequeD5Ev,comdat
	.align 2
	.weak	_ZN5DequeD2Ev
	.type	_ZN5DequeD2Ev, @function
_ZN5DequeD2Ev:
.LFB2092:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2092:
	.size	_ZN5DequeD2Ev, .-_ZN5DequeD2Ev
	.weak	_ZN5DequeD1Ev
	.set	_ZN5DequeD1Ev,_ZN5DequeD2Ev
	.section	.text._ZN5DequeaSERKS_,"axG",@progbits,_ZN5DequeaSERKS_,comdat
	.align 2
	.weak	_ZN5DequeaSERKS_
	.type	_ZN5DequeaSERKS_, @function
_ZN5DequeaSERKS_:
.LFB2097:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L16
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque11copy_valuesERKS_
.L16:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2097:
	.size	_ZN5DequeaSERKS_, .-_ZN5DequeaSERKS_
	.section	.text._ZNK5Deque4sizeEv,"axG",@progbits,_ZNK5Deque4sizeEv,comdat
	.align 2
	.weak	_ZNK5Deque4sizeEv
	.type	_ZNK5Deque4sizeEv, @function
_ZNK5Deque4sizeEv:
.LFB2098:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2098:
	.size	_ZNK5Deque4sizeEv, .-_ZNK5Deque4sizeEv
	.section	.text._ZNK5Deque8is_emptyEv,"axG",@progbits,_ZNK5Deque8is_emptyEv,comdat
	.align 2
	.weak	_ZNK5Deque8is_emptyEv
	.type	_ZNK5Deque8is_emptyEv, @function
_ZNK5Deque8is_emptyEv:
.LFB2099:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2099:
	.size	_ZNK5Deque8is_emptyEv, .-_ZNK5Deque8is_emptyEv
	.section	.text._ZNK5Deque9get_frontEv,"axG",@progbits,_ZNK5Deque9get_frontEv,comdat
	.align 2
	.weak	_ZNK5Deque9get_frontEv
	.type	_ZNK5Deque9get_frontEv, @function
_ZNK5Deque9get_frontEv:
.LFB2100:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2100:
	.size	_ZNK5Deque9get_frontEv, .-_ZNK5Deque9get_frontEv
	.section	.text._ZN5Deque9push_backERKi,"axG",@progbits,_ZN5Deque9push_backERKi,comdat
	.align 2
	.weak	_ZN5Deque9push_backERKi
	.type	_ZN5Deque9push_backERKi, @function
_ZN5Deque9push_backERKi:
.LFB2102:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jge	.L26
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
.L26:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2102:
	.size	_ZN5Deque9push_backERKi, .-_ZN5Deque9push_backERKi
	.section	.text._ZN5Deque10push_frontERKi,"axG",@progbits,_ZN5Deque10push_frontERKi,comdat
	.align 2
	.weak	_ZN5Deque10push_frontERKi
	.type	_ZN5Deque10push_frontERKi, @function
_ZN5Deque10push_frontERKi:
.LFB2103:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jge	.L31
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L29
.L30:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	subl	$1, -4(%rbp)
.L29:
	cmpl	$0, -4(%rbp)
	jg	.L30
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L31:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2103:
	.size	_ZN5Deque10push_frontERKi, .-_ZN5Deque10push_frontERKi
	.section	.text._ZN5Deque8pop_backEv,"axG",@progbits,_ZN5Deque8pop_backEv,comdat
	.align 2
	.weak	_ZN5Deque8pop_backEv
	.type	_ZN5Deque8pop_backEv, @function
_ZN5Deque8pop_backEv:
.LFB2104:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jle	.L34
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
.L34:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2104:
	.size	_ZN5Deque8pop_backEv, .-_ZN5Deque8pop_backEv
	.section	.text._ZN5Deque9pop_frontEv,"axG",@progbits,_ZN5Deque9pop_frontEv,comdat
	.align 2
	.weak	_ZN5Deque9pop_frontEv
	.type	_ZN5Deque9pop_frontEv, @function
_ZN5Deque9pop_frontEv:
.LFB2105:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L36
.L37:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	subq	$4, %rax
	addq	%rax, %rdx
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L36:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L37
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jle	.L39
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L39:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2105:
	.size	_ZN5Deque9pop_frontEv, .-_ZN5Deque9pop_frontEv
	.section	.text._ZN5DequeeqERKS_,"axG",@progbits,_ZN5DequeeqERKS_,comdat
	.align 2
	.weak	_ZN5DequeeqERKS_
	.type	_ZN5DequeeqERKS_, @function
_ZN5DequeeqERKS_:
.LFB2110:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movb	%al, -5(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L41
.L43:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	movb	%al, -5(%rbp)
	addl	$1, -4(%rbp)
.L41:
	cmpb	$0, -5(%rbp)
	je	.L42
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L43
.L42:
	movzbl	-5(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2110:
	.size	_ZN5DequeeqERKS_, .-_ZN5DequeeqERKS_
	.section	.rodata
.LC0:
	.string	"[ "
.LC1:
	.string	" "
.LC2:
	.string	"]"
	.section	.text._ZN5Deque5printEv,"axG",@progbits,_ZN5Deque5printEv,comdat
	.align 2
	.weak	_ZN5Deque5printEv
	.type	_ZN5Deque5printEv, @function
_ZN5Deque5printEv:
.LFB2111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, -4(%rbp)
	jmp	.L46
.L47:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addl	$1, -4(%rbp)
.L46:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L47
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2111:
	.size	_ZN5Deque5printEv, .-_ZN5Deque5printEv
	.section	.rodata
	.align 8
.LC3:
	.string	"== TEST 1: Insercions variades =="
.LC4:
	.string	"  mida = "
.LC5:
	.string	"== TEST 2: Pops combinats =="
	.align 8
.LC6:
	.string	"== TEST 3: Esborrar fins a buidar =="
.LC7:
	.string	"  (ha de ser 0)"
.LC8:
	.string	"Dequeue buida? "
.LC9:
	.string	"s\303\255"
.LC10:
	.string	"no"
	.align 8
.LC11:
	.string	"== TEST 4: Inserir despr\303\251s d\342\200\231haver buidat =="
	.align 8
.LC12:
	.string	"== TEST 5: Seq\303\274\303\250ncia llarga d\342\200\231operacions aleat\303\262ries =="
.LC13:
	.string	" (ha de ser 50)"
	.align 8
.LC14:
	.string	"== TEST 6: Buidar la seq\303\274\303\250ncia llarga una a una =="
.LC15:
	.string	"front = "
.LC16:
	.string	"  "
.LC17:
	.string	"mida final = "
	.align 8
.LC18:
	.string	"== TEST 7: Provar l'operador = =="
.LC19:
	.string	"Deque a: "
.LC20:
	.string	"Deque b: "
.LC21:
	.string	"son iguals? "
.LC22:
	.string	"fa la copia"
	.align 8
.LC23:
	.string	"Deque b (despr\303\251s de 'b = a'): "
	.align 8
.LC24:
	.string	"Modifiquem a i comprovem que b no canvia:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2112:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2112
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$10, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN5DequeC1ERKi
.LEHE0:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$10, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	movl	$5, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque10push_frontERKi
	movl	$20, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	movl	$1, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque10push_frontERKi
	movl	$30, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque4sizeEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque9pop_frontEv
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque8pop_backEv
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque4sizeEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque9pop_frontEv
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque8pop_backEv
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque8pop_backEv
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque4sizeEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque8is_emptyEv
	testb	%al, %al
	je	.L49
	leaq	.LC9(%rip), %rax
	jmp	.L50
.L49:
	leaq	.LC10(%rip), %rax
.L50:
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$100, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	movl	$50, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque10push_frontERKi
	movl	$150, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque4sizeEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$55, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5DequeC1ERKi
.LEHE1:
	movl	$1, -48(%rbp)
	jmp	.L51
.L54:
	movl	-48(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	addl	%ecx, %ecx
	addl	%eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.L52
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque10push_frontERKi
	jmp	.L53
.L52:
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
.L53:
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.L51:
	movl	-48(%rbp), %eax
	cmpl	$50, %eax
	jle	.L54
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZN5Deque5printEv
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque4sizeEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L55
.L56:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque9get_frontEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque9pop_frontEv
.L55:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque8is_emptyEv
	xorl	$1, %eax
	testb	%al, %al
	jne	.L56
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	%rax, %rdx
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5Deque4sizeEv
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZNSolsEi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$5, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5DequeC1ERKi
.LEHE2:
	movl	$1, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	movl	$2, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	movl	$3, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	movl	$5, -100(%rbp)
	leaq	-100(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN5DequeC1ERKi
.LEHE3:
	movl	$10, -100(%rbp)
	leaq	-100(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	movl	$20, -100(%rbp)
	leaq	-100(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5DequeeqERKS_
	testb	%al, %al
	je	.L57
	leaq	.LC9(%rip), %rax
	jmp	.L58
.L57:
	leaq	.LC10(%rip), %rax
.L58:
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5DequeaSERKS_
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC23(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC21(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5DequeeqERKS_
	testb	%al, %al
	je	.L59
	leaq	.LC9(%rip), %rax
	jmp	.L60
.L59:
	leaq	.LC10(%rip), %rax
.L60:
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC24(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque9pop_frontEv
	movl	$99, -100(%rbp)
	leaq	-100(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5Deque9push_backERKi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC20(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5Deque5printEv
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE4:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L66
	jmp	.L71
.L70:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	jmp	.L63
.L69:
	endbr64
	movq	%rax, %rbx
.L63:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	jmp	.L64
.L68:
	endbr64
	movq	%rax, %rbx
.L64:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	jmp	.L65
.L67:
	endbr64
	movq	%rax, %rbx
.L65:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN5DequeD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L71:
	call	__stack_chk_fail@PLT
.L66:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2112:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2112:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2112-.LLSDACSB2112
.LLSDACSB2112:
	.uleb128 .LEHB0-.LFB2112
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2112
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L67-.LFB2112
	.uleb128 0
	.uleb128 .LEHB2-.LFB2112
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L68-.LFB2112
	.uleb128 0
	.uleb128 .LEHB3-.LFB2112
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L69-.LFB2112
	.uleb128 0
	.uleb128 .LEHB4-.LFB2112
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L70-.LFB2112
	.uleb128 0
	.uleb128 .LEHB5-.LFB2112
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2112:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2615:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L74
	cmpl	$65535, -8(%rbp)
	jne	.L74
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L74:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2615:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2616:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2616:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

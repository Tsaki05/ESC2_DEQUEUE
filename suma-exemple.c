#include <stdio.h>
extern int asm_suma(int a, int b);
int sum (int a, int b) {
	return a+b;
}
int main(void)
{
printf("14 + 21 = %d\n", asm_suma(14, 21));
printf("14 + 21 = %d\n", sum(14, 21));
return 0;
}


/*	En un fitxer a part (.s)		*/
/*
.data # initialized global data
.bss # uninitialized global data
.text # code segment
.global asm_suma # So that it can be called from outside
asm_suma:
pushq %rbp
movq %rsp, %rbp # Enlace dinamico
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
popq %rbp # Desago enlace
ret # popl %eip
*/

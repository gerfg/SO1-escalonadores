	.file	"main.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.LC0:
	.string	"../instances/inst01"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2383:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2383
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EEC1Ev
	leaq	-133(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-133(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE0:
	leaq	-96(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_Z12readInstanceNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE1:
	leaq	-96(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-133(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movl	$0, -132(%rbp)
.L3:
	movl	-132(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	je	.L2
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EEixEm
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZN7Process12printProcessB5cxx11Ev@PLT
.LEHE2:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	addl	$1, -132(%rbp)
	jmp	.L3
.L2:
	movl	$0, %ebx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L8
	jmp	.L12
.L10:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L6
.L9:
	movq	%rax, %rbx
.L6:
	leaq	-133(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L7
.L11:
	movq	%rax, %rbx
.L7:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L12:
	call	__stack_chk_fail@PLT
.L8:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2383:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2383:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2383-.LLSDACSB2383
.LLSDACSB2383:
	.uleb128 .LEHB0-.LFB2383
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L9-.LFB2383
	.uleb128 0
	.uleb128 .LEHB1-.LFB2383
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB2383
	.uleb128 0
	.uleb128 .LEHB2-.LFB2383
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB2383
	.uleb128 0
	.uleb128 .LEHB3-.LFB2383
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2383:
	.text
	.size	main, .-main
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI7ProcessSaIS0_EEC2Ev
	.type	_ZNSt6vectorI7ProcessSaIS0_EEC2Ev, @function
_ZNSt6vectorI7ProcessSaIS0_EEC2Ev:
.LFB2643:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2643
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2643:
	.section	.gcc_except_table
.LLSDA2643:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2643-.LLSDACSB2643
.LLSDACSB2643:
.LLSDACSE2643:
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EEC2Ev,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EEC5Ev,comdat
	.size	_ZNSt6vectorI7ProcessSaIS0_EEC2Ev, .-_ZNSt6vectorI7ProcessSaIS0_EEC2Ev
	.weak	_ZNSt6vectorI7ProcessSaIS0_EEC1Ev
	.set	_ZNSt6vectorI7ProcessSaIS0_EEC1Ev,_ZNSt6vectorI7ProcessSaIS0_EEC2Ev
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI7ProcessSaIS0_EED2Ev
	.type	_ZNSt6vectorI7ProcessSaIS0_EED2Ev, @function
_ZNSt6vectorI7ProcessSaIS0_EED2Ev:
.LFB2646:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2646
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2646:
	.section	.gcc_except_table
.LLSDA2646:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2646-.LLSDACSB2646
.LLSDACSB2646:
.LLSDACSE2646:
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI7ProcessSaIS0_EED2Ev, .-_ZNSt6vectorI7ProcessSaIS0_EED2Ev
	.weak	_ZNSt6vectorI7ProcessSaIS0_EED1Ev
	.set	_ZNSt6vectorI7ProcessSaIS0_EED1Ev,_ZNSt6vectorI7ProcessSaIS0_EED2Ev
	.section	.text._ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB2652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2652:
	.size	_ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_,comdat
	.align 2
	.weak	_ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_
	.type	_ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_, @function
_ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_:
.LFB2651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movb	$1, -25(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6vectorI7ProcessSaIS1_EEEONSt16remove_referenceIT_E4typeEOS6_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	%rbx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2651:
	.size	_ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_, .-_ZNSt6vectorI7ProcessSaIS0_EEaSEOS2_
	.section	.text._ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv
	.type	_ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv, @function
_ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv:
.LFB2653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$7905747460161236407, %rax
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2653:
	.size	_ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv, .-_ZNKSt6vectorI7ProcessSaIS0_EE4sizeEv
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EEixEm,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorI7ProcessSaIS0_EEixEm
	.type	_ZNSt6vectorI7ProcessSaIS0_EEixEm, @function
_ZNSt6vectorI7ProcessSaIS0_EEixEm:
.LFB2654:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2654:
	.size	_ZNSt6vectorI7ProcessSaIS0_EEixEm, .-_ZNSt6vectorI7ProcessSaIS0_EEixEm
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev:
.LFB2767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI7ProcessED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2767:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev:
.LFB2769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2769:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC1Ev
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC1Ev,_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev:
.LFB2772:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2772
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movabsq	$7905747460161236407, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2772:
	.section	.gcc_except_table
.LLSDA2772:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2772-.LLSDACSB2772
.LLSDACSB2772:
.LLSDACSE2772:
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EED1Ev,_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB2774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2774:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E:
.LFB2775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIP7ProcessEvT_S2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2775:
	.size	_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE,comdat
	.align 2
	.weak	_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, @function
_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE:
.LFB2776:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2776
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rdx
	leaq	-49(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv
	leaq	-49(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EEC1ERKS1_
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI7ProcessED1Ev
	movq	-72(%rbp), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EED1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2776:
	.section	.gcc_except_table
.LLSDA2776:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2776-.LLSDACSB2776
.LLSDACSB2776:
.LLSDACSE2776:
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE,comdat
	.size	_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, .-_ZNSt6vectorI7ProcessSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2Ev:
.LFB2812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaI7ProcessEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2812:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2Ev
	.section	.text._ZNSaI7ProcessED2Ev,"axG",@progbits,_ZNSaI7ProcessED5Ev,comdat
	.align 2
	.weak	_ZNSaI7ProcessED2Ev
	.type	_ZNSaI7ProcessED2Ev, @function
_ZNSaI7ProcessED2Ev:
.LFB2815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2815:
	.size	_ZNSaI7ProcessED2Ev, .-_ZNSaI7ProcessED2Ev
	.weak	_ZNSaI7ProcessED1Ev
	.set	_ZNSaI7ProcessED1Ev,_ZNSaI7ProcessED2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m:
.LFB2817:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m
.L36:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2817:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt8_DestroyIP7ProcessEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP7ProcessEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP7ProcessEvT_S2_
	.type	_ZSt8_DestroyIP7ProcessEvT_S2_, @function
_ZSt8_DestroyIP7ProcessEvT_S2_:
.LFB2818:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2818:
	.size	_ZSt8_DestroyIP7ProcessEvT_S2_, .-_ZSt8_DestroyIP7ProcessEvT_S2_
	.section	.text._ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv, @function
_ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv:
.LFB2819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI7ProcessEC1ERKS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2819:
	.size	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv, .-_ZNKSt12_Vector_baseI7ProcessSaIS0_EE13get_allocatorEv
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EEC2ERKS1_,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorI7ProcessSaIS0_EEC2ERKS1_
	.type	_ZNSt6vectorI7ProcessSaIS0_EEC2ERKS1_, @function
_ZNSt6vectorI7ProcessSaIS0_EEC2ERKS1_:
.LFB2821:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2821:
	.size	_ZNSt6vectorI7ProcessSaIS0_EEC2ERKS1_, .-_ZNSt6vectorI7ProcessSaIS0_EEC2ERKS1_
	.weak	_ZNSt6vectorI7ProcessSaIS0_EEC1ERKS1_
	.set	_ZNSt6vectorI7ProcessSaIS0_EEC1ERKS1_,_ZNSt6vectorI7ProcessSaIS0_EEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_:
.LFB2823:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2823:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_impl12_M_swap_dataERS3_
	.section	.text._ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_,"axG",@progbits,_ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_,comdat
	.weak	_ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_
	.type	_ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_, @function
_ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_:
.LFB2824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE
	addq	$16, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L43
	call	__stack_chk_fail@PLT
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2824:
	.size	_ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_, .-_ZSt15__alloc_on_moveISaI7ProcessEEvRT_S3_
	.section	.text._ZNSaI7ProcessEC2Ev,"axG",@progbits,_ZNSaI7ProcessEC5Ev,comdat
	.align 2
	.weak	_ZNSaI7ProcessEC2Ev
	.type	_ZNSaI7ProcessEC2Ev, @function
_ZNSaI7ProcessEC2Ev:
.LFB2860:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2860:
	.size	_ZNSaI7ProcessEC2Ev, .-_ZNSaI7ProcessEC2Ev
	.weak	_ZNSaI7ProcessEC1Ev
	.set	_ZNSaI7ProcessEC1Ev,_ZNSaI7ProcessEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7ProcessED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev:
.LFB2863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2863:
	.size	_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev, .-_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI7ProcessED1Ev,_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev
	.section	.text._ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m:
.LFB2865:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2865:
	.size	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m
	.section	.text._ZSt11__addressofI7ProcessEPT_RS1_,"axG",@progbits,_ZSt11__addressofI7ProcessEPT_RS1_,comdat
	.weak	_ZSt11__addressofI7ProcessEPT_RS1_
	.type	_ZSt11__addressofI7ProcessEPT_RS1_, @function
_ZSt11__addressofI7ProcessEPT_RS1_:
.LFB2867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2867:
	.size	_ZSt11__addressofI7ProcessEPT_RS1_, .-_ZSt11__addressofI7ProcessEPT_RS1_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_:
.LFB2866:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.L51:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L52
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI7ProcessEPT_RS1_
	movq	%rax, %rdi
	call	_ZSt8_DestroyI7ProcessEvPT_
	addq	$28, -8(%rbp)
	jmp	.L51
.L52:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2866:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_
	.section	.text._ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB2868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2868:
	.size	_ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaI7ProcessEC2ERKS0_,"axG",@progbits,_ZNSaI7ProcessEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSaI7ProcessEC2ERKS0_
	.type	_ZNSaI7ProcessEC2ERKS0_, @function
_ZNSaI7ProcessEC2ERKS0_:
.LFB2870:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2870:
	.size	_ZNSaI7ProcessEC2ERKS0_, .-_ZNSaI7ProcessEC2ERKS0_
	.weak	_ZNSaI7ProcessEC1ERKS0_
	.set	_ZNSaI7ProcessEC1ERKS0_,_ZNSaI7ProcessEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_:
.LFB2873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC1ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2873:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC1ERKS1_
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EEC1ERKS1_,_ZNSt12_Vector_baseI7ProcessSaIS0_EEC2ERKS1_
	.section	.text._ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_:
.LFB2876:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2876:
	.size	_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,"axG",@progbits,_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_,comdat
	.weak	_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.type	_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, @function
_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_:
.LFB2875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP7ProcessEONSt16remove_referenceIT_E4typeEOS4_
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2875:
	.size	_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_, .-_ZSt4swapIP7ProcessENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SG_
	.section	.text._ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_:
.LFB2878:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2878:
	.size	_ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE,"axG",@progbits,_ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE,comdat
	.weak	_ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE
	.type	_ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE, @function
_ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE:
.LFB2877:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSaI7ProcessEEONSt16remove_referenceIT_E4typeEOS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2877:
	.size	_ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE, .-_ZSt18__do_alloc_on_moveISaI7ProcessEEvRT_S3_St17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7ProcessEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev:
.LFB2913:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2913:
	.size	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev, .-_ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI7ProcessEC1Ev,_ZN9__gnu_cxx13new_allocatorI7ProcessEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m:
.LFB2915:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2915:
	.size	_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m
	.section	.text._ZSt8_DestroyI7ProcessEvPT_,"axG",@progbits,_ZSt8_DestroyI7ProcessEvPT_,comdat
	.weak	_ZSt8_DestroyI7ProcessEvPT_
	.type	_ZSt8_DestroyI7ProcessEvPT_, @function
_ZSt8_DestroyI7ProcessEvPT_:
.LFB2916:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7ProcessD1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2916:
	.size	_ZSt8_DestroyI7ProcessEvPT_, .-_ZSt8_DestroyI7ProcessEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7ProcessEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_
	.type	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_, @function
_ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_:
.LFB2918:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2918:
	.size	_ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_, .-_ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessEC1ERKS2_
	.set	_ZN9__gnu_cxx13new_allocatorI7ProcessEC1ERKS2_,_ZN9__gnu_cxx13new_allocatorI7ProcessEC2ERKS2_
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2ERKS1_,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2ERKS1_
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2ERKS1_, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2ERKS1_:
.LFB2921:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaI7ProcessEC2ERKS0_
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2921:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2ERKS1_, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2ERKS1_
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC1ERKS1_
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC1ERKS1_,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implC2ERKS1_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2958:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L71
	cmpl	$65535, -8(%rbp)
	jne	.L71
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L71:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2958:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2959:
	.cfi_startproc
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
.LFE2959:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits

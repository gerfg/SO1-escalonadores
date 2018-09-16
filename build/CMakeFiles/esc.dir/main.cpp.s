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
.LFB1957:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1957
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
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-97(%rbp), %rdx
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
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorI7ProcessSaIS0_EED1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	jmp	.L8
.L7:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L4
.L6:
	movq	%rax, %rbx
.L4:
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L8:
	call	__stack_chk_fail@PLT
.L5:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1957:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1957:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1957-.LLSDACSB1957
.LLSDACSB1957:
	.uleb128 .LEHB0-.LFB1957
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L6-.LFB1957
	.uleb128 0
	.uleb128 .LEHB1-.LFB1957
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB1957
	.uleb128 0
	.uleb128 .LEHB2-.LFB1957
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1957:
	.text
	.size	main, .-main
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorI7ProcessSaIS0_EED2Ev
	.type	_ZNSt6vectorI7ProcessSaIS0_EED2Ev, @function
_ZNSt6vectorI7ProcessSaIS0_EED2Ev:
.LFB2217:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2217
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
.LFE2217:
	.section	.gcc_except_table
.LLSDA2217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2217-.LLSDACSB2217
.LLSDACSB2217:
.LLSDACSE2217:
	.section	.text._ZNSt6vectorI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorI7ProcessSaIS0_EED5Ev,comdat
	.size	_ZNSt6vectorI7ProcessSaIS0_EED2Ev, .-_ZNSt6vectorI7ProcessSaIS0_EED2Ev
	.weak	_ZNSt6vectorI7ProcessSaIS0_EED1Ev
	.set	_ZNSt6vectorI7ProcessSaIS0_EED1Ev,_ZNSt6vectorI7ProcessSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev:
.LFB2331:
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
.LFE2331:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseI7ProcessSaIS0_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev:
.LFB2333:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2333
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
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-6148914691236517205, %rax
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
.LFE2333:
	.section	.gcc_except_table
.LLSDA2333:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2333-.LLSDACSB2333
.LLSDACSB2333:
.LLSDACSE2333:
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EED1Ev
	.set	_ZNSt12_Vector_baseI7ProcessSaIS0_EED1Ev,_ZNSt12_Vector_baseI7ProcessSaIS0_EED2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv:
.LFB2335:
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
.LFE2335:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E
	.type	_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E, @function
_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E:
.LFB2336:
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
.LFE2336:
	.size	_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E, .-_ZSt8_DestroyIP7ProcessS0_EvT_S2_RSaIT0_E
	.section	.text._ZNSaI7ProcessED2Ev,"axG",@progbits,_ZNSaI7ProcessED5Ev,comdat
	.align 2
	.weak	_ZNSaI7ProcessED2Ev
	.type	_ZNSaI7ProcessED2Ev, @function
_ZNSaI7ProcessED2Ev:
.LFB2372:
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
.LFE2372:
	.size	_ZNSaI7ProcessED2Ev, .-_ZNSaI7ProcessED2Ev
	.weak	_ZNSaI7ProcessED1Ev
	.set	_ZNSaI7ProcessED1Ev,_ZNSaI7ProcessED2Ev
	.section	.text._ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m,"axG",@progbits,_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m
	.type	_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m, @function
_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m:
.LFB2374:
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
	je	.L18
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2374:
	.size	_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m, .-_ZNSt12_Vector_baseI7ProcessSaIS0_EE13_M_deallocateEPS0_m
	.section	.text._ZSt8_DestroyIP7ProcessEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP7ProcessEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP7ProcessEvT_S2_
	.type	_ZSt8_DestroyIP7ProcessEvT_S2_, @function
_ZSt8_DestroyIP7ProcessEvT_S2_:
.LFB2375:
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
.LFE2375:
	.size	_ZSt8_DestroyIP7ProcessEvT_S2_, .-_ZSt8_DestroyIP7ProcessEvT_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7ProcessED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev, @function
_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev:
.LFB2411:
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
.LFE2411:
	.size	_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev, .-_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorI7ProcessED1Ev,_ZN9__gnu_cxx13new_allocatorI7ProcessED2Ev
	.section	.text._ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m:
.LFB2413:
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
.LFE2413:
	.size	_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaI7ProcessEE10deallocateERS1_PS0_m
	.section	.text._ZSt11__addressofI7ProcessEPT_RS1_,"axG",@progbits,_ZSt11__addressofI7ProcessEPT_RS1_,comdat
	.weak	_ZSt11__addressofI7ProcessEPT_RS1_
	.type	_ZSt11__addressofI7ProcessEPT_RS1_, @function
_ZSt11__addressofI7ProcessEPT_RS1_:
.LFB2415:
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
.LFE2415:
	.size	_ZSt11__addressofI7ProcessEPT_RS1_, .-_ZSt11__addressofI7ProcessEPT_RS1_
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_:
.LFB2414:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.L26:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofI7ProcessEPT_RS1_
	movq	%rax, %rdi
	call	_ZSt8_DestroyI7ProcessEvPT_
	addq	$24, -8(%rbp)
	jmp	.L26
.L27:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2414:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIP7ProcessEEvT_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m:
.LFB2449:
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
.LFE2449:
	.size	_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorI7ProcessE10deallocateEPS1_m
	.section	.text._ZSt8_DestroyI7ProcessEvPT_,"axG",@progbits,_ZSt8_DestroyI7ProcessEvPT_,comdat
	.weak	_ZSt8_DestroyI7ProcessEvPT_
	.type	_ZSt8_DestroyI7ProcessEvPT_, @function
_ZSt8_DestroyI7ProcessEvPT_:
.LFB2450:
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
.LFE2450:
	.size	_ZSt8_DestroyI7ProcessEvPT_, .-_ZSt8_DestroyI7ProcessEvPT_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2486:
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
	jne	.L32
	cmpl	$65535, -8(%rbp)
	jne	.L32
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L32:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2486:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2487:
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
.LFE2487:
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

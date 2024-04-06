	.file	"lpkm.cc"
	.text
	.section	.text._ZSt23__is_constant_evaluatedv,"axG",@progbits,_ZSt23__is_constant_evaluatedv,comdat
	.weak	_ZSt23__is_constant_evaluatedv
	.type	_ZSt23__is_constant_evaluatedv, @function
_ZSt23__is_constant_evaluatedv:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZSt23__is_constant_evaluatedv, .-_ZSt23__is_constant_evaluatedv
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB134:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	_ZSt23__is_constant_evaluatedv
	testb	%al, %al
	je	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z12dl_req_replyPvmmS_
	.type	_Z12dl_req_replyPvmmS_, @function
_Z12dl_req_replyPvmmS_:
.LFB2312:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fwrite@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2312:
	.size	_Z12dl_req_replyPvmmS_, .-_Z12dl_req_replyPvmmS_
	.local	_ZZ17download_progressPcddddE3bar
	.comm	_ZZ17download_progressPcddddE3bar,120,32
	.section	.rodata
.LC0:
	.string	"|/-\\"
.LC3:
	.string	"%s [%-100s][%d%%][%c]\r"
	.text
	.globl	_Z17download_progressPcdddd
	.type	_Z17download_progressPcdddd, @function
_Z17download_progressPcdddd:
.LFB2313:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jp	.L12
	pxor	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	je	.L9
.L12:
	movsd	-40(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	divsd	-32(%rbp), %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -4(%rbp)
.L9:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	leaq	_ZZ17download_progressPcddddE3bar(%rip), %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	_ZZ17download_progressPcddddE3bar(%rip), %rdx
	movb	$62, (%rax,%rdx)
	addl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	_ZZ17download_progressPcddddE3bar(%rip), %rdx
	movb	$0, (%rax,%rdx)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2313:
	.size	_Z17download_progressPcdddd, .-_Z17download_progressPcdddd
	.section	.rodata
.LC4:
	.string	"wb"
	.align 8
.LC5:
	.string	"User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko"
	.text
	.globl	_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_
	.type	_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_, @function
_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_:
.LFB2314:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, -16(%rbp)
	movl	$1024, %edi
	call	_Znam@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
	movq	-24(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	call	curl_easy_init@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L14
	movq	$0, -48(%rbp)
	movq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	curl_slist_append@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$10023, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$42, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	$10002, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$81, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$41, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$20012, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	leaq	_Z12dl_req_replyPvmmS_(%rip), %rdx
	movl	$20011, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$10001, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movl	$99, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$600, %edx
	movl	$78, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movl	$600, %edx
	movl	$13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	leaq	_Z17download_progressPcdddd(%rip), %rdx
	movl	$20219, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	curl_easy_setopt@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	curl_easy_perform@PLT
	movl	%eax, -4(%rbp)
.L14:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	curl_easy_cleanup@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2314:
	.size	_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_, .-_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_
	.section	.rodata
	.align 8
.LC6:
	.string	"This program requires sudo privileges to run"
.LC7:
	.string	"Packages"
.LC8:
	.string	"polaris"
.LC9:
	.string	"mkdir -p /opt/cache"
.LC10:
	.string	"/opt/cache"
.LC11:
	.string	"dists/"
.LC12:
	.string	"/opt/cache/"
.LC13:
	.string	"cd /opt/cache/"
	.align 8
.LC14:
	.string	"/etc/lingmoPkg.d/lingmoPkg.list.src"
.LC15:
	.string	"Faild!"
.LC16:
	.string	"/"
.LC17:
	.string	"lpkm -h"
.LC18:
	.string	"-C"
.LC19:
	.string	"--config"
.LC20:
	.string	"GetrLmpkg -i "
.LC21:
	.string	"-D"
.LC22:
	.string	"--debinstall"
.LC23:
	.string	"GetpKginf -i "
.LC24:
	.string	"-h"
.LC25:
	.string	"--help"
	.align 8
.LC26:
	.string	"\n\033[44m\033[1mUsage: %s [option] [string]\033[0m\n"
.LC27:
	.string	"\033[44m\033[1mOptions:\033[0m"
	.align 8
.LC28:
	.string	"\t-b, --buildPkg Build Lingmo Packages"
	.align 8
.LC29:
	.string	"\t-C, --configd Config Packages"
	.align 8
.LC30:
	.string	"\t-d, --download Download Packages"
	.align 8
.LC31:
	.string	"\t-D, --debinstall Install Deb Packages"
	.align 8
.LC32:
	.string	"\t-g, --getGithub Get Github Sources"
.LC33:
	.string	"\t-h, --help Show Help"
	.align 8
.LC34:
	.string	"\t-i, --installPkg Install Local Lingmo Packages"
	.align 8
.LC35:
	.string	"\t-l, --listPkg List Lingmo Packages"
	.align 8
.LC36:
	.string	"\t-r, --removePkg Remove Lingmo Packages"
	.align 8
.LC37:
	.string	"\t-u, --updatecache|update Update Lingmo Packages Cache"
.LC38:
	.string	"\t-v, --version Show Version\n"
.LC39:
	.string	"-v"
.LC40:
	.string	"--version"
.LC41:
	.string	"\tLingmo Packages Manager\n"
.LC42:
	.string	"\tVersion: 0.2"
.LC43:
	.string	"\tAuthor: Lingmo OS Team"
.LC44:
	.string	"\tLicense: GPL2.0"
	.align 8
.LC45:
	.string	"\tCopyright \302\251 2024 Lingmo OS All rights reserved."
.LC46:
	.string	"-u"
.LC47:
	.string	"--updatecache"
.LC48:
	.string	"update"
.LC49:
	.string	"Git:["
.LC50:
	.string	"] ..."
.LC51:
	.string	"Git Url \033[44m\033[1mSuccess!\033[0m"
.LC52:
	.string	"-g"
.LC53:
	.string	"--getGithub"
.LC54:
	.string	"https://github.com/LingmoOS"
.LC55:
	.string	".git"
.LC56:
	.string	"-d"
.LC57:
	.string	"--download"
.LC58:
	.string	"https://lingmo.org/"
.LC59:
	.string	".deb"
.LC60:
	.string	"\344\270\213\350\275\275\345\256\214\346\210\220\357\274\201"
	.align 8
.LC61:
	.string	"Please specify a string after the verbose option"
	.align 8
.LC62:
	.string	"\n[\033[1m\033[6m\033[41m\033[37mError\033[0m]: \033[31mUnknown option!\033[0m"
	.align 8
.LC63:
	.string	"\033[44m\033[1mSupported options:\033[0m"
	.align 8
.LC64:
	.string	"\t\033[37m-b, --buildPkg Build Lingmo Packages"
	.align 8
.LC65:
	.string	"\t-v, --version Show Version\033[0m"
	.align 8
.LC66:
	.string	"\033[44m\033[1mUsage: lpkm [option] [string]\033[0m\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2315:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2315
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$2744, %rsp
	.cfi_offset 3, -24
	movl	%edi, -2740(%rbp)
	movq	%rsi, -2752(%rbp)
	call	geteuid@PLT
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L17
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cerr(%rip), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE0:
	movl	$1, %ebx
	jmp	.L40
.L17:
	leaq	-294(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-294(%rbp), %rdx
	leaq	-336(%rbp), %rax
	leaq	.LC7(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE1:
	leaq	-294(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-293(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-293(%rbp), %rdx
	leaq	-368(%rbp), %rax
	leaq	.LC8(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	leaq	-293(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-292(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-292(%rbp), %rdx
	leaq	-400(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	leaq	-292(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-928(%rbp), %rax
	movl	$8, %edx
	leaq	.LC10(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE4:
	leaq	-291(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-291(%rbp), %rdx
	leaq	-960(%rbp), %rax
	leaq	.LC11(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE5:
	leaq	-291(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-992(%rbp), %rax
	leaq	-336(%rbp), %rdx
	leaq	.LC12(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.LEHE6:
	leaq	-290(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-290(%rbp), %rdx
	leaq	-1024(%rbp), %rax
	leaq	.LC13(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE7:
	leaq	-290(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev@PLT
.LEHE8:
	leaq	-1552(%rbp), %rax
	movl	$8, %edx
	leaq	.LC14(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L19
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %ebx
	jmp	.L20
.L19:
	movq	$0, -2576(%rbp)
	movq	$0, -2568(%rbp)
	leaq	-2560(%rbp), %rdx
	movl	$0, %eax
	movl	$126, %ecx
	movq	%rdx, %rdi
	rep stosq
	nop
.L21:
	leaq	-2576(%rbp), %rdx
	leaq	-1552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT
.LEHE9:
	testb	%al, %al
	jne	.L21
	leaq	-289(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-289(%rbp), %rdx
	leaq	-2576(%rbp), %rcx
	leaq	-2608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE10:
	leaq	-289(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-256(%rbp), %rax
	leaq	-2608(%rbp), %rcx
	leaq	.LC16(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE11:
	leaq	-288(%rbp), %rax
	leaq	-960(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_
.LEHE12:
	leaq	-2640(%rbp), %rax
	leaq	-368(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_
.LEHE13:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-224(%rbp), %rax
	leaq	-2640(%rbp), %rcx
	leaq	.LC16(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE14:
	leaq	-2672(%rbp), %rax
	leaq	-336(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_
.LEHE15:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	cmpl	$1, -2740(%rbp)
	jg	.L22
	leaq	-179(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-179(%rbp), %rdx
	leaq	-2704(%rbp), %rax
	leaq	.LC17(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE16:
	leaq	-179(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdi
.LEHB17:
	call	system@PLT
.LEHE17:
	movl	$1, %ebx
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L23
.L22:
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L24
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
.L24:
	cmpl	$3, -2740(%rbp)
	jne	.L25
	leaq	-178(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-2752(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	leaq	-178(%rbp), %rdx
	leaq	-2736(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE18:
	leaq	-178(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-2704(%rbp), %rax
	leaq	-2736(%rbp), %rdx
	leaq	.LC20(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.LEHE19:
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdi
.LEHB20:
	call	system@PLT
.LEHE20:
	movl	$0, %ebx
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L23
.L25:
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L26
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L27
.L26:
	cmpl	$3, -2740(%rbp)
	jne	.L27
	leaq	-177(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-2752(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	leaq	-177(%rbp), %rdx
	leaq	-2736(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE21:
	leaq	-177(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-2704(%rbp), %rax
	leaq	-2736(%rbp), %rdx
	leaq	.LC23(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.LEHE22:
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdi
.LEHB23:
	call	system@PLT
.LEHE23:
	movl	$0, %ebx
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L23
.L27:
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L28
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC25(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L29
.L28:
	movq	-2752(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB24:
	call	printf@PLT
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %ebx
	jmp	.L23
.L29:
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC39(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L30
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC40(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L31
.L30:
	movq	-2752(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %ebx
	jmp	.L23
.L31:
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC46(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L32
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC47(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L32
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC48(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L33
.L32:
	leaq	-928(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv@PLT
	testb	%al, %al
	je	.L34
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rdi
	call	system@PLT
	jmp	.L33
.L34:
	leaq	.LC49(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-176(%rbp), %rax
	leaq	-2672(%rbp), %rcx
	leaq	.LC50(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE24:
	leaq	-176(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB25:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE25:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-992(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB26:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE26:
	leaq	-144(%rbp), %rdx
	leaq	-2672(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB27:
	call	_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_
.LEHE27:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	.LC51(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB28:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE28:
	movl	$0, %ebx
	jmp	.L23
.L33:
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC52(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L35
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC53(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L36
.L35:
	cmpl	$3, -2740(%rbp)
	jne	.L36
	leaq	-98(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-2752(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	leaq	-98(%rbp), %rdx
	leaq	-2736(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE29:
	leaq	-98(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-97(%rbp), %rdx
	leaq	-2704(%rbp), %rax
	leaq	.LC54(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE30:
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-96(%rbp), %rax
	leaq	-2736(%rbp), %rcx
	leaq	.LC55(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB31:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE31:
	leaq	-96(%rbp), %rdx
	leaq	-2704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_
.LEHE32:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L36:
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC56(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L37
	movq	-2752(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC57(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L38
.L37:
	cmpl	$3, -2740(%rbp)
	jne	.L39
	leaq	-50(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-2752(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	leaq	-50(%rbp), %rdx
	leaq	-2736(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE33:
	leaq	-50(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-49(%rbp), %rdx
	leaq	-2704(%rbp), %rax
	leaq	.LC58(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE34:
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-48(%rbp), %rax
	leaq	-2736(%rbp), %rcx
	leaq	.LC59(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB35:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE35:
	leaq	-48(%rbp), %rdx
	leaq	-2704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB36:
	call	_Z15dl_curl_get_reqRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_
.LEHE36:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	.LC60(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB37:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	call	getchar@PLT
.LEHE37:
	movl	$0, %ebx
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L23
.L39:
	leaq	.LC61(%rip), %rax
	movq	%rax, %rdi
.LEHB38:
	call	puts@PLT
	movl	$0, %ebx
	jmp	.L23
.L38:
	leaq	.LC62(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC63(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC64(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC65(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC66(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LEHE38:
	movl	$1, %ebx
.L23:
	leaq	-2672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-2608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L20:
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-960(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-928(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L40:
	movl	%ebx, %eax
	jmp	.L115
.L81:
	movq	%rax, %rbx
	leaq	-294(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB39:
	call	_Unwind_Resume@PLT
.L82:
	movq	%rax, %rbx
	leaq	-293(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L43
.L83:
	movq	%rax, %rbx
	leaq	-292(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L45
.L85:
	movq	%rax, %rbx
	leaq	-291(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L47
.L87:
	movq	%rax, %rbx
	leaq	-290(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L49
.L90:
	movq	%rax, %rbx
	leaq	-289(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L51
.L92:
	movq	%rax, %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L53
.L91:
	movq	%rax, %rbx
.L53:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L54
.L94:
	movq	%rax, %rbx
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L56
.L96:
	movq	%rax, %rbx
	leaq	-179(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L58
.L97:
	movq	%rax, %rbx
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L58
.L99:
	movq	%rax, %rbx
	leaq	-178(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L58
.L101:
	movq	%rax, %rbx
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L62
.L100:
	movq	%rax, %rbx
.L62:
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L58
.L102:
	movq	%rax, %rbx
	leaq	-177(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L58
.L104:
	movq	%rax, %rbx
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L65
.L103:
	movq	%rax, %rbx
.L65:
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L58
.L105:
	movq	%rax, %rbx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L58
.L106:
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L58
.L107:
	movq	%rax, %rbx
	leaq	-98(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L58
.L108:
	movq	%rax, %rbx
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L70
.L110:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L72
.L109:
	movq	%rax, %rbx
.L72:
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L70:
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L58
.L111:
	movq	%rax, %rbx
	leaq	-50(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L58
.L112:
	movq	%rax, %rbx
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	jmp	.L75
.L113:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L77
.L114:
	movq	%rax, %rbx
.L77:
	leaq	-2704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L75:
	leaq	-2736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L58
.L98:
	movq	%rax, %rbx
.L58:
	leaq	-2672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L56
.L95:
	movq	%rax, %rbx
.L56:
	leaq	-2640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L54
.L93:
	movq	%rax, %rbx
.L54:
	leaq	-2608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L51
.L89:
	movq	%rax, %rbx
.L51:
	leaq	-1552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L78
.L88:
	movq	%rax, %rbx
.L78:
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L49:
	leaq	-992(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L79
.L86:
	movq	%rax, %rbx
.L79:
	leaq	-960(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L47:
	leaq	-928(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L80
.L84:
	movq	%rax, %rbx
.L80:
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L45:
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L43:
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE39:
.L115:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2315:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2315:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2315-.LLSDACSB2315
.LLSDACSB2315:
	.uleb128 .LEHB0-.LFB2315
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2315
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L81-.LFB2315
	.uleb128 0
	.uleb128 .LEHB2-.LFB2315
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L82-.LFB2315
	.uleb128 0
	.uleb128 .LEHB3-.LFB2315
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L83-.LFB2315
	.uleb128 0
	.uleb128 .LEHB4-.LFB2315
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L84-.LFB2315
	.uleb128 0
	.uleb128 .LEHB5-.LFB2315
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L85-.LFB2315
	.uleb128 0
	.uleb128 .LEHB6-.LFB2315
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L86-.LFB2315
	.uleb128 0
	.uleb128 .LEHB7-.LFB2315
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L87-.LFB2315
	.uleb128 0
	.uleb128 .LEHB8-.LFB2315
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L88-.LFB2315
	.uleb128 0
	.uleb128 .LEHB9-.LFB2315
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L89-.LFB2315
	.uleb128 0
	.uleb128 .LEHB10-.LFB2315
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L90-.LFB2315
	.uleb128 0
	.uleb128 .LEHB11-.LFB2315
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L93-.LFB2315
	.uleb128 0
	.uleb128 .LEHB12-.LFB2315
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L91-.LFB2315
	.uleb128 0
	.uleb128 .LEHB13-.LFB2315
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L92-.LFB2315
	.uleb128 0
	.uleb128 .LEHB14-.LFB2315
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L95-.LFB2315
	.uleb128 0
	.uleb128 .LEHB15-.LFB2315
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L94-.LFB2315
	.uleb128 0
	.uleb128 .LEHB16-.LFB2315
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L96-.LFB2315
	.uleb128 0
	.uleb128 .LEHB17-.LFB2315
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L97-.LFB2315
	.uleb128 0
	.uleb128 .LEHB18-.LFB2315
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L99-.LFB2315
	.uleb128 0
	.uleb128 .LEHB19-.LFB2315
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L100-.LFB2315
	.uleb128 0
	.uleb128 .LEHB20-.LFB2315
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L101-.LFB2315
	.uleb128 0
	.uleb128 .LEHB21-.LFB2315
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L102-.LFB2315
	.uleb128 0
	.uleb128 .LEHB22-.LFB2315
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L103-.LFB2315
	.uleb128 0
	.uleb128 .LEHB23-.LFB2315
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L104-.LFB2315
	.uleb128 0
	.uleb128 .LEHB24-.LFB2315
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L98-.LFB2315
	.uleb128 0
	.uleb128 .LEHB25-.LFB2315
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L105-.LFB2315
	.uleb128 0
	.uleb128 .LEHB26-.LFB2315
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L98-.LFB2315
	.uleb128 0
	.uleb128 .LEHB27-.LFB2315
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L106-.LFB2315
	.uleb128 0
	.uleb128 .LEHB28-.LFB2315
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L98-.LFB2315
	.uleb128 0
	.uleb128 .LEHB29-.LFB2315
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L107-.LFB2315
	.uleb128 0
	.uleb128 .LEHB30-.LFB2315
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L108-.LFB2315
	.uleb128 0
	.uleb128 .LEHB31-.LFB2315
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L109-.LFB2315
	.uleb128 0
	.uleb128 .LEHB32-.LFB2315
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L110-.LFB2315
	.uleb128 0
	.uleb128 .LEHB33-.LFB2315
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L111-.LFB2315
	.uleb128 0
	.uleb128 .LEHB34-.LFB2315
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L112-.LFB2315
	.uleb128 0
	.uleb128 .LEHB35-.LFB2315
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L114-.LFB2315
	.uleb128 0
	.uleb128 .LEHB36-.LFB2315
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L113-.LFB2315
	.uleb128 0
	.uleb128 .LEHB37-.LFB2315
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L114-.LFB2315
	.uleb128 0
	.uleb128 .LEHB38-.LFB2315
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L98-.LFB2315
	.uleb128 0
	.uleb128 .LEHB39-.LFB2315
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE2315:
	.text
	.size	main, .-main
	.section	.rodata
.LC67:
	.string	"[list]"
	.text
	.globl	_Z6get_idPci
	.type	_Z6get_idPci, @function
_Z6get_idPci:
.LFB2316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -12(%rbp)
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-48(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	$16, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	leaq	-48(%rbp), %rax
	leaq	.LC67(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr@PLT
	movq	%rax, -8(%rbp)
	addq	$6, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L117
.L118:
	addq	$1, -8(%rbp)
.L117:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L118
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2316:
	.size	_Z6get_idPci, .-_Z6get_idPci
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB2317:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L121
.L122:
	addq	$1, -8(%rbp)
.L121:
	movb	$0, -9(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L122
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2317:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB2426:
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
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2426:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_:
.LFB2575:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2575
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB40:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@PLT
.LEHE40:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB41:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
.LEHE41:
	jmp	.L129
.L128:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB42:
	call	_Unwind_Resume@PLT
.LEHE42:
.L129:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2575:
	.section	.gcc_except_table
.LLSDA2575:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2575-.LLSDACSB2575
.LLSDACSB2575:
	.uleb128 .LEHB40-.LFB2575
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB2575
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L128-.LFB2575
	.uleb128 0
	.uleb128 .LEHB42-.LFB2575
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE2575:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.section	.rodata
	.align 8
.LC68:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB2600:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2600
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
	cmpq	$0, -48(%rbp)
	jne	.L131
	leaq	.LC68(%rip), %rax
	movq	%rax, %rdi
.LEHB43:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L131:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE43:
	jmp	.L134
.L133:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB44:
	call	_Unwind_Resume@PLT
.LEHE44:
.L134:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2600:
	.section	.gcc_except_table
.LLSDA2600:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2600-.LLSDACSB2600
.LLSDACSB2600:
	.uleb128 .LEHB43-.LFB2600
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L133-.LFB2600
	.uleb128 0
	.uleb128 .LEHB44-.LFB2600
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE2600:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:
.LFB2609:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2609
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB45:
	call	_ZNSt11char_traitsIcE6lengthEPKc
.LEHE45:
	movq	%rax, -24(%rbp)
	leaq	-25(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv@PLT
	leaq	-26(%rbp), %rax
	leaq	-25(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB46:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
.LEHE46:
	leaq	-26(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS3_@PLT
	leaq	-26(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	-24(%rbp), %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB47:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm@PLT
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@PLT
.LEHE47:
	jmp	.L141
.L139:
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB48:
	call	_Unwind_Resume@PLT
.L140:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE48:
.L141:
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2609:
	.section	.gcc_except_table
.LLSDA2609:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2609-.LLSDACSB2609
.LLSDACSB2609:
	.uleb128 .LEHB45-.LFB2609
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB46-.LFB2609
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L139-.LFB2609
	.uleb128 0
	.uleb128 .LEHB47-.LFB2609
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L140-.LFB2609
	.uleb128 0
	.uleb128 .LEHB48-.LFB2609
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
.LLSDACSE2609:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.section	.text._ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_,"axG",@progbits,_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_,comdat
	.weak	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_
	.type	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_, @function
_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_:
.LFB2615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt17__istream_extractRSiPcl@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2615:
	.size	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_, .-_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_:
.LFB2617:
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
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_@PLT
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2617:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB2623:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2623:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC5EPS4_,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_:
.LFB2660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2660:
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.align 2
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.type	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, @function
_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev:
.LFB2663:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2663
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
	je	.L151
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L151:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2663:
	.section	.gcc_except_table
.LLSDA2663:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2663-.LLSDACSB2663
.LLSDACSB2663:
.LLSDACSE2663:
	.section	.text._ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev,"axG",@progbits,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD5Ev,comdat
	.size	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, .-_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.weak	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	.set	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev,_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB2658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L153
	leaq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
	jmp	.L154
.L153:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	nop
.L154:
	movq	-40(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC1EPS4_
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2658:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB2721:
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
.LFE2721:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_:
.LFB2748:
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
	call	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2748:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB2780:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2780:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.text._ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_:
.LFB2827:
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
	call	_ZNSaIcEC1ERKS_@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2827:
	.size	_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB2841:
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
.LFE2841:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB2842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2842:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2915:
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
	jne	.L170
	cmpl	$65535, -8(%rbp)
	jne	.L170
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
.L170:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2915:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z12dl_req_replyPvmmS_, @function
_GLOBAL__sub_I__Z12dl_req_replyPvmmS_:
.LFB2916:
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
.LFE2916:
	.size	_GLOBAL__sub_I__Z12dl_req_replyPvmmS_, .-_GLOBAL__sub_I__Z12dl_req_replyPvmmS_
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z12dl_req_replyPvmmS_
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1079574528
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits

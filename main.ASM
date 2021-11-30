start:
        .zero   8
error(char const*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    puts
        mov     rax, QWORD PTR stdin[rip]
        mov     rdi, rax
        call    fclose
        mov     rax, QWORD PTR stdout[rip]
        mov     rdi, rax
        call    fclose
        mov     edi, 1
        call    exit
.LC0:
        .string "Unexpected end of file"
readSymbol(_IO_FILE*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    fgetc
        mov     DWORD PTR [rbp-4], eax
        cmp     DWORD PTR [rbp-4], -1
        jne     .L6
        mov     edi, OFFSET FLAT:.LC0
        call    error(char const*)
.L6:
        mov     eax, DWORD PTR [rbp-4]
        leave
        ret
ShiftEncryption::~ShiftEncryption() [base object destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     edx, OFFSET FLAT:vtable for ShiftEncryption+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+32]
        test    rax, rax
        je      .L9
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+32]
        mov     rdi, rax
        call    operator delete[](void*)
.L9:
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Text::~Text() [base object destructor]
        nop
        leave
        ret
ShiftEncryption::~ShiftEncryption() [deleting destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    ShiftEncryption::~ShiftEncryption() [complete object destructor]
        mov     rax, QWORD PTR [rbp-8]
        mov     esi, 40
        mov     rdi, rax
        call    operator delete(void*, unsigned long)
        leave
        ret
.LC1:
        .string "%u "
.LC2:
        .string "Incorrect shift"
ShiftEncryption::input(_IO_FILE*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-8]
        lea     rdx, [rax+24]
        mov     rax, QWORD PTR [rbp-16]
        mov     esi, OFFSET FLAT:.LC1
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        test    eax, eax
        sete    al
        test    al, al
        je      .L13
        mov     edi, OFFSET FLAT:.LC2
        call    error(char const*)
.L13:
        nop
        leave
        ret
ShiftEncryption::randomEncryption(unsigned long, unsigned long):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     QWORD PTR [rbp-24], rdx
        call    rand
        cdqe
        mov     rdx, QWORD PTR [rbp-24]
        sub     rdx, QWORD PTR [rbp-16]
        lea     rcx, [rdx+1]
        mov     edx, 0
        div     rcx
        mov     rax, rdx
        mov     edx, eax
        mov     rax, QWORD PTR [rbp-16]
        add     eax, edx
        mov     edx, eax
        mov     rax, QWORD PTR [rbp-8]
        mov     DWORD PTR [rax+24], edx
        nop
        leave
        ret
.LC3:
        .string "Shift: %d; Result: \"%s\"\n"
ShiftEncryption::output(_IO_FILE*) const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdx, QWORD PTR [rbp-16]
        mov     rsi, rdx
        mov     rdi, rax
        call    Text::output(_IO_FILE*) const
        mov     rax, QWORD PTR [rbp-8]
        mov     rcx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-8]
        mov     edx, DWORD PTR [rax+24]
        mov     rax, QWORD PTR [rbp-16]
        mov     esi, OFFSET FLAT:.LC3
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        nop
        leave
        ret
ShiftEncryption::encrypt():
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        add     rax, 1
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        mov     QWORD PTR [rax+32], rdx
        mov     rax, QWORD PTR [rbp-24]
        mov     eax, DWORD PTR [rax+24]
        cdq
        shr     edx, 29
        add     eax, edx
        and     eax, 7
        sub     eax, edx
        mov     DWORD PTR [rbp-12], eax
        mov     QWORD PTR [rbp-8], 0
        jmp     .L17
.L18:
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+16]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, rdx
        movzx   eax, BYTE PTR [rax]
        mov     BYTE PTR [rbp-13], al
        movzx   edx, BYTE PTR [rbp-13]
        mov     eax, DWORD PTR [rbp-12]
        mov     ecx, eax
        sal     edx, cl
        mov     eax, edx
        mov     esi, eax
        movzx   edx, BYTE PTR [rbp-13]
        mov     eax, 8
        sub     eax, DWORD PTR [rbp-12]
        mov     ecx, eax
        sar     edx, cl
        mov     eax, edx
        or      eax, esi
        mov     BYTE PTR [rbp-13], al
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-8]
        add     rdx, rax
        movzx   eax, BYTE PTR [rbp-13]
        mov     BYTE PTR [rdx], al
        add     QWORD PTR [rbp-8], 1
.L17:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-8], rax
        jb      .L18
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        add     rax, rdx
        mov     BYTE PTR [rax], 0
        nop
        leave
        ret
Text::~Text() [base object destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     edx, OFFSET FLAT:vtable for Text+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+16]
        test    rax, rax
        je      .L21
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+16]
        mov     rdi, rax
        call    operator delete[](void*)
.L21:
        nop
        leave
        ret
Text::~Text() [deleting destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Text::~Text() [complete object destructor]
        mov     rax, QWORD PTR [rbp-8]
        mov     esi, 24
        mov     rdi, rax
        call    operator delete(void*, unsigned long)
        leave
        ret
Text::hash() const:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        test    rax, rax
        jne     .L24
        pxor    xmm1, xmm1
        jmp     .L25
.L24:
        mov     QWORD PTR [rbp-8], 0
        mov     QWORD PTR [rbp-16], 0
        jmp     .L26
.L27:
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+16]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rdx
        movzx   eax, BYTE PTR [rax]
        movzx   eax, al
        add     QWORD PTR [rbp-8], rax
        add     QWORD PTR [rbp-16], 1
.L26:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-16], rax
        jb      .L27
        pxor    xmm1, xmm1
        cvtsi2sd        xmm1, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        test    rax, rax
        js      .L28
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, rax
        jmp     .L29
.L28:
        mov     rdx, rax
        shr     rdx
        and     eax, 1
        or      rdx, rax
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, rdx
        addsd   xmm0, xmm0
.L29:
        divsd   xmm1, xmm0
.L25:
        movq    rax, xmm1
        movq    xmm0, rax
        pop     rbp
        ret
Text::Text() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     edx, OFFSET FLAT:vtable for Text+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        nop
        pop     rbp
        ret
ShiftEncryption::ShiftEncryption() [base object constructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Text::Text() [base object constructor]
        mov     edx, OFFSET FLAT:vtable for ShiftEncryption+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        nop
        leave
        ret
.LC5:
        .string "%u \""
.LC6:
        .string "Invalid cypher type"
.LC7:
        .string " "
Text::inputText(_IO_FILE*):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 88
        mov     QWORD PTR [rbp-88], rdi
        lea     rdx, [rbp-68]
        mov     rax, QWORD PTR [rbp-88]
        mov     esi, OFFSET FLAT:.LC5
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        test    eax, eax
        je      .L33
        mov     eax, DWORD PTR [rbp-68]
        test    eax, eax
        je      .L33
        mov     eax, DWORD PTR [rbp-68]
        cmp     eax, 3
        jle     .L34
.L33:
        mov     eax, 1
        jmp     .L35
.L34:
        mov     eax, 0
.L35:
        test    al, al
        je      .L36
        mov     edi, OFFSET FLAT:.LC6
        call    error(char const*)
.L36:
        mov     eax, DWORD PTR [rbp-68]
        cmp     eax, 1
        je      .L37
        cmp     eax, 3
        je      .L38
        jmp     .L50
.L37:
        mov     edi, 56
        call    operator new(unsigned long)
        mov     rbx, rax
        mov     esi, 0
        mov     rdi, rbx
        call    CharEncryption::CharEncryption(bool) [complete object constructor]
        mov     QWORD PTR [rbp-24], rbx
        jmp     .L40
.L38:
        mov     edi, 56
        call    operator new(unsigned long)
        mov     rbx, rax
        mov     esi, 1
        mov     rdi, rbx
        call    CharEncryption::CharEncryption(bool) [complete object constructor]
        mov     QWORD PTR [rbp-24], rbx
        jmp     .L40
.L50:
        mov     edi, 40
        call    operator new(unsigned long)
        mov     rbx, rax
        mov     rdi, rbx
        call    ShiftEncryption::ShiftEncryption() [complete object constructor]
        mov     QWORD PTR [rbp-24], rbx
.L40:
        mov     QWORD PTR [rbp-32], 0
        mov     QWORD PTR [rbp-40], 1
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     QWORD PTR [rbp-48], rax
        jmp     .L41
.L48:
        cmp     BYTE PTR [rbp-49], 92
        jne     .L42
        mov     rax, QWORD PTR [rbp-88]
        mov     rdi, rax
        call    readSymbol(_IO_FILE*)
        jmp     .L43
.L42:
        movzx   eax, BYTE PTR [rbp-49]
.L43:
        mov     BYTE PTR [rbp-49], al
        mov     rax, QWORD PTR [rbp-32]
        add     rax, 1
        cmp     QWORD PTR [rbp-40], rax
        jne     .L44
        cmp     QWORD PTR [rbp-40], 0
        je      .L45
        mov     rax, QWORD PTR [rbp-40]
        add     rax, rax
        jmp     .L46
.L45:
        mov     eax, 1
.L46:
        mov     QWORD PTR [rbp-40], rax
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     QWORD PTR [rbp-64], rax
        mov     rdx, QWORD PTR [rbp-32]
        mov     rcx, QWORD PTR [rbp-48]
        mov     rax, QWORD PTR [rbp-64]
        mov     rsi, rcx
        mov     rdi, rax
        call    memcpy
        cmp     QWORD PTR [rbp-48], 0
        je      .L47
        mov     rax, QWORD PTR [rbp-48]
        mov     rdi, rax
        call    operator delete[](void*)
.L47:
        mov     rax, QWORD PTR [rbp-64]
        mov     QWORD PTR [rbp-48], rax
.L44:
        movzx   eax, BYTE PTR [rbp-49]
        mov     rsi, QWORD PTR [rbp-48]
        mov     rdx, QWORD PTR [rbp-32]
        lea     rcx, [rdx+1]
        mov     QWORD PTR [rbp-32], rcx
        add     rdx, rsi
        mov     BYTE PTR [rdx], al
.L41:
        mov     rax, QWORD PTR [rbp-88]
        mov     rdi, rax
        call    readSymbol(_IO_FILE*)
        mov     BYTE PTR [rbp-49], al
        cmp     BYTE PTR [rbp-49], 34
        setne   al
        test    al, al
        jne     .L48
        mov     rdx, QWORD PTR [rbp-48]
        mov     rax, QWORD PTR [rbp-32]
        add     rax, rdx
        mov     BYTE PTR [rax], 0
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rbp-48]
        mov     QWORD PTR [rax+16], rdx
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rbp-32]
        mov     QWORD PTR [rax+8], rdx
        mov     rax, QWORD PTR [rbp-88]
        mov     esi, OFFSET FLAT:.LC7
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        mov     DWORD PTR [rbp-56], eax
        add     DWORD PTR [rbp-56], 1
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        add     rax, 16
        mov     rcx, QWORD PTR [rax]
        mov     rdx, QWORD PTR [rbp-88]
        mov     rax, QWORD PTR [rbp-24]
        mov     rsi, rdx
        mov     rdi, rax
        call    rcx
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        add     rax, 40
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    rdx
        mov     rax, QWORD PTR [rbp-24]
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
Text::randomText(int, unsigned long, unsigned long, unsigned long, unsigned long):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 88
        mov     DWORD PTR [rbp-52], edi
        mov     QWORD PTR [rbp-64], rsi
        mov     QWORD PTR [rbp-72], rdx
        mov     QWORD PTR [rbp-80], rcx
        mov     QWORD PTR [rbp-88], r8
        cmp     DWORD PTR [rbp-52], 0
        jne     .L52
        call    rand
        movsx   rdx, eax
        imul    rdx, rdx, 1431655766
        shr     rdx, 32
        mov     ecx, eax
        sar     ecx, 31
        sub     edx, ecx
        mov     ecx, edx
        add     ecx, ecx
        add     ecx, edx
        sub     eax, ecx
        mov     edx, eax
        lea     eax, [rdx+1]
        jmp     .L53
.L52:
        mov     eax, DWORD PTR [rbp-52]
.L53:
        mov     DWORD PTR [rbp-36], eax
        cmp     DWORD PTR [rbp-36], 1
        je      .L54
        cmp     DWORD PTR [rbp-36], 3
        je      .L55
        jmp     .L61
.L54:
        mov     edi, 56
        call    operator new(unsigned long)
        mov     rbx, rax
        mov     esi, 0
        mov     rdi, rbx
        call    CharEncryption::CharEncryption(bool) [complete object constructor]
        mov     QWORD PTR [rbp-24], rbx
        jmp     .L57
.L55:
        mov     edi, 56
        call    operator new(unsigned long)
        mov     rbx, rax
        mov     esi, 1
        mov     rdi, rbx
        call    CharEncryption::CharEncryption(bool) [complete object constructor]
        mov     QWORD PTR [rbp-24], rbx
        jmp     .L57
.L61:
        mov     edi, 40
        call    operator new(unsigned long)
        mov     rbx, rax
        mov     rdi, rbx
        call    ShiftEncryption::ShiftEncryption() [complete object constructor]
        mov     QWORD PTR [rbp-24], rbx
.L57:
        call    rand
        cdqe
        mov     rdx, QWORD PTR [rbp-72]
        sub     rdx, QWORD PTR [rbp-64]
        lea     rcx, [rdx+1]
        mov     edx, 0
        div     rcx
        mov     rax, QWORD PTR [rbp-64]
        add     rax, rdx
        mov     QWORD PTR [rbp-48], rax
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rbp-48]
        mov     QWORD PTR [rax+8], rdx
        mov     rax, QWORD PTR [rbp-48]
        add     rax, 1
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        mov     QWORD PTR [rax+16], rdx
        mov     QWORD PTR [rbp-32], 0
        jmp     .L58
.L59:
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+16]
        mov     rax, QWORD PTR [rbp-32]
        lea     rbx, [rdx+rax]
        call    Text::randomSymbol()
        mov     BYTE PTR [rbx], al
        add     QWORD PTR [rbp-32], 1
.L58:
        mov     rax, QWORD PTR [rbp-32]
        cmp     rax, QWORD PTR [rbp-48]
        jb      .L59
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+16]
        mov     rax, QWORD PTR [rbp-48]
        add     rax, rdx
        mov     BYTE PTR [rax], 0
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        add     rax, 24
        mov     r8, QWORD PTR [rax]
        mov     rdx, QWORD PTR [rbp-88]
        mov     rcx, QWORD PTR [rbp-80]
        mov     rax, QWORD PTR [rbp-24]
        mov     rsi, rcx
        mov     rdi, rax
        call    r8
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        add     rax, 40
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    rdx
        mov     rax, QWORD PTR [rbp-24]
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC8:
        .string "\"%s\", Hash=%g; "
Text::output(_IO_FILE*) const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     QWORD PTR [rbp-16], rsi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Text::hash() const
        movq    rax, xmm0
        mov     rdx, QWORD PTR [rbp-8]
        mov     rdx, QWORD PTR [rdx+16]
        mov     rcx, QWORD PTR [rbp-16]
        movq    xmm0, rax
        mov     esi, OFFSET FLAT:.LC8
        mov     rdi, rcx
        mov     eax, 1
        call    fprintf
        nop
        leave
        ret
validSymbol(unsigned char):
        push    rbp
        mov     rbp, rsp
        mov     eax, edi
        mov     BYTE PTR [rbp-4], al
        cmp     BYTE PTR [rbp-4], 32
        je      .L64
        cmp     BYTE PTR [rbp-4], 47
        jbe     .L65
        cmp     BYTE PTR [rbp-4], 57
        jbe     .L64
.L65:
        cmp     BYTE PTR [rbp-4], 96
        jbe     .L66
        cmp     BYTE PTR [rbp-4], 122
        jbe     .L64
.L66:
        cmp     BYTE PTR [rbp-4], 64
        jbe     .L67
        cmp     BYTE PTR [rbp-4], 90
        ja      .L67
.L64:
        mov     eax, 1
        jmp     .L68
.L67:
        mov     eax, 0
.L68:
        pop     rbp
        ret
Text::randomSymbol():
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
.L71:
        call    rand
        cdq
        shr     edx, 24
        add     eax, edx
        movzx   eax, al
        sub     eax, edx
        mov     BYTE PTR [rbp-1], al
        movzx   eax, BYTE PTR [rbp-1]
        mov     edi, eax
        call    validSymbol(unsigned char)
        xor     eax, 1
        test    al, al
        jne     .L71
        movzx   eax, BYTE PTR [rbp-1]
        leave
        ret
Container::~Container() [base object destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-8], 0
        jmp     .L74
.L76:
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        sal     rax, 3
        add     rax, rdx
        mov     rax, QWORD PTR [rax]
        test    rax, rax
        je      .L75
        mov     rdx, QWORD PTR [rax]
        add     rdx, 8
        mov     rdx, QWORD PTR [rdx]
        mov     rdi, rax
        call    rdx
.L75:
        add     QWORD PTR [rbp-8], 1
.L74:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-8], rax
        jb      .L76
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        test    rax, rax
        je      .L78
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax]
        mov     rdi, rax
        call    operator delete[](void*)
.L78:
        nop
        leave
        ret
.LC9:
        .string " %lu %d "
.LC10:
        .string "Invalid container parameters"
Container::input(_IO_FILE*):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 56
        mov     QWORD PTR [rbp-56], rdi
        mov     QWORD PTR [rbp-64], rsi
        lea     rcx, [rbp-28]
        lea     rdx, [rbp-40]
        mov     rax, QWORD PTR [rbp-64]
        mov     esi, OFFSET FLAT:.LC9
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        cmp     eax, 1
        jle     .L80
        mov     rax, QWORD PTR [rbp-40]
        test    rax, rax
        jns     .L81
.L80:
        mov     eax, 1
        jmp     .L82
.L81:
        mov     eax, 0
.L82:
        test    al, al
        je      .L83
        mov     edi, OFFSET FLAT:.LC10
        call    error(char const*)
.L83:
        mov     rax, QWORD PTR [rbp-40]
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-56]
        mov     QWORD PTR [rax+8], rdx
        mov     rax, QWORD PTR [rbp-56]
        mov     rax, QWORD PTR [rax+8]
        movabs  rdx, 1152921504606846975
        cmp     rax, rdx
        ja      .L84
        sal     rax, 3
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-56]
        mov     QWORD PTR [rax], rdx
        mov     eax, DWORD PTR [rbp-28]
        test    eax, eax
        jne     .L86
        jmp     .L90
.L84:
        call    __cxa_throw_bad_array_new_length
.L90:
        mov     QWORD PTR [rbp-24], 0
        jmp     .L87
.L88:
        mov     rax, QWORD PTR [rbp-56]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        sal     rax, 3
        lea     rbx, [rdx+rax]
        mov     rax, QWORD PTR [rbp-64]
        mov     rdi, rax
        call    Text::inputText(_IO_FILE*)
        mov     QWORD PTR [rbx], rax
        add     QWORD PTR [rbp-24], 1
.L87:
        mov     rax, QWORD PTR [rbp-56]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-24], rax
        jb      .L88
        jmp     .L91
.L86:
        mov     edx, DWORD PTR [rbp-28]
        mov     rcx, QWORD PTR [rbp-64]
        mov     rax, QWORD PTR [rbp-56]
        mov     rsi, rcx
        mov     rdi, rax
        call    Container::generateRandom(_IO_FILE*, int)
.L91:
        nop
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
Container::insertionSort(bool):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 136
        mov     QWORD PTR [rbp-136], rdi
        mov     eax, esi
        mov     BYTE PTR [rbp-140], al
        mov     rax, QWORD PTR [rbp-136]
        mov     rax, QWORD PTR [rax+8]
        movabs  rdx, 576460752303423487
        cmp     rax, rdx
        ja      .L93
        sal     rax, 4
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-136]
        mov     rax, QWORD PTR [rax+8]
        movabs  rdx, 576460752303423487
        cmp     rax, rdx
        ja      .L95
        jmp     .L113
.L93:
        call    __cxa_throw_bad_array_new_length
.L113:
        sal     rax, 4
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     QWORD PTR [rbp-32], rax
        mov     QWORD PTR [rbp-40], 0
        jmp     .L97
.L95:
        call    __cxa_throw_bad_array_new_length
.L99:
        mov     rax, QWORD PTR [rbp-136]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-40]
        sal     rax, 3
        add     rax, rdx
        mov     rax, QWORD PTR [rax]
        mov     rdx, QWORD PTR [rbp-40]
        mov     rcx, rdx
        sal     rcx, 4
        mov     rdx, QWORD PTR [rbp-24]
        lea     rbx, [rcx+rdx]
        mov     rdi, rax
        call    Text::hash() const
        movq    rax, xmm0
        mov     QWORD PTR [rbx], rax
        movzx   eax, BYTE PTR [rbp-140]
        xor     eax, 1
        test    al, al
        je      .L98
        mov     rax, QWORD PTR [rbp-40]
        sal     rax, 4
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movsd   xmm0, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-40]
        sal     rax, 4
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movq    xmm1, QWORD PTR .LC11[rip]
        xorpd   xmm0, xmm1
        movsd   QWORD PTR [rax], xmm0
.L98:
        mov     rax, QWORD PTR [rbp-136]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-40]
        sal     rax, 3
        add     rax, rdx
        mov     rdx, QWORD PTR [rbp-40]
        mov     rcx, rdx
        sal     rcx, 4
        mov     rdx, QWORD PTR [rbp-24]
        add     rdx, rcx
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rdx+8], rax
        add     QWORD PTR [rbp-40], 1
.L97:
        mov     rax, QWORD PTR [rbp-136]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-40], rax
        jb      .L99
        mov     QWORD PTR [rbp-48], 1
        jmp     .L100
.L108:
        mov     QWORD PTR [rbp-56], 0
        mov     QWORD PTR [rbp-64], 0
        mov     QWORD PTR [rbp-72], 0
        mov     QWORD PTR [rbp-80], 0
        mov     QWORD PTR [rbp-88], 0
        jmp     .L101
.L107:
        mov     rax, QWORD PTR [rbp-48]
        lea     rcx, [rax+rax]
        mov     rax, QWORD PTR [rbp-88]
        mov     edx, 0
        div     rcx
        mov     rax, rdx
        test    rax, rax
        jne     .L102
        mov     rax, QWORD PTR [rbp-88]
        mov     QWORD PTR [rbp-56], rax
        mov     rax, QWORD PTR [rbp-136]
        lea     rdx, [rax+8]
        mov     rcx, QWORD PTR [rbp-88]
        mov     rax, QWORD PTR [rbp-48]
        add     rax, rcx
        mov     QWORD PTR [rbp-120], rax
        lea     rax, [rbp-120]
        mov     rsi, rdx
        mov     rdi, rax
        call    unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rbp-64], rax
        mov     rdx, QWORD PTR [rbp-88]
        mov     rax, QWORD PTR [rbp-48]
        add     rax, rdx
        mov     QWORD PTR [rbp-72], rax
        mov     rax, QWORD PTR [rbp-136]
        lea     rdx, [rax+8]
        mov     rax, QWORD PTR [rbp-48]
        lea     rcx, [rax+rax]
        mov     rax, QWORD PTR [rbp-88]
        add     rax, rcx
        mov     QWORD PTR [rbp-112], rax
        lea     rax, [rbp-112]
        mov     rsi, rdx
        mov     rdi, rax
        call    unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rbp-80], rax
.L102:
        mov     rax, QWORD PTR [rbp-72]
        cmp     rax, QWORD PTR [rbp-80]
        jnb     .L103
        mov     rax, QWORD PTR [rbp-56]
        cmp     rax, QWORD PTR [rbp-64]
        jnb     .L104
        mov     rax, QWORD PTR [rbp-56]
        sal     rax, 4
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movsd   xmm1, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-72]
        sal     rax, 4
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movsd   xmm0, QWORD PTR [rax]
        comisd  xmm0, xmm1
        jb      .L104
.L103:
        mov     rcx, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rbp-56]
        lea     rdx, [rax+1]
        mov     QWORD PTR [rbp-56], rdx
        sal     rax, 4
        add     rax, rcx
        mov     rdx, QWORD PTR [rbp-88]
        mov     rcx, rdx
        sal     rcx, 4
        mov     rdx, QWORD PTR [rbp-32]
        add     rcx, rdx
        mov     rdx, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rcx], rax
        mov     QWORD PTR [rcx+8], rdx
        jmp     .L106
.L104:
        mov     rcx, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rbp-72]
        lea     rdx, [rax+1]
        mov     QWORD PTR [rbp-72], rdx
        sal     rax, 4
        add     rax, rcx
        mov     rdx, QWORD PTR [rbp-88]
        mov     rcx, rdx
        sal     rcx, 4
        mov     rdx, QWORD PTR [rbp-32]
        add     rcx, rdx
        mov     rdx, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rax]
        mov     QWORD PTR [rcx], rax
        mov     QWORD PTR [rcx+8], rdx
.L106:
        add     QWORD PTR [rbp-88], 1
.L101:
        mov     rax, QWORD PTR [rbp-136]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-88], rax
        jb      .L107
        mov     rax, QWORD PTR [rbp-24]
        mov     QWORD PTR [rbp-104], rax
        mov     rax, QWORD PTR [rbp-32]
        mov     QWORD PTR [rbp-24], rax
        mov     rax, QWORD PTR [rbp-104]
        mov     QWORD PTR [rbp-32], rax
        sal     QWORD PTR [rbp-48]
.L100:
        mov     rax, QWORD PTR [rbp-136]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-48], rax
        jb      .L108
        mov     QWORD PTR [rbp-96], 0
        jmp     .L109
.L110:
        mov     rax, QWORD PTR [rbp-96]
        sal     rax, 4
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-24]
        lea     rcx, [rdx+rax]
        mov     rax, QWORD PTR [rbp-136]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-96]
        sal     rax, 3
        add     rdx, rax
        mov     rax, QWORD PTR [rcx+8]
        mov     QWORD PTR [rdx], rax
        add     QWORD PTR [rbp-96], 1
.L109:
        mov     rax, QWORD PTR [rbp-136]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-96], rax
        jb      .L110
        cmp     QWORD PTR [rbp-24], 0
        je      .L111
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    operator delete[](void*)
.L111:
        cmp     QWORD PTR [rbp-32], 0
        je      .L114
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    operator delete[](void*)
.L114:
        nop
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC12:
        .string "Container has %zu elements\n"
.LC13:
        .string "%zu. "
Container::output(_IO_FILE*) const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+8]
        mov     rax, QWORD PTR [rbp-32]
        mov     esi, OFFSET FLAT:.LC12
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        mov     QWORD PTR [rbp-8], 0
        jmp     .L116
.L117:
        mov     rax, QWORD PTR [rbp-8]
        lea     rdx, [rax+1]
        mov     rax, QWORD PTR [rbp-32]
        mov     esi, OFFSET FLAT:.LC13
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        sal     rax, 3
        add     rax, rdx
        mov     rax, QWORD PTR [rax]
        mov     rax, QWORD PTR [rax]
        add     rax, 32
        mov     rcx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax]
        mov     rax, QWORD PTR [rbp-8]
        sal     rax, 3
        add     rax, rdx
        mov     rax, QWORD PTR [rax]
        mov     rdx, QWORD PTR [rbp-32]
        mov     rsi, rdx
        mov     rdi, rax
        call    rcx
        add     QWORD PTR [rbp-8], 1
.L116:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-8], rax
        jb      .L117
        nop
        nop
        leave
        ret
.LC14:
        .string "%u %lu %lu %lu %lu"
.LC15:
        .string "Invalid random generator parameters"
Container::generateRandom(_IO_FILE*, int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 88
        mov     QWORD PTR [rbp-72], rdi
        mov     QWORD PTR [rbp-80], rsi
        mov     DWORD PTR [rbp-84], edx
        lea     r8, [rbp-56]
        lea     rdi, [rbp-48]
        lea     rcx, [rbp-40]
        lea     rdx, [rbp-28]
        mov     rax, QWORD PTR [rbp-80]
        sub     rsp, 8
        lea     rsi, [rbp-64]
        push    rsi
        mov     r9, r8
        mov     r8, rdi
        mov     esi, OFFSET FLAT:.LC14
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        add     rsp, 16
        cmp     eax, 4
        jle     .L119
        mov     eax, DWORD PTR [rbp-28]
        cmp     eax, 3
        jg      .L119
        mov     rdx, QWORD PTR [rbp-40]
        mov     rax, QWORD PTR [rbp-48]
        cmp     rdx, rax
        jg      .L119
        mov     rdx, QWORD PTR [rbp-56]
        mov     rax, QWORD PTR [rbp-64]
        cmp     rdx, rax
        jg      .L119
        mov     rax, QWORD PTR [rbp-40]
        test    rax, rax
        js      .L119
        mov     rax, QWORD PTR [rbp-56]
        test    rax, rax
        jns     .L120
.L119:
        mov     eax, 1
        jmp     .L121
.L120:
        mov     eax, 0
.L121:
        test    al, al
        je      .L122
        mov     edi, OFFSET FLAT:.LC15
        call    error(char const*)
.L122:
        mov     eax, DWORD PTR [rbp-84]
        mov     edi, eax
        call    srand
        mov     QWORD PTR [rbp-24], 0
        jmp     .L123
.L124:
        mov     rax, QWORD PTR [rbp-64]
        mov     r9, rax
        mov     rax, QWORD PTR [rbp-56]
        mov     rcx, rax
        mov     rax, QWORD PTR [rbp-48]
        mov     rdi, rax
        mov     rax, QWORD PTR [rbp-40]
        mov     rsi, rax
        mov     eax, DWORD PTR [rbp-28]
        mov     rdx, QWORD PTR [rbp-72]
        mov     r8, QWORD PTR [rdx]
        mov     rdx, QWORD PTR [rbp-24]
        sal     rdx, 3
        lea     rbx, [r8+rdx]
        mov     r8, r9
        mov     rdx, rdi
        mov     edi, eax
        call    Text::randomText(int, unsigned long, unsigned long, unsigned long, unsigned long)
        mov     QWORD PTR [rbx], rax
        add     QWORD PTR [rbp-24], 1
.L123:
        mov     rax, QWORD PTR [rbp-72]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-24], rax
        jb      .L124
        nop
        nop
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
CharEncryption::CharEncryption(bool) [base object constructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     eax, esi
        mov     BYTE PTR [rbp-12], al
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Text::Text() [base object constructor]
        mov     edx, OFFSET FLAT:vtable for CharEncryption+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-8]
        movzx   edx, BYTE PTR [rbp-12]
        mov     BYTE PTR [rax+24], dl
        nop
        leave
        ret
CharEncryption::~CharEncryption() [base object destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     edx, OFFSET FLAT:vtable for CharEncryption+16
        mov     rax, QWORD PTR [rbp-8]
        mov     QWORD PTR [rax], rdx
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+32]
        test    rax, rax
        je      .L127
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+32]
        mov     rdi, rax
        call    operator delete[](void*)
.L127:
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+48]
        test    rax, rax
        je      .L128
        mov     rax, QWORD PTR [rbp-8]
        mov     rax, QWORD PTR [rax+48]
        mov     rdi, rax
        call    operator delete[](void*)
.L128:
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    Text::~Text() [base object destructor]
        nop
        leave
        ret
CharEncryption::~CharEncryption() [deleting destructor]:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        mov     rax, QWORD PTR [rbp-8]
        mov     rdi, rax
        call    CharEncryption::~CharEncryption() [complete object destructor]
        mov     rax, QWORD PTR [rbp-8]
        mov     esi, 56
        mov     rdi, rax
        call    operator delete(void*, unsigned long)
        leave
        ret
.LC16:
        .string "%lu"
.LC17:
        .string "%*c%c-"
.LC18:
        .string "Incorrect cypher parameter"
.LC19:
        .string "%hhu"
.LC20:
        .string "%c"
.LC21:
        .string "Cypher is not objective or has repetitions"
CharEncryption::input(_IO_FILE*):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     QWORD PTR [rbp-40], rdi
        mov     QWORD PTR [rbp-48], rsi
        lea     rdx, [rbp-24]
        mov     rax, QWORD PTR [rbp-48]
        mov     esi, OFFSET FLAT:.LC16
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        test    eax, eax
        je      .L131
        mov     rax, QWORD PTR [rbp-24]
        test    rax, rax
        jns     .L132
.L131:
        mov     eax, 1
        jmp     .L133
.L132:
        mov     eax, 0
.L133:
        test    al, al
        je      .L134
        mov     edi, OFFSET FLAT:.LC10
        call    error(char const*)
.L134:
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-40]
        mov     QWORD PTR [rax+40], rdx
        mov     rax, QWORD PTR [rbp-24]
        movabs  rdx, 4611686018427387900
        cmp     rax, rdx
        ja      .L135
        add     rax, rax
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-40]
        mov     QWORD PTR [rax+32], rdx
        mov     QWORD PTR [rbp-8], 0
        jmp     .L137
.L135:
        call    __cxa_throw_bad_array_new_length
.L142:
        mov     rax, QWORD PTR [rbp-40]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, rax
        add     rax, rdx
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-48]
        mov     esi, OFFSET FLAT:.LC17
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        test    eax, eax
        sete    al
        test    al, al
        je      .L138
        mov     edi, OFFSET FLAT:.LC18
        call    error(char const*)
.L138:
        mov     rax, QWORD PTR [rbp-40]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, rax
        add     rax, rdx
        lea     rdx, [rax+1]
        mov     rax, QWORD PTR [rbp-40]
        movzx   eax, BYTE PTR [rax+24]
        test    al, al
        je      .L139
        mov     ecx, OFFSET FLAT:.LC19
        jmp     .L140
.L139:
        mov     ecx, OFFSET FLAT:.LC20
.L140:
        mov     rax, QWORD PTR [rbp-48]
        mov     rsi, rcx
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        test    eax, eax
        sete    al
        test    al, al
        je      .L141
        mov     edi, OFFSET FLAT:.LC18
        call    error(char const*)
.L141:
        add     QWORD PTR [rbp-8], 1
.L137:
        mov     rax, QWORD PTR [rbp-24]
        cmp     QWORD PTR [rbp-8], rax
        jl      .L142
        mov     rax, QWORD PTR [rbp-48]
        mov     esi, OFFSET FLAT:.LC7
        mov     rdi, rax
        mov     eax, 0
        call    __isoc99_fscanf
        mov     DWORD PTR [rbp-12], eax
        add     DWORD PTR [rbp-12], 1
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    CharEncryption::validReplacements() const
        xor     eax, 1
        test    al, al
        je      .L144
        mov     edi, OFFSET FLAT:.LC21
        call    error(char const*)
.L144:
        nop
        leave
        ret
CharEncryption::randomEncryption(unsigned long, unsigned long):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 576
        mov     QWORD PTR [rbp-552], rdi
        mov     QWORD PTR [rbp-560], rsi
        mov     QWORD PTR [rbp-568], rdx
        call    rand
        cdqe
        mov     rdx, QWORD PTR [rbp-568]
        sub     rdx, QWORD PTR [rbp-560]
        lea     rcx, [rdx+1]
        mov     edx, 0
        div     rcx
        mov     rax, QWORD PTR [rbp-560]
        add     rax, rdx
        mov     QWORD PTR [rbp-16], rax
        mov     rax, QWORD PTR [rbp-552]
        mov     rdx, QWORD PTR [rbp-16]
        mov     QWORD PTR [rax+40], rdx
        mov     rax, QWORD PTR [rbp-16]
        movabs  rdx, 4611686018427387900
        cmp     rax, rdx
        ja      .L146
        add     rax, rax
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-552]
        mov     QWORD PTR [rax+32], rdx
        lea     rax, [rbp-288]
        mov     edx, 256
        mov     esi, 0
        mov     rdi, rax
        call    memset
        lea     rax, [rbp-544]
        mov     edx, 256
        mov     esi, 0
        mov     rdi, rax
        call    memset
        mov     QWORD PTR [rbp-8], 0
        jmp     .L148
.L146:
        call    __cxa_throw_bad_array_new_length
.L149:
        call    Text::randomSymbol()
        mov     BYTE PTR [rbp-17], al
        movzx   eax, BYTE PTR [rbp-17]
        cdqe
        movzx   eax, BYTE PTR [rbp-288+rax]
        test    al, al
        jne     .L149
        movzx   eax, BYTE PTR [rbp-17]
        cdqe
        mov     BYTE PTR [rbp-288+rax], 1
.L152:
        mov     rax, QWORD PTR [rbp-552]
        movzx   eax, BYTE PTR [rax+24]
        test    al, al
        je      .L150
        call    rand
        jmp     .L151
.L150:
        call    Text::randomSymbol()
.L151:
        mov     BYTE PTR [rbp-18], al
        movzx   eax, BYTE PTR [rbp-18]
        cdqe
        movzx   eax, BYTE PTR [rbp-544+rax]
        test    al, al
        jne     .L152
        movzx   eax, BYTE PTR [rbp-18]
        cdqe
        mov     BYTE PTR [rbp-544+rax], 1
        mov     rax, QWORD PTR [rbp-552]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, rax
        add     rax, rdx
        movzx   edx, BYTE PTR [rbp-17]
        mov     BYTE PTR [rax], dl
        movzx   edx, BYTE PTR [rbp-18]
        mov     BYTE PTR [rax+1], dl
        add     QWORD PTR [rbp-8], 1
.L148:
        mov     rax, QWORD PTR [rbp-8]
        cmp     rax, QWORD PTR [rbp-16]
        jb      .L149
        nop
        nop
        leave
        ret
CharEncryption::validReplacements() const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 304
        mov     QWORD PTR [rbp-296], rdi
        mov     rax, QWORD PTR [rbp-296]
        mov     rax, QWORD PTR [rax+40]
        cmp     rax, 63
        jbe     .L154
        mov     eax, 0
        jmp     .L163
.L154:
        mov     DWORD PTR [rbp-4], 0
        jmp     .L156
.L162:
        lea     rax, [rbp-288]
        mov     edx, 256
        mov     esi, 0
        mov     rdi, rax
        call    memset
        mov     QWORD PTR [rbp-16], 0
        jmp     .L157
.L161:
        cmp     DWORD PTR [rbp-4], 0
        jne     .L158
        mov     rax, QWORD PTR [rbp-296]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rax
        add     rax, rdx
        movzx   eax, BYTE PTR [rax]
        jmp     .L159
.L158:
        mov     rax, QWORD PTR [rbp-296]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rax
        add     rax, rdx
        movzx   eax, BYTE PTR [rax+1]
.L159:
        mov     BYTE PTR [rbp-17], al
        movzx   eax, BYTE PTR [rbp-17]
        cdqe
        movzx   eax, BYTE PTR [rbp-288+rax]
        test    al, al
        je      .L160
        mov     eax, 0
        jmp     .L163
.L160:
        movzx   eax, BYTE PTR [rbp-17]
        cdqe
        mov     BYTE PTR [rbp-288+rax], 1
        add     QWORD PTR [rbp-16], 1
.L157:
        mov     rax, QWORD PTR [rbp-296]
        mov     rax, QWORD PTR [rax+40]
        cmp     QWORD PTR [rbp-16], rax
        jb      .L161
        add     DWORD PTR [rbp-4], 1
.L156:
        cmp     DWORD PTR [rbp-4], 1
        jle     .L162
        mov     eax, 1
.L163:
        leave
        ret
CharEncryption::encrypt():
        push    rbp
        mov     rbp, rsp
        sub     rsp, 320
        mov     QWORD PTR [rbp-312], rdi
        mov     DWORD PTR [rbp-4], 0
        jmp     .L165
.L166:
        mov     eax, DWORD PTR [rbp-4]
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        mov     BYTE PTR [rbp-288+rax], dl
        add     DWORD PTR [rbp-4], 1
.L165:
        cmp     DWORD PTR [rbp-4], 255
        jle     .L166
        mov     QWORD PTR [rbp-16], 0
        jmp     .L167
.L168:
        mov     rax, QWORD PTR [rbp-312]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rax
        add     rax, rdx
        movzx   eax, WORD PTR [rax]
        mov     WORD PTR [rbp-290], ax
        movzx   eax, BYTE PTR [rbp-290]
        movzx   eax, al
        movzx   edx, BYTE PTR [rbp-289]
        cdqe
        mov     BYTE PTR [rbp-288+rax], dl
        add     QWORD PTR [rbp-16], 1
.L167:
        mov     rax, QWORD PTR [rbp-312]
        mov     rax, QWORD PTR [rax+40]
        cmp     QWORD PTR [rbp-16], rax
        jb      .L168
        mov     rax, QWORD PTR [rbp-312]
        mov     rax, QWORD PTR [rax+8]
        add     rax, 1
        mov     rdi, rax
        call    operator new[](unsigned long)
        mov     rdx, rax
        mov     rax, QWORD PTR [rbp-312]
        mov     QWORD PTR [rax+48], rdx
        mov     QWORD PTR [rbp-24], 0
        jmp     .L169
.L170:
        mov     rax, QWORD PTR [rbp-312]
        mov     rdx, QWORD PTR [rax+16]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        movzx   eax, BYTE PTR [rax]
        movzx   ecx, al
        mov     rax, QWORD PTR [rbp-312]
        mov     rdx, QWORD PTR [rax+48]
        mov     rax, QWORD PTR [rbp-24]
        add     rdx, rax
        movsx   rax, ecx
        movzx   eax, BYTE PTR [rbp-288+rax]
        mov     BYTE PTR [rdx], al
        add     QWORD PTR [rbp-24], 1
.L169:
        mov     rax, QWORD PTR [rbp-312]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-24], rax
        jb      .L170
        mov     rax, QWORD PTR [rbp-312]
        mov     rdx, QWORD PTR [rax+48]
        mov     rax, QWORD PTR [rbp-312]
        mov     rax, QWORD PTR [rax+8]
        add     rax, rdx
        mov     BYTE PTR [rax], 0
        nop
        leave
        ret
.LC22:
        .string "Replacements: %zu ("
.LC23:
        .string "%c-"
.LC24:
        .string "); Result: "
.LC25:
        .string "\"%s\"\n"
.LC26:
        .string "%u"
.LC27:
        .string "]\n"
CharEncryption::output(_IO_FILE*) const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     QWORD PTR [rbp-24], rdi
        mov     QWORD PTR [rbp-32], rsi
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rbp-32]
        mov     rsi, rdx
        mov     rdi, rax
        call    Text::output(_IO_FILE*) const
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+40]
        mov     rax, QWORD PTR [rbp-32]
        mov     esi, OFFSET FLAT:.LC22
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        mov     QWORD PTR [rbp-8], 0
        jmp     .L172
.L176:
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, rax
        add     rax, rdx
        movzx   eax, BYTE PTR [rax]
        movzx   edx, al
        mov     rax, QWORD PTR [rbp-32]
        mov     esi, OFFSET FLAT:.LC23
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+32]
        mov     rax, QWORD PTR [rbp-8]
        add     rax, rax
        add     rax, rdx
        movzx   eax, BYTE PTR [rax+1]
        movzx   edx, al
        mov     rax, QWORD PTR [rbp-24]
        movzx   eax, BYTE PTR [rax+24]
        test    al, al
        je      .L173
        mov     ecx, OFFSET FLAT:.LC19
        jmp     .L174
.L173:
        mov     ecx, OFFSET FLAT:.LC20
.L174:
        mov     rax, QWORD PTR [rbp-32]
        mov     rsi, rcx
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+40]
        sub     rax, 1
        cmp     QWORD PTR [rbp-8], rax
        je      .L175
        mov     rax, QWORD PTR [rbp-32]
        mov     rsi, rax
        mov     edi, 32
        call    fputc
.L175:
        add     QWORD PTR [rbp-8], 1
.L172:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+40]
        cmp     QWORD PTR [rbp-8], rax
        jb      .L176
        mov     rax, QWORD PTR [rbp-32]
        mov     rcx, rax
        mov     edx, 11
        mov     esi, 1
        mov     edi, OFFSET FLAT:.LC24
        call    fwrite
        mov     rax, QWORD PTR [rbp-24]
        movzx   eax, BYTE PTR [rax+24]
        xor     eax, 1
        test    al, al
        je      .L177
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+48]
        mov     rax, QWORD PTR [rbp-32]
        mov     esi, OFFSET FLAT:.LC25
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        jmp     .L182
.L177:
        mov     rax, QWORD PTR [rbp-32]
        mov     rsi, rax
        mov     edi, 91
        call    fputc
        mov     QWORD PTR [rbp-16], 0
        jmp     .L179
.L181:
        mov     rax, QWORD PTR [rbp-24]
        mov     rdx, QWORD PTR [rax+48]
        mov     rax, QWORD PTR [rbp-16]
        add     rax, rdx
        movzx   eax, BYTE PTR [rax]
        movzx   edx, al
        mov     rax, QWORD PTR [rbp-32]
        mov     esi, OFFSET FLAT:.LC26
        mov     rdi, rax
        mov     eax, 0
        call    fprintf
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        sub     rax, 1
        cmp     QWORD PTR [rbp-16], rax
        je      .L180
        mov     rax, QWORD PTR [rbp-32]
        mov     rsi, rax
        mov     edi, 32
        call    fputc
.L180:
        add     QWORD PTR [rbp-16], 1
.L179:
        mov     rax, QWORD PTR [rbp-24]
        mov     rax, QWORD PTR [rax+8]
        cmp     QWORD PTR [rbp-16], rax
        jb      .L181
        mov     rax, QWORD PTR [rbp-32]
        mov     rcx, rax
        mov     edx, 2
        mov     esi, 1
        mov     edi, OFFSET FLAT:.LC27
        call    fwrite
.L182:
        nop
        leave
        ret
.LC29:
        .string "%f s."
main::{lambda()#1}::operator()() const:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     QWORD PTR [rbp-8], rdi
        call    clock
        mov     rdx, QWORD PTR start[rip]
        sub     rax, rdx
        pxor    xmm0, xmm0
        cvtsi2sd        xmm0, rax
        movsd   xmm1, QWORD PTR .LC28[rip]
        divsd   xmm0, xmm1
        movq    rdx, xmm0
        mov     rax, QWORD PTR stderr[rip]
        movq    xmm0, rdx
        mov     esi, OFFSET FLAT:.LC29
        mov     rdi, rax
        mov     eax, 1
        call    fprintf
        nop
        leave
        ret
main::{lambda()#1}::_FUN():
        push    rbp
        mov     rbp, rsp
        mov     edi, 0
        call    main::{lambda()#1}::operator()() const
        pop     rbp
        ret
main::{lambda()#1}::operator void (*)()() const:
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     eax, OFFSET FLAT:main::{lambda()#1}::_FUN()
        pop     rbp
        ret
.LC30:
        .string "Usage: HW02_OoStaticLangArch input-file output-file"
.LC31:
        .string "r"
.LC32:
        .string "w"
.LC33:
        .string "Invalid input/output file"
.LC34:
        .string "\n-----SORTED-----\n\n"
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 72
        mov     DWORD PTR [rbp-68], edi
        mov     QWORD PTR [rbp-80], rsi
        cmp     DWORD PTR [rbp-68], 3
        je      .L189
        mov     edi, OFFSET FLAT:.LC30
        call    puts
        mov     ebx, 0
        jmp     .L193
.L189:
        mov     rdx, QWORD PTR stdin[rip]
        mov     rax, QWORD PTR [rbp-80]
        add     rax, 8
        mov     rax, QWORD PTR [rax]
        mov     esi, OFFSET FLAT:.LC31
        mov     rdi, rax
        call    freopen
        mov     QWORD PTR [rbp-24], rax
        mov     rdx, QWORD PTR stdout[rip]
        mov     rax, QWORD PTR [rbp-80]
        add     rax, 16
        mov     rax, QWORD PTR [rax]
        mov     esi, OFFSET FLAT:.LC32
        mov     rdi, rax
        call    freopen
        mov     QWORD PTR [rbp-32], rax
        cmp     QWORD PTR [rbp-24], 0
        je      .L191
        cmp     QWORD PTR [rbp-32], 0
        jne     .L192
.L191:
        mov     rax, QWORD PTR stderr[rip]
        mov     rcx, rax
        mov     edx, 25
        mov     esi, 1
        mov     edi, OFFSET FLAT:.LC33
        call    fwrite
        mov     ebx, 1
        jmp     .L193
.L192:
        lea     rax, [rbp-33]
        mov     rdi, rax
        call    main::{lambda()#1}::operator void (*)()() const
        mov     rdi, rax
        call    atexit
        call    clock
        mov     QWORD PTR start[rip], rax
        mov     QWORD PTR [rbp-64], 0
        mov     QWORD PTR [rbp-56], 0
        mov     rdx, QWORD PTR [rbp-24]
        lea     rax, [rbp-64]
        mov     rsi, rdx
        mov     rdi, rax
        call    Container::input(_IO_FILE*)
        mov     rdx, QWORD PTR [rbp-32]
        lea     rax, [rbp-64]
        mov     rsi, rdx
        mov     rdi, rax
        call    Container::output(_IO_FILE*) const
        lea     rax, [rbp-64]
        mov     esi, 0
        mov     rdi, rax
        call    Container::insertionSort(bool)
        mov     rax, QWORD PTR [rbp-32]
        mov     rcx, rax
        mov     edx, 19
        mov     esi, 1
        mov     edi, OFFSET FLAT:.LC34
        call    fwrite
        mov     rdx, QWORD PTR [rbp-32]
        lea     rax, [rbp-64]
        mov     rsi, rdx
        mov     rdi, rax
        call    Container::output(_IO_FILE*) const
        mov     rax, QWORD PTR [rbp-24]
        mov     rdi, rax
        call    fclose
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    fclose
        mov     ebx, 0
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    Container::~Container() [complete object destructor]
.L193:
        mov     eax, ebx
        jmp     .L196
        mov     rbx, rax
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    Container::~Container() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L196:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
vtable for CharEncryption:
        .quad   0
        .quad   typeinfo for CharEncryption
        .quad   CharEncryption::~CharEncryption() [complete object destructor]
        .quad   CharEncryption::~CharEncryption() [deleting destructor]
        .quad   CharEncryption::input(_IO_FILE*)
        .quad   CharEncryption::randomEncryption(unsigned long, unsigned long)
        .quad   CharEncryption::output(_IO_FILE*) const
        .quad   CharEncryption::encrypt()
vtable for Text:
        .quad   0
        .quad   typeinfo for Text
        .quad   0
        .quad   0
        .quad   __cxa_pure_virtual
        .quad   __cxa_pure_virtual
        .quad   Text::output(_IO_FILE*) const
        .quad   __cxa_pure_virtual
vtable for ShiftEncryption:
        .quad   0
        .quad   typeinfo for ShiftEncryption
        .quad   ShiftEncryption::~ShiftEncryption() [complete object destructor]
        .quad   ShiftEncryption::~ShiftEncryption() [deleting destructor]
        .quad   ShiftEncryption::input(_IO_FILE*)
        .quad   ShiftEncryption::randomEncryption(unsigned long, unsigned long)
        .quad   ShiftEncryption::output(_IO_FILE*) const
        .quad   ShiftEncryption::encrypt()
typeinfo for CharEncryption:
        .quad   vtable for __cxxabiv1::__vmi_class_type_info+16
        .quad   typeinfo name for CharEncryption
        .long   0
        .long   1
        .quad   typeinfo for Text
        .quad   0
typeinfo name for CharEncryption:
        .string "14CharEncryption"
typeinfo for ShiftEncryption:
        .quad   vtable for __cxxabiv1::__vmi_class_type_info+16
        .quad   typeinfo name for ShiftEncryption
        .long   0
        .long   1
        .quad   typeinfo for Text
        .quad   0
typeinfo name for ShiftEncryption:
        .string "15ShiftEncryption"
typeinfo for Text:
        .quad   vtable for __cxxabiv1::__class_type_info+16
        .quad   typeinfo name for Text
typeinfo name for Text:
        .string "4Text"
.LC11:
        .long   0
        .long   -2147483648
        .long   0
        .long   0
.LC28:
        .long   0
        .long   1093567616
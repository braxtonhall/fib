; assembles with nasm to an 70-byte ELF binary that works on x86 Linux
; is 64 bytes possible???

bits 32
org $0d470000
    db $7F,"ELF" ; e_ident
    dd 1 ; p_type
    dd 0 ; p_offset
    dd $$ ; p_vaddr
    dw 2 ; e_type, p_paddr
    dw 3 ; e_machine
    dd entry ; e_version, p_filesz
    dw (entry-$$)&0xffff ; e_entry, p_memsz

entry:
    inc edi
main:
    ; print
    or eax, strict dword 4
    mov edx,esp
    sub edx,ecx
    inc edx
    mov bl,1
    int 0x80

    push $00010020
    mov ecx,esp
    mov eax,edi

    ; update fibbo
    add edi,esi
    xchg esi,eax

    mov bl,10
format:
    cdq
    div ebx ; SIGFPE on overflow
    or edx,'0'
    dec ecx
    mov [ecx],dl
    test eax,eax
    jnz format

    jmp main

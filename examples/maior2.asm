%include	'../util.asm'

section		.text
global		_start

_start:
    lea     rdi, [idv]
    call    printstr
    call    endl
    call    readint
    mov     r12, rax
    call    readint
    mov     r13, rax
    cmp     r12, r13
    jg      maior
    mov     r14, r13
    jmp     fim
maior:
    mov     r14, r12
fim:    
    lea     rdi, [mmsg]
    call    printstr
    mov     rdi, r14
    call    printint
    call    endl
    call    exit0
	            
section		.data
idv:    db 'Informe dois valores: ', 0
mmsg:   db 'Maior: ', 0

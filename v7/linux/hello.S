.text
.global _start
_start:
asm_main_after_prologue:
    /* write */
    mov r0, #1     /* stdout */
    ldr r1, =msg   /* buffer */
    ldr r2, =len   /* len */
    mov r7, #4     /* syscall id. */
    swi #0

    /* exit */
    mov r0, #0 /* exit status */
    mov r7, #1 /* syscall id */
    swi #0
msg:
    .ascii "hello syscall v7\n"
len = . - msg

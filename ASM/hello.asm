.data       # section declaration

msg:   
    .ascii "Hello world!\n" # data string
    len = . - msg           # length of out deta string

.text
                        # section declaration
    .global _start      # set the entry point

_start:
# write the data string to stdout
    movl    $len,%edx   # the third param: str_len
    movl    $msg,%ecx   # second param: pointer to message to write
    movl    $1,%ebx     # first param: file handler (stdout)
    movl    $4,%eax     # system call number (sys_write)
    int     $0x80       # kernal call

    # exit code
    movl    $0,%ebx     # first param: exit code
    movl    $1,%eax     # system call number (sys_exit)
    int     $0x80       # kernal call
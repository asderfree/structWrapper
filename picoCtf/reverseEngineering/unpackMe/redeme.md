<!--
 * @Date: 2022-05-23 17:59:54
 * @LastEditors: asderfree
 * @LastEditTime: 2022-05-23 17:59:57
 * @FilePath: \test_env\picoCtf\reverseEngineering\unpackMe\redeme.md
 * @Description: 
-->
```shell
<main+113>     lea    0xb1135(%rip),%rdi        # 0x4b3020                                                ││   0x401eeb <main+120>     mov    $0x0,%eax                                                                           ││   0x401ef0 <main+125>     callq  0x410f80 <__isoc99_scanf>                                                           ││  >0x401ef5 <main+130>     mov    -0x3c(%rbp),%eax                                                                    ││   0x401ef8 <main+133>     cmp    $0xb83cb,%eax                                                                       ││   0x401efd <main+138>     jne    0x401f42 <main+207>                                                                 ││   0x401eff <main+140>     lea    -0x30(%rbp),%rax                                                                    ││   0x401f03 <main+144>     mov    %rax,%rsi    
```
可以看到 最终的比较为 cmp $0xb83cb,%eax       %eax里面即为我们的输入值， 所以， 最终的需要的输入即 0xb83cb


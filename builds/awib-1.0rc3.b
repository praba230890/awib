[
Also Written In Brainfuck (awib) v1.0-rc3

An optimizing brainfuck compiler written in brainfuck for Linux on i386
by Mats Linander

This program takes brainfuck source code as input, compiles it into machine
code and outputs it as an elf binary.

Awib will only run properly in brainfuck environments where:
 (*) cells are one (1) byte large
 (*) cells overflow from 0xff to 0x00 and vice versa
 (*) executing a ',' (read) after end of input stores EOF in the cell
     at the pointer
 (*) EOF = -1 (0xff)
 (*) the memory area is sufficiently large (somewhere between 200 and 65k bytes
     should be enough, depending on the input)

Feeding awib bad input, e.g. code with unbalanced brackets, will result in
undefined behaviour.
Feeding awib with too much input (how much depends on how awib was compiled)
will result in undefiend behaviour.

Programs compiled by awib will have a memory area of 65535 bytes, will
store -1 (0xff) where the pointer points on EOF and will only run on
386's capable of executing linux elf binaries.

If you like this software, please let me know.
If you dislike this software, please let me know.

  Copyright (C) 2004 Mats Linander

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
]



>>>>>>>>>++++++++++[->++++++++++<]>[-<++>]<[[->>>>+<<<<]+>+>+>+>-]>,+[->+
++++++++[-<----->]+<[>-<[->>+<<]]>>[-<<+>>]<[[>+>++[<->[->+<]]>-[-<+>]<<[
---[--<<+>>]+++++[-<++++++++>]->+<<<+[[[[[<]<]<]<]<]+++[-<<<[-]+>+[[-<<+>
>]<->]<<[->>+<<]>[>>+<<-]>>>]>>>>>[[[[[>]>]>]>]>]<<<+>],>>+++++++++[-<<--
--->>]<<[<->[->          >+<<]]>>[-<<+>>]<<<]>>>+<-[>->+<<[->>>+<<<]]>>>+
[-<<<+>>>]<<[              -<-<<+++++++++<--[[[[[<]<]<]<]<]++[-<<<[-]+>+[
[-<<+>>]<->]                <<[->>+<<]>[>>+<<-]>>>]>>>>>[[[[[>]>]>]>]>]<<
<<]>[-<<<[-      >>+<<]      ++++++++[-<+++++>]--[--<<+>>]>[-<+>]>[-<+>]<
<<+<+[[[[[      <]<]<]<]      <]+++[-<<<[-]+>+[[-<<+>>]<->]<<[->>+<<]>[>>
+<<-]>>>]      >>>>>[[[[[      >]>]>]>]>]<<<]<]<++>+<[>-<[->>+<<]]>>[-<<+
>>]<[[>+      >++[<->[->+<      ]]>-[-<+>]<<[---[--<<+>>]->+<<<+[[[[[<]<]
<]<]<]+      ++[-<<<[-]+>+[      [-<<+>>]<->]<<[->>+<<]>[>>+<<-]>>>]>>>>>
[[[[[>      ]>]>]>]>]<<<+>],      >>+++++++[-<<------>>]<<-[<->[->>+<<]]>
>[-<<                              +>>]<<<]>>>+<-[>->+<<[->>>+<<<]]>>>+[-
<<<+>                              >>]<<[-<-<<+<--[[[[[<]<]<]<]<]++[-<<<[
-]+>+      [[-<<+>>]<->]<<[->      >+<<]>[>>+<<-]>>>]>>>>>[[[[[>]>]>]>]>]
<<<<]      >[-<<[-<<+>>]<[->+      <]<[->+<]--[--<+>]+<+[[[[[<]<]<]<]<]++
+[-<<      <[-]+>+[[-<<+>>]<-      >]<<[->>+<<]>[>>+<<-]>>>]>>>>>[[[[[>]>
]>]>]      >]<<<]<]<-->+<[>-<      [->>+<<]]>>[-<<+>>]<[++++++++<--[[[[[<
]<]<]      <]<]++[-<<<[-]+>+[      [-<<+>>]<->]<<[->>+<<]>[>>+<<-]>>>]>>>
>>[[[      [[>]>]>]>]>]<<<]<+      >+<[>-<[->>+<<]]>>[-<<+>>]<[++++[-<+++
++>]<      [->+++++>+++++++++      +>+++>++++++++>+++++>+++>+++++>+++++++
+>+          ++++>>++++++++<          <<<<<<<<<<]>++++++++++++>-->>+++++>
+++>-------->++++++++>-------->-------->+++>-->+>-[<]>[[-<+>]>]<<[[[[[<]<
]<]          <]<]+++++++++++          ++[-<<<[-]+>+[      [-<<+>>]<->]<<[
->>+<      <]>[>>+<<-]>>>]>>>>      >[[[[     [>]>]>]     >]>]<<<]<-->+<[
>-<[-      >>+<<]]>>[-<<+>>]<[      +++[       ->++++     +<]>[-<<+++++>>
]<<[-      >++>++>+>+<<<<]>>>>      [---       -<+<<+     +<+++++>>>>]+++
+++++      ++[-<<<-<+>>>>]<+++      <++++     +<<++[[     [[[<]<]<]<]<]++
++[-<      <<[-]+>+[[-<<+>>]<-      >]<<[->>+<<]>[>>+     <<-]>>>]>>>>>[[
[[[>]      >]>]>]>]<<<]<------      ---        ----->     +<[>-<[->>+<<]]
>>[-<      <+>>]<[++++++++[-<+      +++++      ++>]<+     [[[[[<]<]<]<]<]
<<<[-      ]+>+[[-<<+>>]<->]<<      [->>+      <<]>[>            >+<<-]>>
>>>>>      >[[[[[>]>]>]>]>]<<<      ]<-->      +<[>-<             [->>+<<
]]>>[      -<<+>>]<[++++[-<+++      +++++      +++++>     ]<[[[    [[<]<]
<]<]<      ]<<<[-]+>+[[-<<+>>]      <->]<      <[->>+     <<]>[>    >+<<-
]>>>>>      >>>[[[[[>]>]>]>]>      ]<<<]<      >+++++     +[-<--    --->]
+<+[>-<      [->         >+<      <]]>>[-      <<+>>]     <[++++    [-<++
+++>]<[-      >     +     +      ++++>+>+      ++++>+     ++++++    ++>++
++>+>+++++         <<<         <<<<]+++++      [->-->     >+>->     >-->+
<<<<<<<]>-->      >++>-      >++>>++[<           ]>[               [-<+>]
>]<<[[[[[<]<]<]<]<]>>>>+++++++++++[-<<<[-]+>+[[-<<+>>]<->]<<[->>+<<]>[>>+
<<-]>>>]>->->->->[[[[[>]>]>]>]>]>]<-->+<[>-<[->>+<<]]>>[-<<+>>]<[++[->+++
++++++++<]>[-<+++++++<+++>>]<++<+++[[[[[<]<]<]<]<]>>>>>->-<<<<<<<[->+>+<<
]>[-<+>]<<[-<+>>>+<<]<[->+<]>>>[->>>>>>>[[[[[>]>]>]>]>]>+<<<<<<[[[[[<]<]<
]<]<]<<]>[->>>>>>[[[[[>]>]>]>]>]>>+<<<<<<<[[[[[<]<]<]<]<]<]>>>>+>+[[[[[>]
>]>]>]>]<<+++++[->>[-]+>[[-<<+>>]<->]<<[->>+<<]>[>>-<<-]>-<<<]>>>[-<+<<+>
>>]>[-<+<<+>>>]<<<<[-<<<[[<]<]<<+>>>>[[>]>]>]>[-<<<<[[<]<]<+>>>[[>]>]>>]<
<<<[[<]<]>++++++++[-<+++++++++++++++++>]<+>------------------------------
---------------[[>]>]>>>[->>+<<]>[->>+<<]>>>+[[-]<<<[-]+>[[-<<+>>]<->]<<[
->>+<<]>[>>-<<-]>-<<<<<[-]+>[[-<<+>>]<->]<<[->>+<<]>[>>-<<-]>->>>>[[-<+>]
>>+<<]<[->+<]>>[[-<<+>>]>+<]<<[->>+<<]>>>]<<<<+++++++++[-<<<[-]+>[[-<<+>>
]<->]<<[->>+<<]>[>>-<<-]>->>]<[-<<+>>]<[-<<+>>]>+++++++++++[-<++++++>]<+[
[[[[<]<]<]<]<]+[[-]<<<[-]+>[[-<<+>>]<->]<<[->>+<<]>[>>-<<-]>-<<<<<[-]+>+[
[-<<+>>]<->]<<[->>+<<]>[>>+<<-]>>>>>>><[[-<<+>>]>+<]<<[->>+<<]>[[-<+>]>>+
<<]<[->+<]>>>]<<<<+++++[-<<<[-]+>+[[-<<+>>]<->]<<[->>+<<]>[>>+<<-]>>>]>>>
>>+>+>+>+[[[[[>]>]>]>]>]<<<]<,+]>>>>>>+++++[-<++++>]<[-<++++++<++++++++++
<++++<+++++++++++<+++++++>>>>>]<++++++++<+++++<-----<----<---[[[[[<]<]<]<
]<]+++++[-<<<[-]+>+[[-<<+>>]<->]<<[->>+<<]>[>>+<<-]>>>]+++++[->+++++<]>[-
<+++++>]<-[-<<<[-]+>+[[-<<+>>]<->]<<[->>+<<]>[>>+<<-]>>>]++++++++[->+++++
+++<]>[-<++>]<-.+[-->+<]>+++++.+++++++.------.>+...-.........++.>.<+.---.
+.-...+++++++[-<++>]<.>...++++++++[-<---->]<.>...........<.>.+++++[-<----
>]<.>.+.-.......+.-...............<<<<.>.>..<<.>.>..>>+++++++.-------....
...+++++[-<+++>]<++.[->+>++++<<]>>----.>++++[-<---->]<.>++++[-<++++>]<.<.
<++++++[->>++++<<]>>+++.<.>>++++++[-<--->]<.-[-->+<]>++.<+++++[->------<]
>+.<<.>>---[-<+++>]<.>++++++++[-<----<<++++>>>]<.>+++.[-<++++>]<.<<++.>>>
...<<.>>-.+<<.[->+<]>--.<<[->>-<<]>>++.<--[--<+>]<+.<+++++++++[->+>>+<<<]
>.>>.<<.>+++++[->----<]>.<++++++++[->-----<]>---.<----.---------.<<+++++[
->>>++++<<<]>>>-.<<--.>[+>++<]>++++++.------------[+<+>]<.+.<++.<--------
-.>>+++.>>>[>]<[>>[.>]>[<.>.[-]<+>]<]
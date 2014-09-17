# This is the C language backend for awib
# Please refer to the documentation in the full source code distribution
# of awib for additional details

% 10(0) *2 (code) 0 M m
--<<<<<<<<++++++++++++++++++++[->+++>++>+++++>+++++>++++++<<<<<]
++++++++++>>----->>++++++++++<<
% 10 60 *35 100 110 120 0 0 0 (code) 0 M m

# first line of the header  (the include statement)
.>+++++.>.<------.+>--.+++++++++.<.+.<---.+++<.>>>--.+.<-.+++++.>-----.-<<
+++++++++++.----------->-.----<<++.--<.

# loop for the next 13 lines (the define statements)
>>>>>>+++++++++++++[
% 10 60 35 100 110 120 *i 0 0 (code) 0 M m (where i is loop index from 9 to 1)

# output first part of this define statement
<<<<.>.+.+.+++.>.<----.<---.>.>>>>++++++++[-<++++++++>]<.>++++++++[-<-------->]
<<<<<++++++++.>>>.<<<+.---------.+++>->>>

# output remainder of this define statement
[->+>+<<]>[-<+>]+>-[-[-[-[-[-[-[-[-[-[-[-[-[<->[-]]

<[-
% 10 60 35 100 110 120 13 *0 0 (code) 0 M m
<<<<<+++++++.>>++.--<<.------->>>.<<<<-.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 12 *0 0 (code) 0 M m
<<<<<+++++++.--.>>++.--<<+++.>>>.<<<--.++.--------<+.-<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 11 *0 0 (code) 0 M m
<<<<<+++++++.>>++.--<<.------->>>.<<<<-.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 10 *0 0 (code) 0 M m
<<<<<+++++++.--.>>++.--<<+++++.>>>.<<<----.++.--------<+.->>>>>.>
]>]

<[-
% 10 60 35 100 110 120 9 *0 0 (code) 0 M m
<<<<<+++++++.>>++.--<<<+.>------->>>.<<<<--.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 8 *0 0 (code) 0 M m
<<+++++.----->++.-->
]>]

<[-
% 10 60 35 100 110 120 7 *0 0 (code) 0 M m
<<-.<<++++.+.>--.++<----.-<+++++.++.>>++.--<<-.------>>>++++.--->+++.--->
]>]

<[-
% 10 60 35 100 110 120 6 *0 0 (code) 0 M m
<<<++.--<<++++++++.--------<+.>>>>.<<<<--.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 5 *0 0 (code) 0 M m
<<<++.--<<++++++++++.----------<+.>>>>.<<<<--.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 4 *0 0 (code) 0 M m
<<<++.+++++.-.<-.+++++.-------.+++>--.<<+++++.++.>>--.--<<-.------<-.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 3 *0 0 (code) 0 M m
<<<<<+++++++.>>++.--<<+++.----------<+.>>>>.<<<<--.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 2 *0 0 (code) 0 M m
<<<<-.<<+.>>++++.--.>++++++.<--.+++++.-------.>--.<<+++++.+.<--.>>++++++++.
---.<-.>---.<<+++.-.->++++++++.-------.+.------->>--.--<<<+.>>.+<<--.+<.>>>>>>>
]>]

<[-
% 10 60 35 100 110 120 1 *0 0 (code) 0 M m
<<<<<+++++++.>>++.--<<+.--------<+.>>>>.<<<<--.+<.>>>>>>>
]>

<<-]

# output remainder of header
% 10 60 35 100 110 120 *0 0 0 (code) 0 M m
<<<-.+++++.-------.>++++.<<---.>+.>+++.<++++.-----------.<<------------.>>>>.<
<+++++++++++....---------.<<+++++++++++.<.>>>++++++++++++.+++++.>-.<<.>-.-----
-------.++++++++.+++++.<++++++++.+.>>>+++.<<<<<.>>>-----------.+++++.-------.>
--.<<---------.++++++++++.>>--.<<<++.>>+.>+++++.<++++.<<--.<.>>>+++.+++++.>-.<
<----------.>-----------.<<.<.
[-]>[-]>[-]>[-]>[-]>[-]>>>>
% 9(0) *(code) 0 M m

# for each op PQ output "ez(Q)\n" with z = add('A' P) and Q printed as
# base 10 ascii
[
% 9(0) *P Q (code) 0 M m
<++++++++++[-<++++++++++>]<+.[-]>++++++++[->++++++++<]>.[-]
++++[-<++++++++++>]<.[-]>>
# itoa
% 5(0) *n (code) 0 M m
<<++++++++++>>[-<<-<+>[<-]<[<]>[->++++++++++>+<<]>>>]++++++++++<<[->>-<<]
<++++++++++>>[-<<-<+>[<-]<[<]>[->++++++++++>+<<]>>>]++++++++++<<[->>-<<]
<++++++[->++++++++<]>>[<[->+>+<<]>.[-]>.[-]<]
>[<<[->>+<<]>>.[-]]<<[-]>>++++++[->++++++++<]>.[-]
% 5(0) *0 (code) 0 M m
++++[-<++++++++++>]<+.-[---->+<]>.[-]>
]

# output footer
% *0 M m
>[-]>[-]++++++++++[->+++++++++++>+++>+++++<<<]
>++++.-------------.+++++++++++++++.+.---.----.>++.>--.+++++++++++.
<<+++++++++++++++.>>>++++++++++.[-]<[-]<[-]<[-]

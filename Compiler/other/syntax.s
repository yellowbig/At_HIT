ε -1
id 1
const_int 2
const_real 3
const_char 4
const_string 5
const_bool 6
+ 7
- 8
* 9
/ 10
not 11
or 12
and 13
== 14
!= 15
= 16
> 17
< 18
>= 19
<= 20
, 21
; 22
( 23
) 24
[ 25
] 26
{ 27
} 28
char 29
int 30
real 31
bool 32
for 33
while 34
break 35
continue 36
if 37
else 38
return 39
call 40
SS 100
E 101
T 102
F 103
B 104
Y 105
Z 106
R 107
M 108
D 109
LI 110
VA 111
TY 112
A 113
LEFT 114
S 115
L 116
P 117
PA 118
PL 119
PO 120
CC 121
### ###
SS CC
E E@+@T|E@-@T|T
T T@*@F|T@/@F|F
F id|const_int|const_real|(@E@)
B B@or@Y|Y|E@R@E
Y Y@and@Z|Z
Z const_bool|(@B@)
R >|<|==|>=|<=|!=
M ε
D TY@LI
LI LI@,@VA|VA
VA id|id@=@E|id@[@const_int@]
TY char|int|real|bool
A LEFT@=@E
LEFT id@[@E@]|id
S if@(@B@)@{@L@}|if@(@B@)@{@L@}@else@{@L@}|while@(@B@)@{@L@}|A|D|call@id@(@PL@)
L L@S@;|S@;
P TY@id@(@PA@)@{@L@}
PA TY@id|ε|TY@id@,@PA
PL PL@,@PO|PO
PO E|ε
CC P|L

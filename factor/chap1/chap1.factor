! must be run with the factor app

! 1
3 * 4 4 * + .

! 2
USE: math.functions
3 sq 4 sq + sqrt .

! 3
1 dup 2

! 4
"Jacob"
"Hello, " swap append >upper .

! 5
{ 1 4 17 9 11 } 0 [ + ] reduce .

! 6
USE: math.ranges
1 100 [a,b] 0 [ + ] reduce .

! 7
USE: math.functions
1 10 [a,b] [ sq ] map .

! 8
42 [ 10 / floor ] [ 10 mod ] bi

! 9
USE: math.parser
512 number>string [ 1string string>number ] each

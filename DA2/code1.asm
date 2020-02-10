.model small
.stack

.data
ar db 3,4,5,6
sum dw ?

.code
mov ax, data
mov dx, ax

lea si, ar
mov ax, 00h;
add ax, [si];
inc si;
add ax, [si];
inc si;
add ax, [si];
inc si;
add ax, [si];
mov sum,ax;
int 21hl
hlt;



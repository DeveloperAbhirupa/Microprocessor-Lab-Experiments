.model small
.stack

.data
ar db 00h,01h;
cnt db 05h;



.code
mov ax,@data
mov ds,ax
lea si, ar;
inc si;
mov cl,cnt;

l1:
mov ax, [si-1];
add ax, [si];
inc si;
mov [si],ax;
loop l1;

hlt;



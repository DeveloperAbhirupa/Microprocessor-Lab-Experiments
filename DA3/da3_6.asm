;Write an AP to interchange two block of data.

.model small
.stack

.data
n1 db 20h;
n2 db 35h;

.code
mov ax, @data;
mov ds, ax;
mov ax, 0000;
mov bx, 0000;

mov al, n1;
mov ah, n2;
mov bl, al;
mov al, ah;
mov ah, bl;
mov ax, 4ch;
int 21h;
hlt;



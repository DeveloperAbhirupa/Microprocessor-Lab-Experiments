.model small
.stack

.data
ar db 03, 02, 07, 04, 09;
cnt db 05;   
divsr db 02;



.code
mov ax,@data
mov ds,ax
lea si, ar;
mov cl,cnt;
mov ch,divsr;
mov bl,00;
mov bh,00; 



l1:   
mov ah, 00;
mov al, [si];  
div ch; 
cmp ah, 00;
jz even;
inc bl; //Incrementing bl if number is odd
jmp term;
even:
inc bh; //Incrementing bh if even
term:
inc si;
loop l1;


end:
mov ah, 4ch;
int 21h;

hlt;



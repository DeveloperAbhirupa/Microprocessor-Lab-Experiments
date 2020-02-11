;Write an ALP to find the largest number among n numbers which are stored in an array,
;using 8086 instruction set.


.model small
.stack

.data
ar db 02, 03, 09, 04, 07;
cnt db 04h;



.code
mov ax,@data
mov ds,ax
lea si, ar;
mov cl,cnt;
mov ax,0000;
mov bx,0000;
mov al,[si];
inc si;


l1:
cmp al,[si];
jnc skip; //If CY=0 then value of al larger than [si]
mov al,[si];
skip:
inc si;    
cmp cl,00;
jz terminate;
loop l1;
 
 
terminate:
mov ah,4ch;
int 21h;
end;



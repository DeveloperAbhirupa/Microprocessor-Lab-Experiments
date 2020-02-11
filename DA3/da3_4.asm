;Write an ALP to check whether the given number is prime or not. If prime, AH is 00 else 01h.


.model small
.stack

.data
num db 06;

.code
mov ax,@data
mov ds,ax

mov ax,0000;
mov bx,0000;
mov bl, 00;//Using cl to count number of factors
mov bh, 02;//Using ch to increment from 2 to num to check for factors;


l1:    
mov al,num; //Since al gets overwritten during div
cmp bh, al; //Check if divisor==dividend
jz terminate;
div bh; //Divide al/bh, if rem==0 then inc bl
cmp ah,00;
jnz skip;
inc bl;
skip:
inc bh;


loop l1;
 
 
terminate:
cmp bl,01;
jnz notprime;
mov ah, 00; 
hlt;

notprime:
mov ah,01;
hlt;
end;



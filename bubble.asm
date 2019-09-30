.MODEL SMALL
.data
n db 5
a db 5,7,4,3,6
.code
mov ax,@data
mov ds,ax
mov cl,n
dec cl
OUTLOOP:mov ch,cl
         mov si,0
INLOOP:mov al,a[si]
        inc si
        cmp al,a[si]
        Jb noxg
        xchg al,a[si]
        mov a[si-1],al
noxg:dec ch
     JNZ inloop
     dec cl
     JNZ outloop
     mov ah,4ch
     Int 21h
     END

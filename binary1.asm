.model small
.data
a db 01,02,03,04,05,06,07
first db 00
last db 06
key db 01
.code
mov ax,@data
mov ds,ax
mov bl,first
mov cl,last
mov dl,key
l:mov si,offset a
   add al,bl
   add al,cl
   shr al,01
   cmp [si],dl
   ja l1
   jb l2
   je l3
   l1:mov bl,[si]+1
      cmp bl,cl
      jbe l
      ja exit
   l2:mov cl,[si]-1
      cmp bl,cl
      jbe l
      ja exit
   l3:mov al,[si]
      exit:mov ah,4ch
      int 21h
      end

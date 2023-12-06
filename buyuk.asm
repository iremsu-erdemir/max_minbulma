;Girilen 10 sayıdan en büyüğünü ve en küçüğünü bulma.
code segment
main proc far
assume cs:code,ds:code
mov ax,0
push ds ax
mov ax,code
mov ds,ax
jmp basla
mesaj1 db 10,13,'Sayı girin : $'
mesaj2 db 10,13,'En buyuk : $'
mesaj3 db 10,13,'En kucuk : $'
kucuk db '9'
buyuk db '0'
basla: mov cx,10d
dongu:
mov ah,09h
lea dx,mesaj1
int 21h
mov ah,01h
int 21h
cmp al,buyuk
jge dahabuyuk
cmp al,kucuk
jle dahakucuk
jmp yazma
dahabuyuk:
mov buyuk,al
jmp yazma
dahakucuk:
mov kucuk,al
yazma:
loop dongu
mov ah,09h
lea dx,mesaj3
int 21h
mov ah,02h
mov dl,kucuk ; Küçük Gösterme
int 21h
mov ah,09h
lea dx,mesaj2
int 21h
mov ah,02h
mov dl,buyuk ; buyuk Gösterme
int 21h
Son: ret
main endp
code ends
end
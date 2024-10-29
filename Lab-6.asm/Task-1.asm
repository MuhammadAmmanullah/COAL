.model small
.stack 100h
.data   

newline db 0x0D,0x0A,'$'

.code
        main proc
            
            mov ax,@data
            mov ds,ax 
            
            mov dl,'1'
        
            mov cx, 10
               
        LABEL1:     ;loop1 start
            mov ah,2
            int 21h
            inc dl
        loop LABEL1 ;loop1 end 
        
        
        
        lea dx,newline   ;new line command
        mov ah,9
        int 21h
        
        
        mov dl,'A'
        
        mov cx, 26   
        LABEL2:         ;loop2 start
            mov ah,2
            int 21h
        inc dl          ;loop2 end
        loop LABEL2

        mov ah,4ch
        int 21h          

        main endp
end main

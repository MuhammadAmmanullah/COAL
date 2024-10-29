; display result on screen
.model small     ; 64kb for data and 64 kb for code
.stack 100h
.data
.code
       main proc 
        
          mov bl,'3'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt      
          
               
          
          mov bl,'+'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt     
          
          mov bl,'5'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt 
                                 
                                      
          mov bl,'-'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt   
          
          
          mov bl,'2'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt
          
          mov bl,'-'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt   
          
          mov bl,'1'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt
          
          mov bl,'+'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt 
          
          mov bl,'3'
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt 
          
          mov bl,'='
          mov dl,bl        
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt  
                                                   
       
          mov bl, 2
          mov dl,bl
          add dl,54   
          
          
          
          ; service routine for output
          mov ah, 2 ; for output
          int 21h   ; interrupt
         
        
       main endp
end main
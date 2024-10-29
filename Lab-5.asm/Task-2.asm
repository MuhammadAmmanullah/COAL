; display result on screen
.model small     ; 64kb for data and 64 kb for code
.stack 100h
.data
variable1 DB 1
variable2 DB 2
variable3 DB 3
result DB 0
.code
       main proc 
	    
		  mov ax, @data    ; get the reference of data segment
          mov ds, ax
		  
		  mov al,variable1
		  
		  mov bl,variable2
		  
		  mov cl,variable3
		  
		  add al,bl
		  add al,cl
	
          add ax,30h
          mov dl,al
		  
		  mov ah,2
		  int 21h
		  
		  mov result,al
		  
		  mov ah,4ch
		  int 21h
       main endp
end main    



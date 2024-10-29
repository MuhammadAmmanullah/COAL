.model small
.stack 100h

.data
    array db 5, 10, 15, 24               ; Initialize an array of 4 numbers
    result db ?                          ; Variable to store the result
    msg db "The sum is calculated.$"     ; Message to display (note the $ at the end)

.code
main proc
    ; Set up the data segment
    mov ax, @data
    mov ds, ax

    ; Initialize variables
    xor al, al                           ; Clear AL (accumulator for the sum)
    mov cx, 4                            ; Set CX to the number of elements in the array
    lea si, array                        ; Load the address of the array into SI

SumLoop:    
    add al, [si]                         ; Add the current element to AL
    inc si                               ; Move to the next element in the array
    loop SumLoop                         ; Repeat until all elements are added

    ; Store the result (optional; not displayed)
    mov result, al 
                  ; Store the sum in the result variable

    ; Display the message
    mov dx, offset msg                   ; Load address of the message into DX
    mov ah, 09h                          ; DOS function to display string
    int 21h 
    
    mov dl,result
    mov ah,2
    int 21h 
    
                                         ; Call DOS interrupt

    ; Exit the program
    mov ax, 4C00h                        ; DOS function to exit program
    int 21h                              ; Call DOS interrupt

main endp
end main
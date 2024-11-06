ORG 100h           ; Set origin for COM file format

MOV CX, 10         ; Set loop counter to 10 (for numbers '0' to '9')
MOV AL, '0'        ; Initialize AL with ASCII code for '0'

PrintLoop:
    MOV DL, AL     ; Move the current character to DL (for printing)
    MOV AH, 02h    ; DOS interrupt function to print a character
    INT 21h        ; Call DOS interrupt

    inc AL         ; Increment AL to get the next ASCII character ('1', '2', etc.)
    LOOP PrintLoop ; Repeat until CX reaches 0

MOV AH, 4Ch        ; DOS interrupt function to exit program
INT 21h            ; Call DOS interrupt to exit

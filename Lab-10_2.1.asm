ORG 100h           ; Set origin for COM file format

MOV CX, 10         ; Set loop counter to 10 (for numbers '0' to '9')
MOV AL, '9'        ; Initialize AL with ASCII code for '9'

PrintLoop:
    MOV DL, AL     ; Move the current character to DL (for printing)
    MOV AH, 02h    ; DOS interrupt function to print a character
    INT 21h        ; Call DOS interrupt

    dec AL         ; Decrement AL to get the previous ASCII character ('9', '8', etc.)
    LOOP PrintLoop ; Repeat until CX reaches 0

MOV AH, 4Ch        ; DOS interrupt function to exit program
INT 21h            ; Call DOS interrupt to exit


    SECTION TEXT

    lea Message,a3
    jsr PrintString
    jsr NewLine

    move.w #1,-(sp)
    trap #1
    addq.l #2,sp

    rts 

Message:
    db 'Hello World!',$0d,$0a,"From the Atari ST and Scott Moore!",$0d,$0a,"One more line goes here ;-)",$0d,$0a,$00

    align 2

PrintChar:
    movem.l d0-d7/a0-a7,-(sp)
    and.l #$00ff,d0
    move.w d0,-(sp)
    move.w #2,-(sp)
    trap #1
    addq.l #4,sp
    movem.l (sp)+,d0-d7/a0-a7
    rts 

NewLine:
    move.b #$0d,d0
    jsr PrintChar
    move.b #$0a,d0
    jsr PrintChar
    rts 

PrintString:
    move.b (a3)+,d0
    cmp.b #0,d0
    beq .Done
    jsr PrintChar
    bra PrintString
.Done:
    rts 


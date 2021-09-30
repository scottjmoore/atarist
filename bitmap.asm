    code

    pea Start
    move.w #$26,-(sp)
    trap #14
    addq.w #6,sp
    jmp *

Start:
    move.b #$00,$ff8260
    move.l #ScreenBuffer,d0
    add.l #$ff,d0
    clr.b d0
    move.l d0,ScreenBase
    lsr.w #8,d0
    move.l d0,$ff8200

    move.w #$0000,$ff8240
    move.w #$0005,$ff8242
    move.w #$0050,$ff8244
    move.w #$0055,$ff8246
    move.w #$0500,$ff8248
    move.w #$0505,$ff824a
    move.w #$0550,$ff824c
    move.w #$0555,$ff824e
    move.w #$0007,$ff8250
    move.w #$0070,$ff8252
    move.w #$0077,$ff8254
    move.w #$0700,$ff8256
    move.w #$0707,$ff8258
    move.w #$0770,$ff825a
    move.w #$0777,$ff825c

    move.l #$00000000,d0
    move.l ScreenBase,a6
.Loop
    move.l a6,a0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    move.l d0,(a0)+
    add.l #$01,d0
    jmp .Loop

    dseg

ScreenBuffer:
    ds.b 32256

ScreenBase:
    ds.l 0

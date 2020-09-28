
        .equ    delaycount,     800 # set value for delaycount
#        .equ    delaycount,     170
        .text                   # Instructions follow
        .global delay_asm           # Makes "main" globally known

delay_asm:  beq     r4,r0,fin       # exit outer loop

        movi    r8,delaycount   # delay estimation for 1ms

inner:  beq     r8,r0,outer     # exit from inner loop

        subi    r8,r8,1         # decrement inner counter
        
        br      inner
        
outer:  subi    r4,r4,1         # decrement outer counter
        br      delay_asm


fin:    ret


.text
main: lui   $4, 0x0000      
      ori   $4, $4, 0x2000     
      ori   $5, $0, 0x10
      addi  $8, $0, 0x1  
      nop
      nop
      nop    
      
L1:   beq   $8, $5, done 
      nop
      add   $9, $0, $8        
      addi  $10, $8, -1    
        
L2:   sll   $11, $9, 2      
      add   $11, $4, $11    
      lw    $12, 0($11)       
     
      sll   $13, $10, 2      
      add   $13, $4, $13    
      lw    $14, 0($13)       
      nop
      slt   $1, $12, $14
      nop
      nop
      nop      
      beq   $1, $0, L3
      nop        

      sw    $12, 0($13)       
      sw    $14, 0($11)       
    
      addi  $9, $9, -1 
      addi  $10, $9, -1
      nop
      nop
      nop       
      bgez  $10, L2
      nop         

L3:   addi  $8, $8, 1      
      nop
      j L1
      nop


      
done: break                 

.data
LC0:
        .word   31028
        .word   16610
        .word   12937
        .word   7525
        .word   25005
        .word   17956
        .word   23964
        .word   13951
        .word   3084
        .word   23696
        .word   3881
        .word   11872
        .word   24903
        .word   16843
        .word   25957
        .word   25086


        

# s1 <-> a, s2 <-> b, s3 <-> c
# s4 <-> type, s5 <-> is_triangle
        addi s1, zero, 3
        addi s2, zero, 4
        addi s3, zero, 3
        addi s5, zero, 1
        bleu s1, s2, L1
        bleu s1, s3, L1
        add  t0, s2, s3
        bltu s1, t0, L2
        xor  s5, s5, s5
        j    L2
L1:     bleu s2, s1, L3
        bleu s2, s3, L3
        add  t0, s1, s3
        bltu s2, t0, L2
        xor  s5, s5, s5
        j    L2
L3:     bleu s3, s1, L2
        bleu s3, s2, L2
        add  t0, s1, s2
        bltu s3, t0, L2
        xor  s5, s5, s5
L2:     beq  s5, zero, L4
        bne  s1, s2, L5
        bne  s1, s3, L5
        addi s4, zero, 3
        j    L6
L5:     beq  s1, s2, L7
        beq  s1, s3, L7
        beq  s2, s3, L7
        addi s4, zero, 1
        j    L6
L7:     addi s4, zero, 2
        j    L6
L4:     xor  s4, s4, s4
L6:     nop
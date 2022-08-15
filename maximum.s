    # int a = 1, b = 2, c = 3, max;
    # if (a > b && a > c)
    #     max = a;
    # else if (b > a && b > c)
    #     max = b;
    # else if (c > a && c > b)
    #     max = c;
    # else
    #     max = a;
    # s1 <-> a, s2 <-> b, s3 <-> c, s4 <-> max
            addi s1, zero, 5        # initializes a
            addi s2, zero, 5        # initializes b
            addi s3, zero, 5        # initializes c
            ble  s1, s2, L1         # branches if a ≤ b to second case
            ble  s1, s3, L1         # branches if a ≤ c to second case
            add  s4, zero, s1       # max <- a
            j    L2                 # escapes if structure
L1:         ble  s2, s1, L3         # branches if b ≤ a to third case
            ble  s2, s3, L3         # branches if b ≤ c to third case
            add  s4, zero, s2       # max <- b
            j    L2                 # escapes if structure
L3:         ble  s3, s1, L4         # branches if c ≤ a to third case
            ble  s3, s2 L4          # branches if c ≤ b to third case
            add  s4, zero, s3       # max <- c
            j    L2                 # escapes if structure
L4:         add  s4, zero, s1       # default case, all variable are equal
L2:         nop

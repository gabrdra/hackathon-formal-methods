MACHINE
    CTXtf2
SETS
    LANES = {L1, L2, L3, L4, L5};
    SIGNALS = {S1, S2, S3}
CONSTANTS
    TRANSITIONS
    
PROPERTIES
    TRANSITIONS : SIGNALS <-> ( LANES * LANES ) &
    TRANSITIONS = {
        S1 |-> (L3 |-> L1),
        S2 |-> (L2 |-> L3),
        S3 |-> (L1 |-> L2),
        S3 |-> (L1 |-> L3)
    }
END

MACHINE
    M0_to_complete
SEES 
    CTX
VARIABLES
    rs, /* red signals */
    os, /* orange signals */
    gs, /* green signals */
    bs, /* blinking (orange signals) */
    ds, // the lights are off
    rpc, //red pedestrian crossing
    gpc //green pedestrian crossing
INVARIANT
    rs <: SIGNALS &
    os <: SIGNALS &
    gs <: SIGNALS &
    bs <: SIGNALS &
    ds <: SIGNALS &
    (bs = SIGNALS or bs ={}) & /* all blinking or none blinking */
    rs \/ os \/ gs \/ bs \/ ds = SIGNALS & /* coherency */
    rs /\ os /\ gs /\ bs /\ ds = {}  /* coherency */
    // No more than one same lane as destination 
    & gs : {{},{S1,S3},{S2,S4}} //determines that only these configurations are possible as green signals
    & rpc <: CROSSINGS
    & gpc <: CROSSINGS
    & rpc \/ gpc = CROSSINGS
    & rpc /\ gpc = {}
    & PEDESTRIAN_CROSSINGS[ran(TRANSITIONS[gs])] /\ gpc = {}
INITIALISATION
    rs := {} ||
    os := {} ||
    gs := {} ||
    bs := {} ||
    ds := SIGNALS ||
    rpc := CROSSINGS ||
    gpc := {}
    
OPERATIONS
    
    turn_off =
    BEGIN
        rs := {} ||
        os := {} ||
        gs := {} ||
        bs := {} ||
        ds := SIGNALS
    END;
    
    reset_turn_on = 
    PRE ds = SIGNALS
    THEN
        rs := {} ||
        os := {} ||
        gs := {} ||
        bs := SIGNALS ||
        ds := {}
    END;
    
    start_exploitation = /* moving from all blinking to all orange */
    PRE 
        bs = SIGNALS
    THEN
        bs,os := {}, SIGNALS
    END;
    
    orange_to_red = /* moving from all orange to all red */
    PRE /*Had to change the precondition and the operations because the requirement for the os = {} on red_to_green1 and 2 led to a state where the lights became fixed and couldn't change.*/
        not (os={})
    THEN
        os,rs := {}, rs\/os
    END;
    
    red_to_green1 = // set S1 and S3 to green
    PRE
        gs = {} & {S1,S3} <: rs & os = {} & PEDESTRIAN_CROSSINGS[ran(TRANSITIONS[{S1,S3}])] /\ gpc = {} & (rs-{S1,S3}) \/ os \/ gs \/ {S1,S3} \/ bs \/ ds = SIGNALS
    THEN
        gs := {S1,S3} ||rs := rs-{S1,S3}
    END;
    
    red_to_green2 = // set S2 and S4 to green
    PRE 
        gs = {} & {S2,S4} <: rs & os = {} & PEDESTRIAN_CROSSINGS[ran(TRANSITIONS[{S2,S4}])] /\ gpc = {} & (rs-{S2,S4}) \/ os \/ gs \/ {S2,S4} \/ bs \/ ds = SIGNALS
    THEN
        gs := {S2,S4} ||rs := rs-{S2,S4} 
    END;
    
    green_to_orange = // Set green signals to orange
    PRE
        not(gs={})
    THEN
        os := os \/ gs || gs := {}
    END;
    
    red_to_green = //it breaks the invariant (on purpose)
    PRE not(rs = {})
    THEN gs := rs\/gs || rs := {}
    END;
    
    rpc_to_gpc(cr) = // Turns a red pedestrian light into green
    PRE cr: CROSSINGS & cr : rpc & (rpc-{cr}) \/ (gpc \/ {cr}) = CROSSINGS & ((rpc-{cr}) /\ (gpc \/ {cr})) = {} & (PEDESTRIAN_CROSSINGS~[{cr}] /\ ran(TRANSITIONS[gs])) = {} & PEDESTRIAN_CROSSINGS[ran(TRANSITIONS[gs])] /\ (gpc \/ {cr}) = {} //a rpc can only be turned into a gpc if there are no gs that allow passage through the lanes that intersect with the crossing
    THEN gpc:= gpc \/ {cr} || rpc := rpc-{cr}
    END;
        
    gpc_to_rpc(cr) = // Turns a green pedestrian light into red
    PRE cr: CROSSINGS & cr : gpc
    THEN rpc:= rpc \/ {cr} || gpc := gpc-{cr}
    END    
    
END

MACHINE
    TrafficLights2
SEES 
    CTXtf2
VARIABLES
    rs, /* red signals */
    os, /* orange signals */
    gs, /* green signals */
    bs, /* blinking (orange signals) */
    ds // the lights are off
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
    & gs : {{},{S3},{S1,S2}} //determines that only these configurations are possible as green signals
INITIALISATION
    rs := {} ||
    os := {} ||
    gs := {} ||
    bs := {} ||
    ds := SIGNALS
    
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
    PRE not (os={})
    THEN
        os,rs := {}, rs\/os
    END;
    
    red_to_green1 = // set S3 to green
    PRE
        gs = {} & {S3} <: rs & os = {} & (rs-{S3}) \/ os \/ gs \/ {S3} \/ bs \/ ds = SIGNALS
    THEN
        gs := {S3} ||rs := rs-{S3}
    END;
    
    red_to_green2 = // set S1 and S2 to green
    PRE 
        gs = {} & {S1,S2} <: rs & os = {} & (rs-{S1, S2}) \/ os \/ {S1, S2} \/ bs \/ ds = SIGNALS
    THEN
        gs := {S1,S2} ||rs := rs-{S1,S2} 
    END;
    
    green_to_orange = // Set green signals to orange
    PRE
        not(gs={})
    THEN
        os := os \/ gs || gs := {}
    END
    
    
END

# State_Machine
State Machine Verilog code for Operating Elevator, have two floors :
1. Ground (S0 or S1)
2. First (S0 or S1)
the elevator cannot open when moving, it will only open if it is on some floor.

Parameters: S0 and S1 are the two states, when in = 1 to S0 then out = 0(means door will not open)  and the next state = S1, otherwise out = 1( we are allowed to open tge door) and the state is not changing.

Similarly, if the current state( current floor) is S1 and we are giving an in = 0 then the next state will be S0 and the output will be 0(door will not open) otherwise out = 1 and again the state will not change.

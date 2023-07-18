Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(logic_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(logic_i))==(Machine(logic));
  Level(Implementation(logic_i))==(1);
  Upper_Level(Implementation(logic_i))==(Machine(logic))
END
&
THEORY LoadedStructureX IS
  Implementation(logic_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(logic_i))==(g_types,g_operators,io_constants,lchip_interface,user_ctx,inputs)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(logic_i))==(?);
  Inherited_List_Includes(Implementation(logic_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(logic_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(logic_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(logic_i))==(?);
  Context_List_Variables(Implementation(logic_i))==(?);
  Abstract_List_Variables(Implementation(logic_i))==(board_0_O2,board_0_O1);
  Local_List_Variables(Implementation(logic_i))==(?);
  List_Variables(Implementation(logic_i))==(?);
  External_List_Variables(Implementation(logic_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(logic_i))==(?);
  Abstract_List_VisibleVariables(Implementation(logic_i))==(?);
  External_List_VisibleVariables(Implementation(logic_i))==(?);
  Expanded_List_VisibleVariables(Implementation(logic_i))==(?);
  List_VisibleVariables(Implementation(logic_i))==(relayTime,l3s,l2s,l1s,l3d,l2d,l1d,ctime,board_0_O2,board_0_O1);
  Internal_List_VisibleVariables(Implementation(logic_i))==(relayTime,l3s,l2s,l1s,l3d,l2d,l1d,ctime,board_0_O2,board_0_O1)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(logic_i))==(btrue);
  Expanded_List_Invariant(Implementation(logic_i))==(btrue);
  Abstract_List_Invariant(Implementation(logic_i))==(board_0_O1: uint8_t & board_0_O2: uint8_t);
  Context_List_Invariant(Implementation(logic_i))==(ms_tick: uint32_t & board_0_I1: uint8_t & board_0_I2: uint8_t & board_0_I3: uint8_t);
  List_Invariant(Implementation(logic_i))==(board_0_O1: uint8_t & board_0_O2: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(logic_i))==(btrue);
  Abstract_List_Assertions(Implementation(logic_i))==(btrue);
  Context_List_Assertions(Implementation(logic_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Implementation(logic_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(logic_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(logic_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(logic_i))==((IO_OFF: INT | board_0_O1:=IO_OFF);(IO_OFF: INT | board_0_O2:=IO_OFF);(0: INT | ctime:=0);(0: INT | l1d:=0);(0: INT | l2d:=0);(0: INT | l3d:=0);(IO_OFF: INT | l1s:=IO_OFF);(IO_OFF: INT | l2s:=IO_OFF);(IO_OFF: INT | l3s:=IO_OFF);(51: INT | relayTime:=51));
  Context_List_Initialisation(Implementation(logic_i))==(skip);
  List_Initialisation(Implementation(logic_i))==(board_0_O1:=IO_OFF;board_0_O2:=IO_OFF;ctime:=0;l1d:=0;l2d:=0;l3d:=0;l1s:=IO_OFF;l2s:=IO_OFF;l3s:=IO_OFF;relayTime:=51)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(logic_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(logic_i),Machine(g_types))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(g_operators))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(io_constants))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(lchip_interface))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(user_ctx))==(?);
  List_Instanciated_Parameters(Implementation(logic_i),Machine(inputs))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(logic_i))==(btrue);
  List_Context_Constraints(Implementation(logic_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(logic_i))==(user_logic,supervisor,allLightsGreen,checkAbnormalBehavior,get_board_0_O1,get_board_0_O2);
  List_Operations(Implementation(logic_i))==(user_logic,supervisor,allLightsGreen,checkAbnormalBehavior,get_board_0_O1,get_board_0_O2)
END
&
THEORY ListInputX IS
  List_Input(Implementation(logic_i),user_logic)==(?);
  List_Input(Implementation(logic_i),supervisor)==(i1,i2,i3);
  List_Input(Implementation(logic_i),allLightsGreen)==(i1,i2,i3);
  List_Input(Implementation(logic_i),checkAbnormalBehavior)==(i1,i2,i3);
  List_Input(Implementation(logic_i),get_board_0_O1)==(?);
  List_Input(Implementation(logic_i),get_board_0_O2)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(logic_i),user_logic)==(?);
  List_Output(Implementation(logic_i),supervisor)==(r1,r2);
  List_Output(Implementation(logic_i),allLightsGreen)==(result);
  List_Output(Implementation(logic_i),checkAbnormalBehavior)==(result);
  List_Output(Implementation(logic_i),get_board_0_O1)==(po);
  List_Output(Implementation(logic_i),get_board_0_O2)==(po)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(logic_i),user_logic)==(user_logic);
  List_Header(Implementation(logic_i),supervisor)==(r1,r2 <-- supervisor(i1,i2,i3));
  List_Header(Implementation(logic_i),allLightsGreen)==(result <-- allLightsGreen(i1,i2,i3));
  List_Header(Implementation(logic_i),checkAbnormalBehavior)==(result <-- checkAbnormalBehavior(i1,i2,i3));
  List_Header(Implementation(logic_i),get_board_0_O1)==(po <-- get_board_0_O1);
  List_Header(Implementation(logic_i),get_board_0_O2)==(po <-- get_board_0_O2)
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(logic_i),user_logic)==(btrue);
  List_Precondition(Implementation(logic_i),user_logic)==(btrue);
  Own_Precondition(Implementation(logic_i),supervisor)==(btrue);
  List_Precondition(Implementation(logic_i),supervisor)==(r1: uint8_t & r2: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t & board_0_O2: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t);
  Own_Precondition(Implementation(logic_i),allLightsGreen)==(btrue);
  List_Precondition(Implementation(logic_i),allLightsGreen)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t);
  Own_Precondition(Implementation(logic_i),checkAbnormalBehavior)==(btrue);
  List_Precondition(Implementation(logic_i),checkAbnormalBehavior)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t);
  Own_Precondition(Implementation(logic_i),get_board_0_O1)==(btrue);
  List_Precondition(Implementation(logic_i),get_board_0_O1)==(po: uint8_t);
  Own_Precondition(Implementation(logic_i),get_board_0_O2)==(btrue);
  List_Precondition(Implementation(logic_i),get_board_0_O2)==(po: uint8_t)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(logic_i),get_board_0_O2)==(po: uint8_t & board_0_O2: INT | po:=board_0_O2);
  Expanded_List_Substitution(Implementation(logic_i),get_board_0_O1)==(po: uint8_t & board_0_O1: INT | po:=board_0_O1);
  Expanded_List_Substitution(Implementation(logic_i),checkAbnormalBehavior)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t | (IO_OFF: INT | result:=IO_OFF);@(d1,d2,d3).(@(d1$2).(d1$2: uint32_t ==> d1:=d1$2);@(d2$2).(d2$2: uint32_t ==> d2:=d2$2);@(d3$2).(d3$2: uint32_t ==> d3:=d3$2);(sub_uint32(ctime,l1d): INT & ctime,l1d: dom(sub_uint32) | d1:=sub_uint32(ctime,l1d));(sub_uint32(ctime,l2d): INT & ctime,l2d: dom(sub_uint32) | d2:=sub_uint32(ctime,l2d));(sub_uint32(ctime,l3d): INT & ctime,l3d: dom(sub_uint32) | d3:=sub_uint32(ctime,l3d));(i1 = l1s ==> skip [] not(i1 = l1s) ==> ((i1: INT | l1s:=i1);(ctime: INT | l1d:=ctime);(d1<MINCT ==> ((IO_ON: INT | result:=IO_ON);(ctime: INT | relayTime:=ctime)) [] not(d1<MINCT) ==> skip)));(i2 = l2s ==> skip [] not(i2 = l2s) ==> ((i2: INT | l2s:=i2);(ctime: INT | l2d:=ctime);(d2<MINCT ==> ((IO_ON: INT | result:=IO_ON);(ctime: INT | relayTime:=ctime)) [] not(d2<MINCT) ==> skip)));(i3 = l3s ==> skip [] not(i3 = l3s) ==> ((i3: INT | l3s:=i3);(ctime: INT | l3d:=ctime);(d3<MINCT ==> ((IO_ON: INT | result:=IO_ON);(ctime: INT | relayTime:=ctime)) [] not(d3<MINCT) ==> skip)))));
  Expanded_List_Substitution(Implementation(logic_i),allLightsGreen)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t | (board_0_O1: INT | result:=board_0_O1);(i1 = IO_ON ==> (i2 = IO_ON ==> (i3 = IO_ON ==> (IO_ON: INT | result:=IO_ON) [] not(i3 = IO_ON) ==> skip) [] not(i2 = IO_ON) ==> skip) [] not(i1 = IO_ON) ==> skip));
  Expanded_List_Substitution(Implementation(logic_i),supervisor)==(r1: uint8_t & r2: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t & board_0_O2: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t | (r1: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t | i1 = IO_ON ==> (i2 = IO_ON ==> (i3 = IO_ON ==> r1:=IO_ON [] not(i3 = IO_ON) ==> r1:=board_0_O1) [] not(i2 = IO_ON) ==> r1:=board_0_O1) [] not(i1 = IO_ON) ==> r1:=board_0_O1);@dslc.(@(dslc$2).(dslc$2: uint32_t ==> dslc:=dslc$2);(sub_uint32(ctime,relayTime): INT & ctime,relayTime: dom(sub_uint32) | dslc:=sub_uint32(ctime,relayTime));(board_0_O2 = IO_ON ==> (dslc<1000 ==> (board_0_O2: INT | r2:=board_0_O2) [] not(dslc<1000) ==> (r2: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t | @(result$0).(result$0: uint8_t ==> r2:=result$0) || @(l1d$0).(l1d$0: uint32_t ==> l1d:=l1d$0) || @(l2d$0).(l2d$0: uint32_t ==> l2d:=l2d$0) || @(l3d$0).(l3d$0: uint32_t ==> l3d:=l3d$0) || @(l1s$0).(l1s$0: uint8_t ==> l1s:=l1s$0) || @(l2s$0).(l2s$0: uint8_t ==> l2s:=l2s$0) || @(l3s$0).(l3s$0: uint8_t ==> l3s:=l3s$0) || @(relayTime$0).(relayTime$0: uint32_t ==> relayTime:=relayTime$0))) [] not(board_0_O2 = IO_ON) ==> (r2: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t | @(result$0).(result$0: uint8_t ==> r2:=result$0) || @(l1d$0).(l1d$0: uint32_t ==> l1d:=l1d$0) || @(l2d$0).(l2d$0: uint32_t ==> l2d:=l2d$0) || @(l3d$0).(l3d$0: uint32_t ==> l3d:=l3d$0) || @(l1s$0).(l1s$0: uint8_t ==> l1s:=l1s$0) || @(l2s$0).(l2s$0: uint8_t ==> l2s:=l2s$0) || @(l3s$0).(l3s$0: uint8_t ==> l3s:=l3s$0) || @(relayTime$0).(relayTime$0: uint32_t ==> relayTime:=relayTime$0)))));
  Expanded_List_Substitution(Implementation(logic_i),user_logic)==(btrue | (ctime: uint32_t | ctime:=ms_tick);@(i1_,i2_,i3_).(@(i1_$2).(i1_$2: uint8_t ==> i1_:=i1_$2);@(i2_$2).(i2_$2: uint8_t ==> i2_:=i2_$2);@(i3_$2).(i3_$2: uint8_t ==> i3_:=i3_$2);(i1_: uint8_t | i1_:=board_0_I1);(i2_: uint8_t | i2_:=board_0_I2);(i3_: uint8_t | i3_:=board_0_I3);(board_0_O1: uint8_t & board_0_O2: uint8_t & i1_: uint8_t & i2_: uint8_t & i3_: uint8_t & board_0_O1: uint8_t & board_0_O2: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t | @(r1$0).(r1$0: uint8_t ==> board_0_O1:=r1$0) || @(r2$0).(r2$0: uint8_t ==> board_0_O2:=r2$0))));
  List_Substitution(Implementation(logic_i),user_logic)==(ctime <-- get_ms_tick;VAR i1_,i2_,i3_ IN i1_: (i1_: uint8_t);i2_: (i2_: uint8_t);i3_: (i3_: uint8_t);i1_ <-- get_board_0_I1;i2_ <-- get_board_0_I2;i3_ <-- get_board_0_I3;board_0_O1,board_0_O2 <-- supervisor(i1_,i2_,i3_) END);
  List_Substitution(Implementation(logic_i),supervisor)==(r1 <-- allLightsGreen(i1,i2,i3);VAR dslc IN dslc: (dslc: uint32_t);dslc:=sub_uint32(ctime,relayTime);IF board_0_O2 = IO_ON THEN IF dslc<1000 THEN r2:=board_0_O2 ELSE r2 <-- checkAbnormalBehavior(i1,i2,i3) END ELSE r2 <-- checkAbnormalBehavior(i1,i2,i3) END END);
  List_Substitution(Implementation(logic_i),allLightsGreen)==(result:=board_0_O1;IF i1 = IO_ON THEN IF i2 = IO_ON THEN IF i3 = IO_ON THEN result:=IO_ON END END END);
  List_Substitution(Implementation(logic_i),checkAbnormalBehavior)==(result:=IO_OFF;VAR d1,d2,d3 IN d1: (d1: uint32_t);d2: (d2: uint32_t);d3: (d3: uint32_t);d1:=sub_uint32(ctime,l1d);d2:=sub_uint32(ctime,l2d);d3:=sub_uint32(ctime,l3d);IF i1 = l1s THEN skip ELSE l1s:=i1;l1d:=ctime;IF d1<MINCT THEN result:=IO_ON;relayTime:=ctime END END;IF i2 = l2s THEN skip ELSE l2s:=i2;l2d:=ctime;IF d2<MINCT THEN result:=IO_ON;relayTime:=ctime END END;IF i3 = l3s THEN skip ELSE l3s:=i3;l3d:=ctime;IF d3<MINCT THEN result:=IO_ON;relayTime:=ctime END END END);
  List_Substitution(Implementation(logic_i),get_board_0_O1)==(po:=board_0_O1);
  List_Substitution(Implementation(logic_i),get_board_0_O2)==(po:=board_0_O2)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(logic_i))==(?);
  Inherited_List_Constants(Implementation(logic_i))==(?);
  List_Constants(Implementation(logic_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(logic_i))==(?);
  Context_List_Defered(Implementation(logic_i))==(?);
  Context_List_Sets(Implementation(logic_i))==(?);
  List_Own_Enumerated(Implementation(logic_i))==(?);
  List_Valuable_Sets(Implementation(logic_i))==(?);
  Inherited_List_Enumerated(Implementation(logic_i))==(?);
  Inherited_List_Defered(Implementation(logic_i))==(?);
  Inherited_List_Sets(Implementation(logic_i))==(?);
  List_Enumerated(Implementation(logic_i))==(?);
  List_Defered(Implementation(logic_i))==(?);
  List_Sets(Implementation(logic_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(logic_i))==(?);
  Expanded_List_HiddenConstants(Implementation(logic_i))==(?);
  List_HiddenConstants(Implementation(logic_i))==(?);
  External_List_HiddenConstants(Implementation(logic_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(logic_i))==(btrue);
  Context_List_Properties(Implementation(logic_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE} & bitwise_sll_uint32: uint32_t*uint8_t --> uint32_t & bitwise_srl_uint32: uint32_t*uint8_t --> uint32_t & bitwise_not_uint32: uint32_t --> uint32_t & bitwise_and_uint32: uint32_t*uint32_t --> uint32_t & bitwise_xor_uint32: uint32_t*uint32_t --> uint32_t & bitwise_or_uint32: uint32_t*uint32_t --> uint32_t & bitwise_sll_uint16: uint16_t*uint8_t --> uint16_t & bitwise_srl_uint16: uint16_t*uint8_t --> uint16_t & bitwise_not_uint16: uint16_t --> uint16_t & bitwise_and_uint16: uint16_t*uint16_t --> uint16_t & bitwise_xor_uint16: uint16_t*uint16_t --> uint16_t & bitwise_or_uint16: uint16_t*uint16_t --> uint16_t & bitwise_sll_uint8: uint8_t*uint8_t --> uint8_t & bitwise_srl_uint8: uint8_t*uint8_t --> uint8_t & bitwise_not_uint8: uint8_t --> uint8_t & bitwise_and_uint8: uint8_t*uint8_t --> uint8_t & bitwise_xor_uint8: uint8_t*uint8_t --> uint8_t & bitwise_or_uint8: uint8_t*uint8_t --> uint8_t & add_uint32: uint32_t*uint32_t --> uint32_t & sub_uint32: uint32_t*uint32_t --> uint32_t & mul_uint32: uint32_t*uint32_t --> uint32_t & add_uint16: uint16_t*uint16_t --> uint16_t & sub_uint16: uint16_t*uint16_t --> uint16_t & mul_uint16: uint16_t*uint16_t --> uint16_t & add_uint8: uint8_t*uint8_t --> uint8_t & sub_uint8: uint8_t*uint8_t --> uint8_t & mul_uint8: uint8_t*uint8_t --> uint8_t & bitwise_sll_uint32 = %(x1,x2).(x1: uint32_t & x2: uint8_t | x1*2**x2 mod (MAX_UINT32+1)) & bitwise_sll_uint16 = %(x1,x2).(x1: uint16_t & x2: uint8_t | x1*2**x2 mod (MAX_UINT16+1)) & bitwise_sll_uint8 = %(x1,x2).(x1: uint8_t & x2: uint8_t | x1*2**x2 mod (MAX_UINT8+1)) & bitwise_srl_uint32 = %(x1,x2).(x1: uint32_t & x2: uint8_t | x1/2**x2) & bitwise_srl_uint16 = %(x1,x2).(x1: uint16_t & x2: uint8_t | x1/2**x2) & bitwise_srl_uint8 = %(x1,x2).(x1: uint8_t & x2: uint8_t | x1/2**x2) & add_uint32 = %(x1,x2).(x1: uint32_t & x2: uint32_t | (x1+x2) mod (MAX_UINT32+1)) & sub_uint32 = %(x1,x2).(x1: uint32_t & x2: uint32_t | (x1-x2+MAX_UINT32+1) mod (MAX_UINT32+1)) & mul_uint32 = %(x1,x2).(x1: uint32_t & x2: uint32_t | x1*x2 mod (MAX_UINT32+1)) & add_uint16 = %(y1,y2).(y1: uint16_t & y2: uint16_t | (y1+y2) mod (MAX_UINT16+1)) & sub_uint16 = %(y1,y2).(y1: uint16_t & y2: uint16_t | (y1-y2+MAX_UINT16+1) mod (MAX_UINT16+1)) & mul_uint16 = %(y1,y2).(y1: uint16_t & y2: uint16_t | y1*y2 mod (MAX_UINT16+1)) & add_uint8 = %(y1,y2).(y1: uint8_t & y2: uint8_t | (y1+y2) mod (MAX_UINT8+1)) & sub_uint8 = %(y1,y2).(y1: uint8_t & y2: uint8_t | (y1-y2+MAX_UINT8+1) mod (MAX_UINT8+1)) & mul_uint8 = %(y1,y2).(y1: uint8_t & y2: uint8_t | y1*y2 mod (MAX_UINT8+1)) & !(ui1,ui2).(ui1: uint16_t & ui2: uint16_t => bitwise_and_uint16(ui1|->ui2)<=ui2) & !(ui1,ui2).(ui1: uint32_t & ui2: uint32_t => bitwise_and_uint32(ui1|->ui2)<=ui2) & TIME = uint32_t & IO_STATE = uint8_t & IO_ON: uint8_t & IO_OFF: uint8_t & IO_ON/=IO_OFF & IO_ON: IO_STATE & IO_OFF: IO_STATE & MINCT: uint32_t & MINRY: uint32_t);
  Inherited_List_Properties(Implementation(logic_i))==(btrue);
  List_Properties(Implementation(logic_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(logic_i))==(aa: aa);
  List_Values(Implementation(logic_i))==(?)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3);
  Seen_Context_List_Enumerated(Implementation(logic_i))==(?);
  Seen_Context_List_Invariant(Implementation(logic_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(logic_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  Seen_Context_List_Properties(Implementation(logic_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE} & MAX_NB_MODULES: uint8_t & MAX_NB_INPUTS: uint8_t & MAX_NB_OUTPUTS: uint8_t & MAX_NB_MODULES = 1 & MAX_NB_INPUTS = 3 & MAX_NB_OUTPUTS = 2 & TIME = uint32_t & IO_STATE = uint8_t & IO_ON: uint8_t & IO_OFF: uint8_t & IO_ON/=IO_OFF & IO_ON: IO_STATE & IO_OFF: IO_STATE);
  Seen_List_Constraints(Implementation(logic_i))==(btrue);
  Seen_List_Precondition(Implementation(logic_i),get_board_0_I3)==(po: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_board_0_I3)==(po:=board_0_I3);
  Seen_List_Precondition(Implementation(logic_i),get_board_0_I2)==(po: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_board_0_I2)==(po:=board_0_I2);
  Seen_List_Precondition(Implementation(logic_i),get_board_0_I1)==(po: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_board_0_I1)==(po:=board_0_I1);
  Seen_List_Precondition(Implementation(logic_i),read_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(logic_i),read_inputs)==(@(board_0_I1$0).(board_0_I1$0: uint8_t ==> board_0_I1:=board_0_I1$0) || @(board_0_I2$0).(board_0_I2$0: uint8_t ==> board_0_I2:=board_0_I2$0) || @(board_0_I3$0).(board_0_I3$0: uint8_t ==> board_0_I3:=board_0_I3$0));
  Seen_List_Operations(Implementation(logic_i),Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(inputs))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(user_ctx))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(user_ctx))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(user_ctx))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_replica_id,get_processor_id,get_ms_tick,print_uint8);
  Seen_List_Precondition(Implementation(logic_i),print_uint8)==(tag: uint8_t & value: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),print_uint8)==(skip);
  Seen_List_Precondition(Implementation(logic_i),get_ms_tick)==(out: uint32_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_ms_tick)==(out:=ms_tick);
  Seen_List_Precondition(Implementation(logic_i),get_processor_id)==(out: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_processor_id)==(@(out$0).(out$0: uint8_t ==> out:=out$0));
  Seen_List_Precondition(Implementation(logic_i),get_replica_id)==(out: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),get_replica_id)==(@(out$0).(out$0: uint8_t ==> out:=out$0));
  Seen_List_Precondition(Implementation(logic_i),write_global_output)==(output_id: uint8_t & output_id<MAX_NB_OUTPUTS & state: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),write_global_output)==(skip);
  Seen_List_Precondition(Implementation(logic_i),read_global_input)==(input_id: uint8_t & input_id<MAX_NB_INPUTS & state: uint8_t);
  Seen_Expanded_List_Substitution(Implementation(logic_i),read_global_input)==(@(state$1).(state$1: uint8_t & (state$1 = IO_ON or state$1 = IO_OFF) ==> state:=state$1));
  Seen_List_Precondition(Implementation(logic_i),print_global_inputs)==(btrue);
  Seen_Expanded_List_Substitution(Implementation(logic_i),print_global_inputs)==(skip);
  Seen_List_Operations(Implementation(logic_i),Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_replica_id,get_processor_id,get_ms_tick,print_uint8);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(lchip_interface))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(io_constants))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(io_constants))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(io_constants))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(g_operators))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(g_operators))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(g_operators))==(btrue);
  Seen_Internal_List_Operations(Implementation(logic_i),Machine(g_types))==(?);
  Seen_List_Operations(Implementation(logic_i),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Implementation(logic_i),Machine(g_types))==(btrue)
END
&
THEORY ListIncludedOperationsX IS
  List_Included_Operations(Implementation(logic_i),Machine(inputs))==(read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3);
  List_Included_Operations(Implementation(logic_i),Machine(lchip_interface))==(print_global_inputs,read_global_input,write_global_output,get_replica_id,get_processor_id,get_ms_tick,print_uint8)
END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(logic_i))==(Type(board_0_O1) == Mvv(btype(INTEGER,?,?));Type(board_0_O2) == Mvv(btype(INTEGER,?,?));Type(ctime) == Mvv(btype(INTEGER,?,?));Type(l1d) == Mvv(btype(INTEGER,?,?));Type(l2d) == Mvv(btype(INTEGER,?,?));Type(l3d) == Mvv(btype(INTEGER,?,?));Type(l1s) == Mvv(btype(INTEGER,?,?));Type(l2s) == Mvv(btype(INTEGER,?,?));Type(l3s) == Mvv(btype(INTEGER,?,?));Type(relayTime) == Mvv(btype(INTEGER,?,?)));
  Operations(Implementation(logic_i))==(Type(get_board_0_O2) == Cst(btype(INTEGER,?,?),No_type);Type(get_board_0_O1) == Cst(btype(INTEGER,?,?),No_type);Type(user_logic) == Cst(No_type,No_type))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(logic_i),Machine(user_ctx))==(MINCT,MINRY);
  List_Constants_Env(Implementation(logic_i),Machine(user_ctx))==(Type(MINCT) == Cst(btype(INTEGER,?,?));Type(MINRY) == Cst(btype(INTEGER,?,?)));
  List_Constants(Implementation(logic_i),Machine(io_constants))==(IO_ON,IO_OFF);
  List_Constants_Env(Implementation(logic_i),Machine(io_constants))==(Type(IO_ON) == Cst(btype(INTEGER,?,?));Type(IO_OFF) == Cst(btype(INTEGER,?,?)));
  List_Constants(Implementation(logic_i),Machine(g_operators))==(bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8);
  List_Constants_Env(Implementation(logic_i),Machine(g_operators))==(Type(bitwise_sll_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_srl_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_not_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_and_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_xor_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_or_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(bitwise_sll_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_srl_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_not_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_and_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_xor_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_or_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(bitwise_sll_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_srl_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_not_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_and_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_xor_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(bitwise_or_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(add_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(sub_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(mul_uint32) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")*btype(INTEGER,"[uint32_t","]uint32_t")));Type(add_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(sub_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(mul_uint16) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")*btype(INTEGER,"[uint16_t","]uint16_t")));Type(add_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(sub_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")));Type(mul_uint8) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t")*btype(INTEGER,"[uint8_t","]uint8_t"))));
  List_Constants(Implementation(logic_i),Machine(g_types))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Constants_Env(Implementation(logic_i),Machine(g_types))==(Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(logic_i)) == (? | ? | ? | ? | user_logic,supervisor,allLightsGreen,checkAbnormalBehavior,get_board_0_O1,get_board_0_O2,refinement_of_checkAbnormalBehavior,refinement_of_allLightsGreen,refinement_of_supervisor | ? | seen(Machine(g_types)),seen(Machine(g_operators)),seen(Machine(io_constants)),seen(Machine(lchip_interface)),seen(Machine(user_ctx)),seen(Machine(inputs)) | ? | logic_i);
  List_Of_HiddenCst_Ids(Implementation(logic_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(logic_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(logic_i)) == (relayTime,l3s,l2s,l1s,l3d,l2d,l1d,ctime,board_0_O2,board_0_O1 | ?);
  List_Of_Ids_SeenBNU(Implementation(logic_i)) == (?: ?);
  List_Of_Ids(Machine(inputs)) == (? | ? | board_0_I3,board_0_I2,board_0_I1 | ? | read_inputs,get_board_0_I1,get_board_0_I2,get_board_0_I3 | ? | seen(Machine(g_types)) | ? | inputs);
  List_Of_HiddenCst_Ids(Machine(inputs)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(inputs)) == (?);
  List_Of_VisibleVar_Ids(Machine(inputs)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(inputs)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?);
  List_Of_Ids(Machine(user_ctx)) == (MINCT,MINRY | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | user_ctx);
  List_Of_HiddenCst_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(user_ctx)) == (MINCT,MINRY);
  List_Of_VisibleVar_Ids(Machine(user_ctx)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(user_ctx)) == (?: ?);
  List_Of_Ids(Machine(lchip_interface)) == (? | ? | ms_tick | ? | print_global_inputs,read_global_input,write_global_output,get_replica_id,get_processor_id,get_ms_tick,print_uint8 | ? | seen(Machine(g_types)),seen(Machine(lchip_configuration)),seen(Machine(io_constants)) | ? | lchip_interface);
  List_Of_HiddenCst_Ids(Machine(lchip_interface)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(lchip_interface)) == (?);
  List_Of_VisibleVar_Ids(Machine(lchip_interface)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(lchip_interface)) == (?: ?);
  List_Of_Ids(Machine(io_constants)) == (IO_ON,IO_OFF | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | io_constants);
  List_Of_HiddenCst_Ids(Machine(io_constants)) == (IO_STATE,TIME | ?);
  List_Of_VisibleCst_Ids(Machine(io_constants)) == (IO_ON,IO_OFF);
  List_Of_VisibleVar_Ids(Machine(io_constants)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(io_constants)) == (?: ?);
  List_Of_Ids(Machine(lchip_configuration)) == (MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | lchip_configuration);
  List_Of_HiddenCst_Ids(Machine(lchip_configuration)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(lchip_configuration)) == (MAX_NB_MODULES,MAX_NB_INPUTS,MAX_NB_OUTPUTS);
  List_Of_VisibleVar_Ids(Machine(lchip_configuration)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(lchip_configuration)) == (?: ?);
  List_Of_Ids(Machine(g_operators)) == (bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8 | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | g_operators);
  List_Of_HiddenCst_Ids(Machine(g_operators)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(g_operators)) == (bitwise_sll_uint32,bitwise_srl_uint32,bitwise_not_uint32,bitwise_and_uint32,bitwise_xor_uint32,bitwise_or_uint32,bitwise_sll_uint16,bitwise_srl_uint16,bitwise_not_uint16,bitwise_and_uint16,bitwise_xor_uint16,bitwise_or_uint16,bitwise_sll_uint8,bitwise_srl_uint8,bitwise_not_uint8,bitwise_and_uint8,bitwise_xor_uint8,bitwise_or_uint8,add_uint32,sub_uint32,mul_uint32,add_uint16,sub_uint16,mul_uint16,add_uint8,sub_uint8,mul_uint8);
  List_Of_VisibleVar_Ids(Machine(g_operators)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_operators)) == (?: ?)
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(logic_i)) == (Type(relayTime) == Mvv(btype(INTEGER,?,?));Type(l3s) == Mvv(btype(INTEGER,?,?));Type(l2s) == Mvv(btype(INTEGER,?,?));Type(l1s) == Mvv(btype(INTEGER,?,?));Type(l3d) == Mvv(btype(INTEGER,?,?));Type(l2d) == Mvv(btype(INTEGER,?,?));Type(l1d) == Mvv(btype(INTEGER,?,?));Type(ctime) == Mvv(btype(INTEGER,?,?));Type(board_0_O2) == Mvv(btype(INTEGER,?,?));Type(board_0_O1) == Mvv(btype(INTEGER,?,?)))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(logic_i),user_logic, 1) == (Type(i1_) == Lvl(btype(INTEGER,?,?));Type(i2_) == Lvl(btype(INTEGER,?,?));Type(i3_) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(logic_i),supervisor, 1) == (Type(dslc) == Lvl(btype(INTEGER,?,?)));
  Variables_Loc(Implementation(logic_i),checkAbnormalBehavior, 1) == (Type(d1) == Lvl(btype(INTEGER,?,?));Type(d2) == Lvl(btype(INTEGER,?,?));Type(d3) == Lvl(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  bxml_with_b0_typing == OK;
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(logic_i))==(supervisor,allLightsGreen,checkAbnormalBehavior)
END
&
THEORY ListLocalInputX IS
  List_Local_Input(Implementation(logic_i),supervisor)==(i1,i2,i3);
  List_Local_Input(Implementation(logic_i),allLightsGreen)==(i1,i2,i3);
  List_Local_Input(Implementation(logic_i),checkAbnormalBehavior)==(i1,i2,i3)
END
&
THEORY ListLocalOutputX IS
  List_Local_Output(Implementation(logic_i),supervisor)==(r1,r2);
  List_Local_Output(Implementation(logic_i),allLightsGreen)==(result);
  List_Local_Output(Implementation(logic_i),checkAbnormalBehavior)==(result)
END
&
THEORY ListLocalHeaderX IS
  List_Local_Header(Implementation(logic_i),supervisor)==(r1,r2 <-- supervisor(i1,i2,i3));
  List_Local_Header(Implementation(logic_i),allLightsGreen)==(result <-- allLightsGreen(i1,i2,i3));
  List_Local_Header(Implementation(logic_i),checkAbnormalBehavior)==(result <-- checkAbnormalBehavior(i1,i2,i3))
END
&
THEORY ListLocalPreconditionX IS
  List_Local_Precondition(Implementation(logic_i),supervisor)==(r1: uint8_t & r2: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t & board_0_O2: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t);
  List_Local_Precondition(Implementation(logic_i),allLightsGreen)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t);
  List_Local_Precondition(Implementation(logic_i),checkAbnormalBehavior)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t)
END
&
THEORY ListLocalSubstitutionX IS
  Expanded_List_Local_Substitution(Implementation(logic_i),checkAbnormalBehavior)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t | @(result$0).(result$0: uint8_t ==> result:=result$0) || @(l1d$0).(l1d$0: uint32_t ==> l1d:=l1d$0) || @(l2d$0).(l2d$0: uint32_t ==> l2d:=l2d$0) || @(l3d$0).(l3d$0: uint32_t ==> l3d:=l3d$0) || @(l1s$0).(l1s$0: uint8_t ==> l1s:=l1s$0) || @(l2s$0).(l2s$0: uint8_t ==> l2s:=l2s$0) || @(l3s$0).(l3s$0: uint8_t ==> l3s:=l3s$0) || @(relayTime$0).(relayTime$0: uint32_t ==> relayTime:=relayTime$0));
  Expanded_List_Local_Substitution(Implementation(logic_i),allLightsGreen)==(result: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t | i1 = IO_ON ==> (i2 = IO_ON ==> (i3 = IO_ON ==> result:=IO_ON [] not(i3 = IO_ON) ==> result:=board_0_O1) [] not(i2 = IO_ON) ==> result:=board_0_O1) [] not(i1 = IO_ON) ==> result:=board_0_O1);
  Expanded_List_Local_Substitution(Implementation(logic_i),supervisor)==(r1: uint8_t & r2: uint8_t & i1: uint8_t & i2: uint8_t & i3: uint8_t & board_0_O1: uint8_t & board_0_O2: uint8_t & ctime: uint32_t & l1d: uint32_t & l2d: uint32_t & l3d: uint32_t & l1s: uint8_t & l2s: uint8_t & l3s: uint8_t & relayTime: uint32_t | @(r1$0).(r1$0: uint8_t ==> r1:=r1$0) || @(r2$0).(r2$0: uint8_t ==> r2:=r2$0));
  List_Local_Substitution(Implementation(logic_i),supervisor)==(r1:: uint8_t || r2:: uint8_t);
  List_Local_Substitution(Implementation(logic_i),allLightsGreen)==(IF i1 = IO_ON THEN IF i2 = IO_ON THEN IF i3 = IO_ON THEN result:=IO_ON ELSE result:=board_0_O1 END ELSE result:=board_0_O1 END ELSE result:=board_0_O1 END);
  List_Local_Substitution(Implementation(logic_i),checkAbnormalBehavior)==(result:: uint8_t || l1d:: uint32_t || l2d:: uint32_t || l3d:: uint32_t || l1s:: uint8_t || l2s:: uint8_t || l3s:: uint8_t || relayTime:: uint32_t)
END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(logic_i))==(board_0_O1: INTEGER & board_0_O2: INTEGER & ctime: INTEGER & l1d: INTEGER & l2d: INTEGER & l3d: INTEGER & l1s: INTEGER & l2s: INTEGER & l3s: INTEGER & relayTime: INTEGER)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX IS
  LocalOp_Expanded_Invariant(Implementation(logic_i),checkAbnormalBehavior)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),allLightsGreen)==(btrue);
  LocalOp_Expanded_Invariant(Implementation(logic_i),supervisor)==(btrue)
END
)

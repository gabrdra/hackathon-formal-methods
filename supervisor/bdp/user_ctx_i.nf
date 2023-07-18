Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(user_ctx_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(user_ctx_i))==(Machine(user_ctx));
  Level(Implementation(user_ctx_i))==(1);
  Upper_Level(Implementation(user_ctx_i))==(Machine(user_ctx))
END
&
THEORY LoadedStructureX IS
  Implementation(user_ctx_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(user_ctx_i))==(g_types)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(user_ctx_i))==(?);
  Inherited_List_Includes(Implementation(user_ctx_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(user_ctx_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(user_ctx_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(user_ctx_i))==(?);
  Context_List_Variables(Implementation(user_ctx_i))==(?);
  Abstract_List_Variables(Implementation(user_ctx_i))==(?);
  Local_List_Variables(Implementation(user_ctx_i))==(?);
  List_Variables(Implementation(user_ctx_i))==(?);
  External_List_Variables(Implementation(user_ctx_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(user_ctx_i))==(?);
  Abstract_List_VisibleVariables(Implementation(user_ctx_i))==(?);
  External_List_VisibleVariables(Implementation(user_ctx_i))==(?);
  Expanded_List_VisibleVariables(Implementation(user_ctx_i))==(?);
  List_VisibleVariables(Implementation(user_ctx_i))==(?);
  Internal_List_VisibleVariables(Implementation(user_ctx_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(user_ctx_i))==(btrue);
  Expanded_List_Invariant(Implementation(user_ctx_i))==(btrue);
  Abstract_List_Invariant(Implementation(user_ctx_i))==(btrue);
  Context_List_Invariant(Implementation(user_ctx_i))==(btrue);
  List_Invariant(Implementation(user_ctx_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(user_ctx_i))==(btrue);
  Abstract_List_Assertions(Implementation(user_ctx_i))==(btrue);
  Context_List_Assertions(Implementation(user_ctx_i))==(Convert_Bool: BOOL +-> uint8_t & Convert_Bool: BOOL +-> uint16_t & Convert_Bool: BOOL +-> uint32_t);
  List_Assertions(Implementation(user_ctx_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(user_ctx_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(user_ctx_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(user_ctx_i))==(skip);
  Context_List_Initialisation(Implementation(user_ctx_i))==(skip);
  List_Initialisation(Implementation(user_ctx_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(user_ctx_i))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Implementation(user_ctx_i),Machine(g_types))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(user_ctx_i))==(btrue);
  List_Context_Constraints(Implementation(user_ctx_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(user_ctx_i))==(?);
  List_Operations(Implementation(user_ctx_i))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(user_ctx_i))==(MINCT,MINRY);
  Inherited_List_Constants(Implementation(user_ctx_i))==(MINCT,MINRY);
  List_Constants(Implementation(user_ctx_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(user_ctx_i))==(?);
  Context_List_Defered(Implementation(user_ctx_i))==(?);
  Context_List_Sets(Implementation(user_ctx_i))==(?);
  List_Own_Enumerated(Implementation(user_ctx_i))==(?);
  List_Valuable_Sets(Implementation(user_ctx_i))==(?);
  Inherited_List_Enumerated(Implementation(user_ctx_i))==(?);
  Inherited_List_Defered(Implementation(user_ctx_i))==(?);
  Inherited_List_Sets(Implementation(user_ctx_i))==(?);
  List_Enumerated(Implementation(user_ctx_i))==(?);
  List_Defered(Implementation(user_ctx_i))==(?);
  List_Sets(Implementation(user_ctx_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(user_ctx_i))==(?);
  Expanded_List_HiddenConstants(Implementation(user_ctx_i))==(?);
  List_HiddenConstants(Implementation(user_ctx_i))==(?);
  External_List_HiddenConstants(Implementation(user_ctx_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(user_ctx_i))==(MINCT: uint32_t & MINRY: uint32_t);
  Context_List_Properties(Implementation(user_ctx_i))==(uint32_t = 0..4294967295 & uint16_t = 0..65535 & uint8_t = 0..255 & STRUE: uint8_t & SFALSE: uint8_t & MAX_UINT32: uint32_t & MAX_UINT16: uint16_t & MAX_UINT8: uint8_t & STRUE: 0..MAX_UINT8 & SFALSE: 0..MAX_UINT8 & STRUE/=SFALSE & SBOOL = {STRUE,SFALSE} & STRUE<=2 & SFALSE<=2 & MAX_UINT32 = 4294967295 & MAX_UINT16 = 65535 & MAX_UINT8 = 255 & Convert_Bool = {TRUE|->STRUE,FALSE|->SFALSE});
  Inherited_List_Properties(Implementation(user_ctx_i))==(btrue);
  List_Properties(Implementation(user_ctx_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(user_ctx_i))==(btrue);
  Values_Subs(Implementation(user_ctx_i))==(MINCT,MINRY: 5000,51);
  List_Values(Implementation(user_ctx_i))==(MINCT = 5000;MINRY = 51)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Implementation(user_ctx_i),Machine(g_types))==(?);
  Seen_Context_List_Enumerated(Implementation(user_ctx_i))==(?);
  Seen_Context_List_Invariant(Implementation(user_ctx_i))==(btrue);
  Seen_Context_List_Assertions(Implementation(user_ctx_i))==(btrue);
  Seen_Context_List_Properties(Implementation(user_ctx_i))==(btrue);
  Seen_List_Constraints(Implementation(user_ctx_i))==(btrue);
  Seen_List_Operations(Implementation(user_ctx_i),Machine(g_types))==(?);
  Seen_Expanded_List_Invariant(Implementation(user_ctx_i),Machine(g_types))==(btrue)
END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Constants(Implementation(user_ctx_i))==(Type(MINCT) == Cst(btype(INTEGER,?,?));Type(MINRY) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX IS
  List_Constants(Implementation(user_ctx_i),Machine(g_types))==(uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Constants_Env(Implementation(user_ctx_i),Machine(g_types))==(Type(uint32_t) == Cst(SetOf(btype(INTEGER,"[uint32_t","]uint32_t")));Type(uint16_t) == Cst(SetOf(btype(INTEGER,"[uint16_t","]uint16_t")));Type(uint8_t) == Cst(SetOf(btype(INTEGER,"[uint8_t","]uint8_t")));Type(STRUE) == Cst(btype(INTEGER,?,?));Type(SFALSE) == Cst(btype(INTEGER,?,?));Type(MAX_UINT32) == Cst(btype(INTEGER,?,?));Type(MAX_UINT16) == Cst(btype(INTEGER,?,?));Type(MAX_UINT8) == Cst(btype(INTEGER,?,?)))
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(user_ctx_i)) == (? | ? | ? | ? | ? | ? | seen(Machine(g_types)) | ? | user_ctx_i);
  List_Of_HiddenCst_Ids(Implementation(user_ctx_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(user_ctx_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(user_ctx_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(user_ctx_i)) == (?: ?);
  List_Of_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8 | ? | ? | ? | ? | ? | ? | ? | g_types);
  List_Of_HiddenCst_Ids(Machine(g_types)) == (SBOOL,Convert_Bool | ?);
  List_Of_VisibleCst_Ids(Machine(g_types)) == (uint32_t,uint16_t,uint8_t,STRUE,SFALSE,MAX_UINT32,MAX_UINT16,MAX_UINT8);
  List_Of_VisibleVar_Ids(Machine(g_types)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(g_types)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(user_ctx_i)) == (Type(MINRY) == Cst(btype(INTEGER,?,?));Type(MINCT) == Cst(btype(INTEGER,?,?)))
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
  List_Local_Operations(Implementation(user_ctx_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(user_ctx_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)

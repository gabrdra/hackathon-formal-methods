#include "c4b_constants.h"

// Used to get struc_safety_variables size
#include "c4b_safety_variables.h"
volatile const uint32_t SECTION_C4B_STRUCT_SAFETY_VARIABLES_SIZE struct_safety_variables_size_minus_1 = sizeof(struct_safety_variables)-1;

volatile const struct_constants SECTION_C4B_GLOBAL_CONSTANTS global_constants = {
	.co_STRUE = STRUE,
	.co_SFALSE = SFALSE,
	.co_MAX_UINT32 = MAX_UINT32,
	.co_MAX_UINT16 = MAX_UINT16,
	.co_MAX_UINT8 = MAX_UINT8,
	.co_NB_MODULES = NB_MODULES,
	.co_NB_INPUTS = NB_INPUTS,
	.co_NB_OUTPUTS = NB_OUTPUTS,
	.co_module_secu_ids = {986880},
	.co_module_nb_inputs = {3},
	.co_module_nb_outputs = {2},
	.co_input_module_ids = {0,0,0},
	.co_input_local_ids = {0,1,2},
	.co_output_module_ids = {0,0},
	.co_output_local_ids = {0,1},
	.co_MINCT = MINCT,
	.co_MINRY = MINRY,
};

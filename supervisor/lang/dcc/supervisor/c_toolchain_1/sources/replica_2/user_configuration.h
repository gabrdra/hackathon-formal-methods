#ifndef _user_configuration_h
#define _user_configuration_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"
#include "lchip_configuration.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
#include "c4b_constants.h"
#define NB_MODULES 1
#define NB_INPUTS 3
#define NB_OUTPUTS 2
#define module_secu_ids global_constants.co_module_secu_ids
#define module_nb_inputs global_constants.co_module_nb_inputs
#define module_nb_outputs global_constants.co_module_nb_outputs
#define input_module_ids global_constants.co_input_module_ids
#define input_local_ids global_constants.co_input_local_ids
#define output_module_ids global_constants.co_output_module_ids
#define output_local_ids global_constants.co_output_local_ids
/* Basic constants */
/* Array and record constants */
extern void SECTION_C4B_FUNCTION user_configuration__initialisation(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _user_configuration_h */

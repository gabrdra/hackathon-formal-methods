#ifndef _logic_h
#define _logic_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"
#include "g_operators.h"
#include "io_constants.h"
#include "lchip_interface.h"
#include "user_ctx.h"
#include "inputs.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */
#include "c4b_safety_variables.h"

#define board_0_O1 safety_variables.fields.v_board_0_O1
#define board_0_O2 safety_variables.fields.v_board_0_O2
#define ctime safety_variables.fields.v_ctime
#define l1d safety_variables.fields.v_l1d
#define l2d safety_variables.fields.v_l2d
#define l3d safety_variables.fields.v_l3d
#define l1s safety_variables.fields.v_l1s
#define l2s safety_variables.fields.v_l2s
#define l3s safety_variables.fields.v_l3s
#define relayTime safety_variables.fields.v_relayTime


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void SECTION_C4B_FUNCTION logic__initialisation(void);

/* Clause OPERATIONS */

extern void SECTION_C4B_FUNCTION user_logic(void);
extern void SECTION_C4B_FUNCTION get_board_0_O1(uint8_t *po);
extern void SECTION_C4B_FUNCTION get_board_0_O2(uint8_t *po);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _logic_h */

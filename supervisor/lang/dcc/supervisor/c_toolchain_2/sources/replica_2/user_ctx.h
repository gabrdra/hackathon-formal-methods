#ifndef _user_ctx_h
#define _user_ctx_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause SEES */
#include "g_types.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
#include "c4b_constants.h"
#define MINCT 5000
#define MINRY 51
/* Basic constants */
/* Array and record constants */
extern void SECTION_C4B_FUNCTION user_ctx__initialisation(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _user_ctx_h */

#ifndef _g_types_h
#define _g_types_h

#include <stdint.h>
#include <stdbool.h>
#include "interface_c4b.h"
/* Clause IMPORTS */
#include "g_standard_types.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
#include "c4b_constants.h"
#define STRUE 2
#define SFALSE 1
#define MAX_UINT32 -1
#define MAX_UINT16 65535
#define MAX_UINT8 255
/* Basic constants */
/* Array and record constants */
extern void SECTION_C4B_FUNCTION g_types__initialisation(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _g_types_h */

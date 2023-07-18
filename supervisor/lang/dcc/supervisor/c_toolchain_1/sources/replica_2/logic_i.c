/* WARNING if type checker is not performed, translation could contain errors ! */

#include "logic.h"

/* Clause SEES */
#include "g_types.h"
#include "g_operators.h"
#include "io_constants.h"
#include "lchip_interface.h"
#include "user_ctx.h"
#include "inputs.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

/* Clause LOCAL_OPERATIONS */

static void SECTION_C4B_FUNCTION supervisor(uint8_t i1, uint8_t i2, uint8_t i3, uint8_t *r1, uint8_t *r2);
static void SECTION_C4B_FUNCTION allLightsGreen(uint8_t i1, uint8_t i2, uint8_t i3, uint8_t *result);
static void SECTION_C4B_FUNCTION checkAbnormalBehavior(uint8_t i1, uint8_t i2, uint8_t i3, uint8_t *result);
/* Clause INITIALISATION */
void SECTION_C4B_FUNCTION logic__initialisation(void)
{
    
    board_0_O1 = IO_OFF;
    board_0_O2 = IO_OFF;
    ctime = 0;
    l1d = 0;
    l2d = 0;
    l3d = 0;
    l1s = IO_OFF;
    l2s = IO_OFF;
    l3s = IO_OFF;
    relayTime = 51;
}

/* Clause OPERATIONS */

void SECTION_C4B_FUNCTION user_logic(void)
{
    get_ms_tick(&ctime);
    {
        uint8_t i1_;
        uint8_t i2_;
        uint8_t i3_;
        
        get_board_0_I1(&i1_);
        get_board_0_I2(&i2_);
        get_board_0_I3(&i3_);
        supervisor(i1_, i2_, i3_, &board_0_O1, &board_0_O2);
    }
}

void SECTION_C4B_FUNCTION supervisor(uint8_t i1, uint8_t i2, uint8_t i3, uint8_t *r1, uint8_t *r2)
{
    allLightsGreen(i1, i2, i3, r1);
    {
        uint32_t dslc;
        
        dslc = ctime - relayTime;
        if((board_0_O2 == IO_ON))
        {
            if(((dslc) < (1000)))
            {
                (*r2) = board_0_O2;
            }
            else
            {
                checkAbnormalBehavior(i1, i2, i3, r2);
            }
        }
        else
        {
            checkAbnormalBehavior(i1, i2, i3, r2);
        }
    }
}

void SECTION_C4B_FUNCTION allLightsGreen(uint8_t i1, uint8_t i2, uint8_t i3, uint8_t *result)
{
    (*result) = board_0_O1;
    if((i1 == IO_ON))
    {
        if((i2 == IO_ON))
        {
            if((i3 == IO_ON))
            {
                (*result) = IO_ON;
            }
        }
    }
}

void SECTION_C4B_FUNCTION checkAbnormalBehavior(uint8_t i1, uint8_t i2, uint8_t i3, uint8_t *result)
{
    (*result) = IO_OFF;
    {
        uint32_t d1;
        uint32_t d2;
        uint32_t d3;
        
        d1 = ctime - l1d;
        d2 = ctime - l2d;
        d3 = ctime - l3d;
        if((i1 == l1s))
        {
            ;
        }
        else
        {
            l1s = i1;
            l1d = ctime;
            if(((d1) < (MINCT)))
            {
                (*result) = IO_ON;
                relayTime = ctime;
            }
        }
        if((i2 == l2s))
        {
            ;
        }
        else
        {
            l2s = i2;
            l2d = ctime;
            if(((d2) < (MINCT)))
            {
                (*result) = IO_ON;
                relayTime = ctime;
            }
        }
        if((i3 == l3s))
        {
            ;
        }
        else
        {
            l3s = i3;
            l3d = ctime;
            if(((d3) < (MINCT)))
            {
                (*result) = IO_ON;
                relayTime = ctime;
            }
        }
    }
}

void SECTION_C4B_FUNCTION get_board_0_O1(uint8_t *po)
{
    (*po) = board_0_O1;
}

void SECTION_C4B_FUNCTION get_board_0_O2(uint8_t *po)
{
    (*po) = board_0_O2;
}


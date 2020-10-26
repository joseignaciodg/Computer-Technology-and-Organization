/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *WORK_P_3687355242;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_3687355242_init();
    work_a_1208337864_2098569494_init();
    work_a_0043896539_2620846905_init();
    work_a_0193411007_2620846905_init();
    work_a_1864286384_1516540902_init();
    work_a_3190178155_1516540902_init();
    work_a_1711552980_1516540902_init();
    work_a_3074209807_1516540902_init();
    work_a_3943103908_3103306102_init();
    work_a_1250218446_0812350514_init();
    work_a_1432251444_0318166943_init();


    xsi_register_tops("work_a_1432251444_0318166943");

    WORK_P_3687355242 = xsi_get_engine_memory("work_p_3687355242");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}

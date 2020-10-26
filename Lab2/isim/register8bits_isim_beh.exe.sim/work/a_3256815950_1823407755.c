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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/hlocal/TOC/Lab2/register8bits.vhd";



static void work_a_3256815950_1823407755_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3312);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(18, ng0);
    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t1 = (unsigned char)0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(19, ng0);
    t4 = (t0 + 5095);
    t12 = (t0 + 3392);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB9;

LAB11:    xsi_set_current_line(21, ng0);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 3392);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t18 = (t16 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t14, 8U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB9;

LAB13:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 5103);
    t7 = 1;
    if (4U == 4U)
        goto LAB16;

LAB17:    t7 = 0;

LAB18:    t1 = t7;
    goto LAB15;

LAB16:    t17 = 0;

LAB19:    if (t17 < 4U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t11 = (t5 + t17);
    t12 = (t2 + t17);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB17;

LAB21:    t17 = (t17 + 1);
    goto LAB19;

}


extern void work_a_3256815950_1823407755_init()
{
	static char *pe[] = {(void *)work_a_3256815950_1823407755_p_0};
	xsi_register_didat("work_a_3256815950_1823407755", "isim/register8bits_isim_beh.exe.sim/work/a_3256815950_1823407755.didat");
	xsi_register_executes(pe);
}

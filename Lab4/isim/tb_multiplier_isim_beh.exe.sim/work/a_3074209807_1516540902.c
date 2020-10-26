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
static const char *ng0 = "C:/hlocal/TOC/Lab4/New folder/adder_sub_std.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3074209807_1516540902_p_0(char *t0)
{
    char t1[16];
    char t14[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(24, ng0);

LAB3:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5192U);
    t4 = xsi_get_transient_memory(8U);
    memset(t4, 0, 8U);
    t5 = t4;
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    if (-1 == -1)
        goto LAB5;

LAB6:    t9 = 0;

LAB7:    t10 = (t9 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t6 = (t5 + t12);
    t13 = (1U * 8U);
    memset(t6, t8, t13);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 7;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (7 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t1, t3, t2, t4, t14);
    t19 = (t1 + 12U);
    t18 = *((unsigned int *)t19);
    t20 = (1U * t18);
    t21 = (8U != t20);
    if (t21 == 1)
        goto LAB8;

LAB9:    t22 = (t0 + 3352);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t16, 8U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 3272);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t9 = 7;
    goto LAB7;

LAB8:    xsi_size_not_matching(8U, t20, 0);
    goto LAB9;

}


extern void work_a_3074209807_1516540902_init()
{
	static char *pe[] = {(void *)work_a_3074209807_1516540902_p_0};
	xsi_register_didat("work_a_3074209807_1516540902", "isim/tb_multiplier_isim_beh.exe.sim/work/a_3074209807_1516540902.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "C:/hlocal/TOC/Lab4/New folder/adder_std.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_1711552980_1516540902_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char t7[16];
    char t9[16];
    char t18[16];
    char t20[16];
    char t30[16];
    char t32[16];
    char *t3;
    char *t5;
    char *t6;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    unsigned char t29;
    char *t31;
    char *t33;
    char *t34;
    int t35;
    char *t36;
    unsigned int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(16, ng0);

LAB3:    t3 = (t0 + 6102);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t8 = ((IEEE_P_2592010699) + 4024);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (0 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t0 + 6000U);
    t5 = xsi_base_array_concat(t5, t7, t8, (char)97, t3, t9, (char)97, t6, t11, (char)101);
    t14 = (t0 + 6103);
    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t19 = ((IEEE_P_2592010699) + 4024);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 0;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (0 - 0);
    t13 = (t23 * 1);
    t13 = (t13 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t13;
    t22 = (t0 + 6016U);
    t16 = xsi_base_array_concat(t16, t18, t19, (char)97, t14, t20, (char)97, t17, t22, (char)101);
    t24 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t2, t5, t7, t16, t18);
    t25 = (t0 + 6104);
    t27 = (t0 + 1352U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t31 = ((IEEE_P_1242562249) + 3000);
    t33 = (t32 + 0U);
    t34 = (t33 + 0U);
    *((int *)t34) = 0;
    t34 = (t33 + 4U);
    *((int *)t34) = 0;
    t34 = (t33 + 8U);
    *((int *)t34) = 1;
    t35 = (0 - 0);
    t13 = (t35 * 1);
    t13 = (t13 + 1);
    t34 = (t33 + 12U);
    *((unsigned int *)t34) = t13;
    t27 = xsi_base_array_concat(t27, t30, t31, (char)97, t25, t32, (char)99, t29, (char)101);
    t34 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t1, t24, t2, t27, t30);
    t36 = (t1 + 12U);
    t13 = *((unsigned int *)t36);
    t37 = (1U * t13);
    t38 = (9U != t37);
    if (t38 == 1)
        goto LAB5;

LAB6:    t39 = (t0 + 4040);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t34, 9U);
    xsi_driver_first_trans_fast(t39);

LAB2:    t44 = (t0 + 3928);
    *((int *)t44) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(9U, t37, 0);
    goto LAB6;

}

static void work_a_1711552980_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(17, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (8 - 1);
    t4 = (8 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 4104);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 3944);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1711552980_1516540902_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4168);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3960);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1711552980_1516540902_init()
{
	static char *pe[] = {(void *)work_a_1711552980_1516540902_p_0,(void *)work_a_1711552980_1516540902_p_1,(void *)work_a_1711552980_1516540902_p_2};
	xsi_register_didat("work_a_1711552980_1516540902", "isim/tb_multiplier_isim_beh.exe.sim/work/a_1711552980_1516540902.didat");
	xsi_register_executes(pe);
}

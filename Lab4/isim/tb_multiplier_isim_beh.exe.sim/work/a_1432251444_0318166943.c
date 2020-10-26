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
static const char *ng0 = "C:/hlocal/TOC/Lab4/tb_multiplier.vhd";
extern char *WORK_P_3687355242;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *STD_STANDARD;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_2053728113_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1432251444_0318166943_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t7 = (5 * 1000LL);
    t8 = (t0 + 4224);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t8, 0U, 1, t7);
    xsi_set_current_line(46, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_1432251444_0318166943_p_1(char *t0)
{
    char t15[16];
    char t28[16];
    char t30[16];
    char t35[16];
    char t37[16];
    char t40[16];
    char t46[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t8;
    int t9;
    int t10;
    int t11;
    int t12;
    unsigned char t13;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    int t19;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t29;
    char *t31;
    char *t32;
    char *t34;
    char *t36;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;

LAB0:    t1 = (t0 + 3760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(59, ng0);
    t2 = ((WORK_P_3687355242) + 1168U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t9 = xsi_vhdl_pow(2, t8);
    t10 = (t9 - 1);
    t2 = (t0 + 6632);
    *((int *)t2) = 1;
    t4 = (t0 + 6636);
    *((int *)t4) = t10;
    t11 = 1;
    t12 = t10;

LAB8:    if (t11 <= t12)
        goto LAB9;

LAB11:    xsi_set_current_line(78, ng0);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(60, ng0);

LAB14:    t5 = (t0 + 4080);
    *((int *)t5) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 6632);
    t11 = *((int *)t2);
    t3 = (t0 + 6636);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB11;

LAB45:    t8 = (t11 + 1);
    t11 = t8;
    t4 = (t0 + 6632);
    *((int *)t4) = t11;
    goto LAB8;

LAB12:    t14 = (t0 + 4080);
    *((int *)t14) = 0;
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 6632);
    t3 = ((WORK_P_3687355242) + 1168U);
    t4 = *((char **)t3);
    t8 = *((int *)t4);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, *((int *)t2), t8);
    t5 = (t0 + 4416);
    t6 = (t5 + 56U);
    t14 = *((char **)t6);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t3, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(62, ng0);
    t2 = ((WORK_P_3687355242) + 1168U);
    t3 = *((char **)t2);
    t8 = *((int *)t3);
    t9 = xsi_vhdl_pow(2, t8);
    t10 = (t9 - 1);
    t2 = (t0 + 6640);
    *((int *)t2) = 1;
    t4 = (t0 + 6644);
    *((int *)t4) = t10;
    t18 = 1;
    t19 = t10;

LAB16:    if (t18 <= t19)
        goto LAB17;

LAB19:    goto LAB10;

LAB13:    t6 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t6, 0U, 0U);
    if (t13 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB17:    xsi_set_current_line(63, ng0);
    t5 = (t0 + 6640);
    t6 = ((WORK_P_3687355242) + 1168U);
    t14 = *((char **)t6);
    t20 = *((int *)t14);
    t6 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, *((int *)t5), t20);
    t16 = (t0 + 4480);
    t17 = (t16 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t6, 4U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(65, ng0);

LAB22:    t2 = (t0 + 4096);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB18:    t2 = (t0 + 6640);
    t18 = *((int *)t2);
    t3 = (t0 + 6644);
    t19 = *((int *)t3);
    if (t18 == t19)
        goto LAB19;

LAB44:    t8 = (t18 + 1);
    t18 = t8;
    t4 = (t0 + 6640);
    *((int *)t4) = t18;
    goto LAB16;

LAB20:    t4 = (t0 + 4096);
    *((int *)t4) = 0;
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4352);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);

LAB26:    t2 = (t0 + 4112);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB20;
    else
        goto LAB22;

LAB23:    goto LAB21;

LAB24:    t3 = (t0 + 4112);
    *((int *)t3) = 0;
    xsi_set_current_line(68, ng0);

LAB30:    t2 = (t0 + 4128);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t13 = *((unsigned char *)t4);
    t24 = (t13 == (unsigned char)3);
    if (t24 == 1)
        goto LAB24;
    else
        goto LAB26;

LAB27:    goto LAB25;

LAB28:    t4 = (t0 + 4128);
    *((int *)t4) = 0;
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 6540U);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t4 = (t0 + 6540U);
    t6 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t15, t3, t2, t5, t4);
    t14 = (t0 + 2528U);
    t16 = *((char **)t14);
    t14 = (t16 + 0);
    t17 = (t15 + 12U);
    t25 = *((unsigned int *)t17);
    t26 = (1U * t25);
    memcpy(t14, t6, t26);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2528U);
    t3 = *((char **)t2);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t13 = 1;
    if (8U == 8U)
        goto LAB34;

LAB35:    t13 = 0;

LAB36:    if (t13 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(73, ng0);

LAB42:    t2 = (t0 + 4144);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB29:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB28;
    else
        goto LAB30;

LAB31:    goto LAB29;

LAB32:    t6 = (t0 + 6648);
    t16 = ((STD_STANDARD) + 384);
    t17 = (t0 + 1992U);
    t21 = *((char **)t17);
    t17 = (t0 + 6556U);
    t8 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t21, t17);
    t22 = xsi_int_to_mem(t8);
    t23 = xsi_string_variable_get_image(t15, t16, t22);
    t29 = ((STD_STANDARD) + 1008);
    t31 = (t30 + 0U);
    t32 = (t31 + 0U);
    *((int *)t32) = 1;
    t32 = (t31 + 4U);
    *((int *)t32) = 31;
    t32 = (t31 + 8U);
    *((int *)t32) = 1;
    t9 = (31 - 1);
    t26 = (t9 * 1);
    t26 = (t26 + 1);
    t32 = (t31 + 12U);
    *((unsigned int *)t32) = t26;
    t27 = xsi_base_array_concat(t27, t28, t29, (char)97, t6, t30, (char)97, t23, t15, (char)101);
    t32 = (t0 + 6679);
    t36 = ((STD_STANDARD) + 1008);
    t38 = (t37 + 0U);
    t39 = (t38 + 0U);
    *((int *)t39) = 1;
    t39 = (t38 + 4U);
    *((int *)t39) = 12;
    t39 = (t38 + 8U);
    *((int *)t39) = 1;
    t10 = (12 - 1);
    t26 = (t10 * 1);
    t26 = (t26 + 1);
    t39 = (t38 + 12U);
    *((unsigned int *)t39) = t26;
    t34 = xsi_base_array_concat(t34, t35, t36, (char)97, t27, t28, (char)97, t32, t37, (char)101);
    t39 = ((STD_STANDARD) + 384);
    t41 = (t0 + 2528U);
    t42 = *((char **)t41);
    t41 = (t0 + 6572U);
    t20 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t42, t41);
    t43 = xsi_int_to_mem(t20);
    t44 = xsi_string_variable_get_image(t40, t39, t43);
    t47 = ((STD_STANDARD) + 1008);
    t45 = xsi_base_array_concat(t45, t46, t47, (char)97, t34, t35, (char)97, t44, t40, (char)101);
    t48 = (t15 + 12U);
    t26 = *((unsigned int *)t48);
    t49 = (31U + t26);
    t50 = (t49 + 12U);
    t51 = (t40 + 12U);
    t52 = *((unsigned int *)t51);
    t53 = (t50 + t52);
    xsi_report(t45, t53, (unsigned char)2);
    goto LAB33;

LAB34:    t25 = 0;

LAB37:    if (t25 < 8U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t2 = (t3 + t25);
    t5 = (t4 + t25);
    if (*((unsigned char *)t2) != *((unsigned char *)t5))
        goto LAB35;

LAB39:    t25 = (t25 + 1);
    goto LAB37;

LAB40:    t4 = (t0 + 4144);
    *((int *)t4) = 0;
    goto LAB18;

LAB41:    t3 = (t0 + 992U);
    t13 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t13 == 1)
        goto LAB40;
    else
        goto LAB42;

LAB43:    goto LAB41;

LAB46:    goto LAB2;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

}


extern void work_a_1432251444_0318166943_init()
{
	static char *pe[] = {(void *)work_a_1432251444_0318166943_p_0,(void *)work_a_1432251444_0318166943_p_1};
	xsi_register_didat("work_a_1432251444_0318166943", "isim/tb_multiplier_isim_beh.exe.sim/work/a_1432251444_0318166943.didat");
	xsi_register_executes(pe);
}

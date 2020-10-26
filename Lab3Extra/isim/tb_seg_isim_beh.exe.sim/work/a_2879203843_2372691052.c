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
static const char *ng0 = "C:/hlocal/Lab3/tb_seg.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *STD_STANDARD;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2879203843_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2879203843_2372691052_p_1(char *t0)
{
    char t8[16];
    char t18[16];
    char t20[16];
    char t27[16];
    char t29[16];
    char t33[16];
    char t40[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    char *t26;
    char *t28;
    char *t30;
    char *t31;
    int t32;
    char *t34;
    char *t35;
    int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;

LAB0:    t1 = (t0 + 3680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(64, ng0);

LAB6:    t2 = (t0 + 4000);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 4000);
    *((int *)t4) = 0;
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);

LAB10:    t2 = (t0 + 4016);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t4 = (t0 + 4016);
    *((int *)t4) = 0;
    xsi_set_current_line(69, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 3, 4);
    t3 = (t0 + 4288);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(70, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 4, 4);
    t3 = (t0 + 4352);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(71, ng0);
    t10 = (4 * 3);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, t10, 8);
    t3 = (t0 + 4416);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(73, ng0);

LAB14:    t2 = (t0 + 4032);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    t4 = (t0 + 4032);
    *((int *)t4) = 0;
    xsi_set_current_line(76, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 15, 4);
    t3 = (t0 + 4288);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(77, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 15, 4);
    t3 = (t0 + 4352);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(78, ng0);
    t10 = (15 * 15);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, t10, 8);
    t3 = (t0 + 4480);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(81, ng0);

LAB18:    t2 = (t0 + 4048);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    t4 = (t0 + 4048);
    *((int *)t4) = 0;
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t7 = 1;
    if (8U == 8U)
        goto LAB22;

LAB23:    t7 = 0;

LAB24:    if (t7 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(88, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 5, 4);
    t3 = (t0 + 4288);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(89, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 7, 4);
    t3 = (t0 + 4352);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(90, ng0);
    t10 = (5 * 7);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, t10, 8);
    t3 = (t0 + 4544);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(93, ng0);

LAB30:    t2 = (t0 + 4064);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB17:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB16;
    else
        goto LAB18;

LAB19:    goto LAB17;

LAB20:    t6 = (t0 + 6520);
    t12 = ((STD_STANDARD) + 384);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 6424U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t14, t13);
    t15 = xsi_int_to_mem(t10);
    t16 = xsi_string_variable_get_image(t8, t12, t15);
    t19 = ((STD_STANDARD) + 1008);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 1;
    t22 = (t21 + 4U);
    *((int *)t22) = 19;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (19 - 1);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t6, t20, (char)97, t16, t8, (char)101);
    t22 = (t0 + 6539);
    t28 = ((STD_STANDARD) + 1008);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 1;
    t31 = (t30 + 4U);
    *((int *)t31) = 8;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (8 - 1);
    t24 = (t32 * 1);
    t24 = (t24 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t24;
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t17, t18, (char)97, t22, t29, (char)101);
    t31 = ((STD_STANDARD) + 384);
    t34 = (t0 + 1832U);
    t35 = *((char **)t34);
    t34 = (t0 + 6440U);
    t36 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t35, t34);
    t37 = xsi_int_to_mem(t36);
    t38 = xsi_string_variable_get_image(t33, t31, t37);
    t41 = ((STD_STANDARD) + 1008);
    t39 = xsi_base_array_concat(t39, t40, t41, (char)97, t26, t27, (char)97, t38, t33, (char)101);
    t42 = (t8 + 12U);
    t24 = *((unsigned int *)t42);
    t43 = (19U + t24);
    t44 = (t43 + 8U);
    t45 = (t33 + 12U);
    t46 = *((unsigned int *)t45);
    t47 = (t44 + t46);
    xsi_report(t39, t47, (unsigned char)2);
    goto LAB21;

LAB22:    t11 = 0;

LAB25:    if (t11 < 8U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t2 = (t3 + t11);
    t5 = (t4 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t5))
        goto LAB23;

LAB27:    t11 = (t11 + 1);
    goto LAB25;

LAB28:    t4 = (t0 + 4064);
    *((int *)t4) = 0;
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t7 = 1;
    if (8U == 8U)
        goto LAB34;

LAB35:    t7 = 0;

LAB36:    if (t7 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(100, ng0);

LAB42:    t2 = (t0 + 4080);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB29:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB28;
    else
        goto LAB30;

LAB31:    goto LAB29;

LAB32:    t6 = (t0 + 6547);
    t12 = ((STD_STANDARD) + 384);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 6424U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t14, t13);
    t15 = xsi_int_to_mem(t10);
    t16 = xsi_string_variable_get_image(t8, t12, t15);
    t19 = ((STD_STANDARD) + 1008);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 1;
    t22 = (t21 + 4U);
    *((int *)t22) = 19;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (19 - 1);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t6, t20, (char)97, t16, t8, (char)101);
    t22 = (t0 + 6566);
    t28 = ((STD_STANDARD) + 1008);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 1;
    t31 = (t30 + 4U);
    *((int *)t31) = 8;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (8 - 1);
    t24 = (t32 * 1);
    t24 = (t24 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t24;
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t17, t18, (char)97, t22, t29, (char)101);
    t31 = ((STD_STANDARD) + 384);
    t34 = (t0 + 1992U);
    t35 = *((char **)t34);
    t34 = (t0 + 6440U);
    t36 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t35, t34);
    t37 = xsi_int_to_mem(t36);
    t38 = xsi_string_variable_get_image(t33, t31, t37);
    t41 = ((STD_STANDARD) + 1008);
    t39 = xsi_base_array_concat(t39, t40, t41, (char)97, t26, t27, (char)97, t38, t33, (char)101);
    t42 = (t8 + 12U);
    t24 = *((unsigned int *)t42);
    t43 = (19U + t24);
    t44 = (t43 + 8U);
    t45 = (t33 + 12U);
    t46 = *((unsigned int *)t45);
    t47 = (t44 + t46);
    xsi_report(t39, t47, (unsigned char)2);
    goto LAB33;

LAB34:    t11 = 0;

LAB37:    if (t11 < 8U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t2 = (t3 + t11);
    t5 = (t4 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t5))
        goto LAB35;

LAB39:    t11 = (t11 + 1);
    goto LAB37;

LAB40:    t4 = (t0 + 4080);
    *((int *)t4) = 0;
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t7 = 1;
    if (8U == 8U)
        goto LAB46;

LAB47:    t7 = 0;

LAB48:    if (t7 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(106, ng0);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB41:    t3 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB40;
    else
        goto LAB42;

LAB43:    goto LAB41;

LAB44:    t6 = (t0 + 6574);
    t12 = ((STD_STANDARD) + 384);
    t13 = (t0 + 1672U);
    t14 = *((char **)t13);
    t13 = (t0 + 6424U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t14, t13);
    t15 = xsi_int_to_mem(t10);
    t16 = xsi_string_variable_get_image(t8, t12, t15);
    t19 = ((STD_STANDARD) + 1008);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 1;
    t22 = (t21 + 4U);
    *((int *)t22) = 19;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (19 - 1);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t24;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t6, t20, (char)97, t16, t8, (char)101);
    t22 = (t0 + 6593);
    t28 = ((STD_STANDARD) + 1008);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 1;
    t31 = (t30 + 4U);
    *((int *)t31) = 8;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (8 - 1);
    t24 = (t32 * 1);
    t24 = (t24 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t24;
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t17, t18, (char)97, t22, t29, (char)101);
    t31 = ((STD_STANDARD) + 384);
    t34 = (t0 + 2152U);
    t35 = *((char **)t34);
    t34 = (t0 + 6440U);
    t36 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t35, t34);
    t37 = xsi_int_to_mem(t36);
    t38 = xsi_string_variable_get_image(t33, t31, t37);
    t41 = ((STD_STANDARD) + 1008);
    t39 = xsi_base_array_concat(t39, t40, t41, (char)97, t26, t27, (char)97, t38, t33, (char)101);
    t42 = (t8 + 12U);
    t24 = *((unsigned int *)t42);
    t43 = (19U + t24);
    t44 = (t43 + 8U);
    t45 = (t33 + 12U);
    t46 = *((unsigned int *)t45);
    t47 = (t44 + t46);
    xsi_report(t39, t47, (unsigned char)2);
    goto LAB45;

LAB46:    t11 = 0;

LAB49:    if (t11 < 8U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t2 = (t3 + t11);
    t5 = (t4 + t11);
    if (*((unsigned char *)t2) != *((unsigned char *)t5))
        goto LAB47;

LAB51:    t11 = (t11 + 1);
    goto LAB49;

LAB52:    goto LAB2;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

}


extern void work_a_2879203843_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2879203843_2372691052_p_0,(void *)work_a_2879203843_2372691052_p_1};
	xsi_register_didat("work_a_2879203843_2372691052", "isim/tb_seg_isim_beh.exe.sim/work/a_2879203843_2372691052.didat");
	xsi_register_executes(pe);
}

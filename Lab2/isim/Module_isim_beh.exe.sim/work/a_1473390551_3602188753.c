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
static const char *ng0 = "C:/hlocal/TOC/Lab2/debouncer.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1473390551_3602188753_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4768);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 4880);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2608U);
    t6 = *((char **)t2);
    t10 = *((unsigned char *)t6);
    t2 = (t0 + 4880);
    t7 = (t2 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t10;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2608U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((unsigned char *)t1) = t3;
    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB9;

}

static void work_a_1473390551_3602188753_p_1(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned int t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    t1 = (t0 + 7560U);
    t3 = (t0 + 2728U);
    t4 = *((char **)t3);
    t3 = (t0 + 7544U);
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4944);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB3:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t11 = (t5 == (unsigned char)2);
    if (t11 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1152U);
    t11 = xsi_signal_has_event(t1);
    if (t11 == 1)
        goto LAB10;

LAB11:    t5 = (unsigned char)0;

LAB12:    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    t1 = (t0 + 4784);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(42, ng0);
    t6 = (t0 + 4944);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2728U);
    t3 = *((char **)t1);
    t1 = (t0 + 2848U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t3, 20U);
    goto LAB6;

LAB8:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t14 = *((unsigned char *)t4);
    t15 = (t14 == (unsigned char)3);
    if (t15 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t11 = (t5 == (unsigned char)2);
    if (t11 != 0)
        goto LAB16;

LAB17:
LAB14:    goto LAB6;

LAB10:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t12 = *((unsigned char *)t3);
    t13 = (t12 == (unsigned char)3);
    t5 = t13;
    goto LAB12;

LAB13:    xsi_set_current_line(50, ng0);
    t2 = xsi_get_transient_memory(20U);
    memset(t2, 0, 20U);
    t6 = t2;
    memset(t6, (unsigned char)2, 20U);
    t7 = (t0 + 2848U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    memcpy(t7, t2, 20U);
    goto LAB14;

LAB16:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 2848U);
    t3 = *((char **)t1);
    t1 = (t0 + 7560U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t3, t1, 1);
    t6 = (t0 + 2848U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t8 = (t16 + 12U);
    t17 = *((unsigned int *)t8);
    t18 = (1U * t17);
    memcpy(t6, t4, t18);
    goto LAB14;

}

static void work_a_1473390551_3602188753_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6};
    static char *nl1[] = {&&LAB22, &&LAB23, &&LAB24, &&LAB25};

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5008);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5072);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2968U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)2);
    if (t7 != 0)
        goto LAB13;

LAB15:    t1 = (t0 + 1152U);
    t7 = xsi_signal_has_event(t1);
    if (t7 == 1)
        goto LAB18;

LAB19:    t6 = (unsigned char)0;

LAB20:    if (t6 != 0)
        goto LAB16;

LAB17:
LAB14:    t1 = (t0 + 4800);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t7 = *((unsigned char *)t4);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5008);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5008);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB2;

LAB6:    xsi_set_current_line(81, ng0);
    goto LAB2;

LAB7:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 5072);
    t5 = (t3 + 56U);
    t9 = *((char **)t5);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t9 = *((char **)t5);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 5200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB14;

LAB16:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2968U);
    t4 = *((char **)t2);
    t13 = *((unsigned char *)t4);
    t2 = (char *)((nl1) + t13);
    goto **((char **)t2);

LAB18:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t12 = (t8 == (unsigned char)3);
    t6 = t12;
    goto LAB20;

LAB21:    goto LAB14;

LAB22:    xsi_set_current_line(88, ng0);
    t5 = (t0 + 1992U);
    t9 = *((char **)t5);
    t14 = *((unsigned char *)t9);
    t15 = (t14 == (unsigned char)2);
    if (t15 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB21;

LAB23:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB21;

LAB24:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB32;

LAB34:
LAB33:    goto LAB21;

LAB25:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB35;

LAB37:
LAB36:    goto LAB21;

LAB26:    xsi_set_current_line(89, ng0);
    t5 = (t0 + 2968U);
    t10 = *((char **)t5);
    t5 = (t10 + 0);
    *((unsigned char *)t5) = (unsigned char)1;
    goto LAB27;

LAB29:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB30;

LAB32:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB33;

LAB35:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2968U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)0;
    goto LAB36;

}


extern void work_a_1473390551_3602188753_init()
{
	static char *pe[] = {(void *)work_a_1473390551_3602188753_p_0,(void *)work_a_1473390551_3602188753_p_1,(void *)work_a_1473390551_3602188753_p_2};
	xsi_register_didat("work_a_1473390551_3602188753", "isim/Module_isim_beh.exe.sim/work/a_1473390551_3602188753.didat");
	xsi_register_executes(pe);
}

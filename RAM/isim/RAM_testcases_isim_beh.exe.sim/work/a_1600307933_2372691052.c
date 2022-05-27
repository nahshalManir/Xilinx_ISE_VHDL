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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/nahshal/Documents/13000120095_Nahshal_ISE_Design/RAM/RAM_test.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1600307933_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2944U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3576);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2752);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1600307933_2372691052_p_1(char *t0)
{
    char t12[16];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    int t10;
    int t11;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int64 t25;

LAB0:    t1 = (t0 + 3192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 6160);
    t4 = (t0 + 3704);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 6167);
    t4 = (t0 + 3768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(94, ng0);
    t9 = (2 * 1LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6175);
    *((int *)t2) = 0;
    t3 = (t0 + 6179);
    *((int *)t3) = 5;
    t10 = 0;
    t11 = 5;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 6190);
    t4 = (t0 + 3704);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 7U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(101, ng0);
    t9 = (2 * 1LL);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t9);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 6064U);
    t6 = (t0 + 6183);
    t8 = (t13 + 0U);
    t14 = (t8 + 0U);
    *((int *)t14) = 0;
    t14 = (t8 + 4U);
    *((int *)t14) = 6;
    t14 = (t8 + 8U);
    *((int *)t14) = 1;
    t15 = (6 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t8 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t12, t5, t4, t6, t13);
    t17 = (t12 + 12U);
    t16 = *((unsigned int *)t17);
    t18 = (1U * t16);
    t19 = (7U != t18);
    if (t19 == 1)
        goto LAB12;

LAB13:    t20 = (t0 + 3704);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 7U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t25 = (t9 * 2);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t25);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB10:    t2 = (t0 + 6175);
    t10 = *((int *)t2);
    t3 = (t0 + 6179);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB11;

LAB18:    t15 = (t10 + 1);
    t10 = t15;
    t4 = (t0 + 6175);
    *((int *)t4) = t10;
    goto LAB8;

LAB12:    xsi_size_not_matching(7U, t18, 0);
    goto LAB13;

LAB14:    goto LAB10;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB19:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 6197);
    *((int *)t2) = 0;
    t3 = (t0 + 6201);
    *((int *)t3) = 5;
    t10 = 0;
    t11 = 5;

LAB23:    if (t10 <= t11)
        goto LAB24;

LAB26:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(108, ng0);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

LAB24:    xsi_set_current_line(103, ng0);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 6064U);
    t6 = (t0 + 6205);
    t8 = (t13 + 0U);
    t14 = (t8 + 0U);
    *((int *)t14) = 0;
    t14 = (t8 + 4U);
    *((int *)t14) = 6;
    t14 = (t8 + 8U);
    *((int *)t14) = 1;
    t15 = (6 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t8 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t12, t5, t4, t6, t13);
    t17 = (t12 + 12U);
    t16 = *((unsigned int *)t17);
    t18 = (1U * t16);
    t19 = (7U != t18);
    if (t19 == 1)
        goto LAB27;

LAB28:    t20 = (t0 + 3704);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 7U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 6080U);
    t4 = (t0 + 6212);
    t6 = (t13 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 7;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t16;
    t7 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t12, t3, t2, t4, t13);
    t8 = (t12 + 12U);
    t16 = *((unsigned int *)t8);
    t18 = (1U * t16);
    t19 = (8U != t18);
    if (t19 == 1)
        goto LAB29;

LAB30:    t14 = (t0 + 3768);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t7, 8U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t9 = *((int64 *)t3);
    t25 = (t9 * 2);
    t2 = (t0 + 3000);
    xsi_process_wait(t2, t25);

LAB33:    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB25:    t2 = (t0 + 6197);
    t10 = *((int *)t2);
    t3 = (t0 + 6201);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB26;

LAB35:    t15 = (t10 + 1);
    t10 = t15;
    t4 = (t0 + 6197);
    *((int *)t4) = t10;
    goto LAB23;

LAB27:    xsi_size_not_matching(7U, t18, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(8U, t18, 0);
    goto LAB30;

LAB31:    goto LAB25;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

LAB36:    goto LAB2;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

}


extern void work_a_1600307933_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1600307933_2372691052_p_0,(void *)work_a_1600307933_2372691052_p_1};
	xsi_register_didat("work_a_1600307933_2372691052", "isim/RAM_testcases_isim_beh.exe.sim/work/a_1600307933_2372691052.didat");
	xsi_register_executes(pe);
}

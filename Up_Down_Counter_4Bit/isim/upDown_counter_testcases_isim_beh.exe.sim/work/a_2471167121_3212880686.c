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
static const char *ng0 = "/home/nahshal/Downloads/up-down_counter_rtl.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_2255506239096238868_3965413181(char *, char *, char *, char *, int );


static void work_a_2471167121_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3648);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3552);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2471167121_3212880686_p_1(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3568);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5560);
    t6 = (t0 + 3712);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 != 0)
        goto LAB17;

LAB18:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5564);
    t7 = (t0 + 3712);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB8;

LAB10:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t1 = (t0 + 5528U);
    t7 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t15, t6, t1, 1);
    t8 = (t15 + 12U);
    t16 = *((unsigned int *)t8);
    t17 = (1U * t16);
    t18 = (4U != t17);
    if (t18 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 3712);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

LAB12:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)2);
    t3 = t14;
    goto LAB14;

LAB15:    xsi_size_not_matching(4U, t17, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1832U);
    t6 = *((char **)t1);
    t1 = (t0 + 5528U);
    t7 = ieee_p_3620187407_sub_2255506239096238868_3965413181(IEEE_P_3620187407, t15, t6, t1, 1);
    t8 = (t15 + 12U);
    t16 = *((unsigned int *)t8);
    t17 = (1U * t16);
    t18 = (4U != t17);
    if (t18 == 1)
        goto LAB22;

LAB23:    t9 = (t0 + 3712);
    t10 = (t9 + 56U);
    t12 = *((char **)t10);
    t19 = (t12 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

LAB19:    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)3);
    t3 = t14;
    goto LAB21;

LAB22:    xsi_size_not_matching(4U, t17, 0);
    goto LAB23;

}


extern void work_a_2471167121_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2471167121_3212880686_p_0,(void *)work_a_2471167121_3212880686_p_1};
	xsi_register_didat("work_a_2471167121_3212880686", "isim/upDown_counter_testcases_isim_beh.exe.sim/work/a_2471167121_3212880686.didat");
	xsi_register_executes(pe);
}

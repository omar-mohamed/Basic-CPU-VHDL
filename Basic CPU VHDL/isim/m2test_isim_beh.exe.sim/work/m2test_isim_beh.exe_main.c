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

char *WORK_P_4053066488;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_0774719531;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_4053066488_init();
    work_a_2921561539_3212880686_init();
    work_a_3098946169_3212880686_init();
    work_a_3179671248_3212880686_init();
    work_a_4090153325_3212880686_init();
    work_a_1185231316_3212880686_init();
    work_a_0490562120_3212880686_init();
    work_a_0293385300_3212880686_init();
    work_a_3007917141_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_0737135909_3212880686_init();
    work_a_1492497583_3212880686_init();
    work_a_1526946367_3212880686_init();
    work_a_0546936460_3212880686_init();
    work_a_0431830435_3212880686_init();
    work_a_1089058159_2372691052_init();


    xsi_register_tops("work_a_1089058159_2372691052");

    WORK_P_4053066488 = xsi_get_engine_memory("work_p_4053066488");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}

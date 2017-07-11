###################################################################

# Created by write_sdc on Tue Jul 11 14:53:20 2017

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
create_clock [get_ports clk]  -period 13.8889  -waveform {0 6.94444}
set_clock_uncertainty 0  [get_clocks clk]
set_clock_transition -fall 0 [get_clocks clk]
set_clock_transition -rise 0 [get_clocks clk]
group_path -name in2out  -from [list [get_clocks clk] [get_ports {rmode[1]}] [get_ports {rmode[0]}]    \
[get_ports {fpu_op[2]}] [get_ports {fpu_op[1]}] [get_ports {fpu_op[0]}]        \
[get_ports {opa[31]}] [get_ports {opa[30]}] [get_ports {opa[29]}] [get_ports   \
{opa[28]}] [get_ports {opa[27]}] [get_ports {opa[26]}] [get_ports {opa[25]}]   \
[get_ports {opa[24]}] [get_ports {opa[23]}] [get_ports {opa[22]}] [get_ports   \
{opa[21]}] [get_ports {opa[20]}] [get_ports {opa[19]}] [get_ports {opa[18]}]   \
[get_ports {opa[17]}] [get_ports {opa[16]}] [get_ports {opa[15]}] [get_ports   \
{opa[14]}] [get_ports {opa[13]}] [get_ports {opa[12]}] [get_ports {opa[11]}]   \
[get_ports {opa[10]}] [get_ports {opa[9]}] [get_ports {opa[8]}] [get_ports     \
{opa[7]}] [get_ports {opa[6]}] [get_ports {opa[5]}] [get_ports {opa[4]}]       \
[get_ports {opa[3]}] [get_ports {opa[2]}] [get_ports {opa[1]}] [get_ports      \
{opa[0]}] [get_ports {opb[31]}] [get_ports {opb[30]}] [get_ports {opb[29]}]    \
[get_ports {opb[28]}] [get_ports {opb[27]}] [get_ports {opb[26]}] [get_ports   \
{opb[25]}] [get_ports {opb[24]}] [get_ports {opb[23]}] [get_ports {opb[22]}]   \
[get_ports {opb[21]}] [get_ports {opb[20]}] [get_ports {opb[19]}] [get_ports   \
{opb[18]}] [get_ports {opb[17]}] [get_ports {opb[16]}] [get_ports {opb[15]}]   \
[get_ports {opb[14]}] [get_ports {opb[13]}] [get_ports {opb[12]}] [get_ports   \
{opb[11]}] [get_ports {opb[10]}] [get_ports {opb[9]}] [get_ports {opb[8]}]     \
[get_ports {opb[7]}] [get_ports {opb[6]}] [get_ports {opb[5]}] [get_ports      \
{opb[4]}] [get_ports {opb[3]}] [get_ports {opb[2]}] [get_ports {opb[1]}]       \
[get_ports {opb[0]}]]  -to [list [get_ports {out[31]}] [get_ports {out[30]}] [get_ports {out[29]}]   \
[get_ports {out[28]}] [get_ports {out[27]}] [get_ports {out[26]}] [get_ports   \
{out[25]}] [get_ports {out[24]}] [get_ports {out[23]}] [get_ports {out[22]}]   \
[get_ports {out[21]}] [get_ports {out[20]}] [get_ports {out[19]}] [get_ports   \
{out[18]}] [get_ports {out[17]}] [get_ports {out[16]}] [get_ports {out[15]}]   \
[get_ports {out[14]}] [get_ports {out[13]}] [get_ports {out[12]}] [get_ports   \
{out[11]}] [get_ports {out[10]}] [get_ports {out[9]}] [get_ports {out[8]}]     \
[get_ports {out[7]}] [get_ports {out[6]}] [get_ports {out[5]}] [get_ports      \
{out[4]}] [get_ports {out[3]}] [get_ports {out[2]}] [get_ports {out[1]}]       \
[get_ports {out[0]}] [get_ports inf] [get_ports snan] [get_ports qnan]         \
[get_ports ine] [get_ports overflow] [get_ports underflow] [get_ports zero]    \
[get_ports div_by_zero]]
group_path -name in2reg  -from [list [get_clocks clk] [get_ports {rmode[1]}] [get_ports {rmode[0]}]    \
[get_ports {fpu_op[2]}] [get_ports {fpu_op[1]}] [get_ports {fpu_op[0]}]        \
[get_ports {opa[31]}] [get_ports {opa[30]}] [get_ports {opa[29]}] [get_ports   \
{opa[28]}] [get_ports {opa[27]}] [get_ports {opa[26]}] [get_ports {opa[25]}]   \
[get_ports {opa[24]}] [get_ports {opa[23]}] [get_ports {opa[22]}] [get_ports   \
{opa[21]}] [get_ports {opa[20]}] [get_ports {opa[19]}] [get_ports {opa[18]}]   \
[get_ports {opa[17]}] [get_ports {opa[16]}] [get_ports {opa[15]}] [get_ports   \
{opa[14]}] [get_ports {opa[13]}] [get_ports {opa[12]}] [get_ports {opa[11]}]   \
[get_ports {opa[10]}] [get_ports {opa[9]}] [get_ports {opa[8]}] [get_ports     \
{opa[7]}] [get_ports {opa[6]}] [get_ports {opa[5]}] [get_ports {opa[4]}]       \
[get_ports {opa[3]}] [get_ports {opa[2]}] [get_ports {opa[1]}] [get_ports      \
{opa[0]}] [get_ports {opb[31]}] [get_ports {opb[30]}] [get_ports {opb[29]}]    \
[get_ports {opb[28]}] [get_ports {opb[27]}] [get_ports {opb[26]}] [get_ports   \
{opb[25]}] [get_ports {opb[24]}] [get_ports {opb[23]}] [get_ports {opb[22]}]   \
[get_ports {opb[21]}] [get_ports {opb[20]}] [get_ports {opb[19]}] [get_ports   \
{opb[18]}] [get_ports {opb[17]}] [get_ports {opb[16]}] [get_ports {opb[15]}]   \
[get_ports {opb[14]}] [get_ports {opb[13]}] [get_ports {opb[12]}] [get_ports   \
{opb[11]}] [get_ports {opb[10]}] [get_ports {opb[9]}] [get_ports {opb[8]}]     \
[get_ports {opb[7]}] [get_ports {opb[6]}] [get_ports {opb[5]}] [get_ports      \
{opb[4]}] [get_ports {opb[3]}] [get_ports {opb[2]}] [get_ports {opb[1]}]       \
[get_ports {opb[0]}]]  -to [list [get_pins div_by_zero_reg/D] [get_pins opa_nan_r_reg/D] [get_pins   \
zero_reg/D] [get_pins inf_reg/D] [get_pins qnan_reg/D] [get_pins snan_reg/D]   \
[get_pins underflow_reg/D] [get_pins underflow_fmul_r_reg_0_/D] [get_pins      \
underflow_fmul_r_reg_1_/D] [get_pins underflow_fmul_r_reg_2_/D] [get_pins      \
overflow_reg/D] [get_pins ine_reg/D] [get_pins out_reg_31_/D] [get_pins        \
out_reg_0_/D] [get_pins out_reg_1_/D] [get_pins out_reg_2_/D] [get_pins        \
out_reg_3_/D] [get_pins out_reg_4_/D] [get_pins out_reg_5_/D] [get_pins        \
out_reg_6_/D] [get_pins out_reg_7_/D] [get_pins out_reg_8_/D] [get_pins        \
out_reg_9_/D] [get_pins out_reg_10_/D] [get_pins out_reg_11_/D] [get_pins      \
out_reg_12_/D] [get_pins out_reg_13_/D] [get_pins out_reg_14_/D] [get_pins     \
out_reg_15_/D] [get_pins out_reg_16_/D] [get_pins out_reg_17_/D] [get_pins     \
out_reg_18_/D] [get_pins out_reg_19_/D] [get_pins out_reg_20_/D] [get_pins     \
out_reg_21_/D] [get_pins out_reg_22_/D] [get_pins out_reg_23_/D] [get_pins     \
out_reg_24_/D] [get_pins out_reg_25_/D] [get_pins out_reg_26_/D] [get_pins     \
out_reg_27_/D] [get_pins out_reg_28_/D] [get_pins out_reg_29_/D] [get_pins     \
out_reg_30_/D] [get_pins inf_mul2_reg/D] [get_pins fasu_op_r2_reg/D] [get_pins \
fasu_op_r1_reg/D] [get_pins sign_reg/D] [get_pins opas_r2_reg/D] [get_pins     \
opas_r1_reg/D] [get_pins fract_i2f_reg_0_/D] [get_pins fract_i2f_reg_1_/D]     \
[get_pins fract_i2f_reg_2_/D] [get_pins fract_i2f_reg_3_/D] [get_pins          \
fract_i2f_reg_4_/D] [get_pins fract_i2f_reg_5_/D] [get_pins                    \
fract_i2f_reg_6_/D] [get_pins fract_i2f_reg_7_/D] [get_pins                    \
fract_i2f_reg_8_/D] [get_pins fract_i2f_reg_9_/D] [get_pins                    \
fract_i2f_reg_10_/D] [get_pins fract_i2f_reg_11_/D] [get_pins                  \
fract_i2f_reg_12_/D] [get_pins fract_i2f_reg_13_/D] [get_pins                  \
fract_i2f_reg_14_/D] [get_pins fract_i2f_reg_15_/D] [get_pins                  \
fract_i2f_reg_16_/D] [get_pins fract_i2f_reg_17_/D] [get_pins                  \
fract_i2f_reg_18_/D] [get_pins fract_i2f_reg_19_/D] [get_pins                  \
fract_i2f_reg_20_/D] [get_pins fract_i2f_reg_21_/D] [get_pins                  \
fract_i2f_reg_22_/D] [get_pins fract_i2f_reg_23_/D] [get_pins                  \
fract_i2f_reg_24_/D] [get_pins fract_i2f_reg_25_/D] [get_pins                  \
fract_i2f_reg_26_/D] [get_pins fract_i2f_reg_27_/D] [get_pins                  \
fract_i2f_reg_28_/D] [get_pins fract_i2f_reg_29_/D] [get_pins                  \
fract_i2f_reg_30_/D] [get_pins fract_i2f_reg_31_/D] [get_pins                  \
fract_i2f_reg_32_/D] [get_pins fract_i2f_reg_33_/D] [get_pins                  \
fract_i2f_reg_34_/D] [get_pins fract_i2f_reg_35_/D] [get_pins                  \
fract_i2f_reg_36_/D] [get_pins fract_i2f_reg_37_/D] [get_pins                  \
fract_i2f_reg_38_/D] [get_pins fract_i2f_reg_39_/D] [get_pins                  \
fract_i2f_reg_40_/D] [get_pins fract_i2f_reg_41_/D] [get_pins                  \
fract_i2f_reg_42_/D] [get_pins fract_i2f_reg_43_/D] [get_pins                  \
fract_i2f_reg_44_/D] [get_pins fract_i2f_reg_45_/D] [get_pins                  \
fract_i2f_reg_46_/D] [get_pins fract_i2f_reg_47_/D] [get_pins opa_r1_reg_0_/D] \
[get_pins opa_r1_reg_1_/D] [get_pins opa_r1_reg_2_/D] [get_pins                \
opa_r1_reg_3_/D] [get_pins opa_r1_reg_4_/D] [get_pins opa_r1_reg_5_/D]         \
[get_pins opa_r1_reg_6_/D] [get_pins opa_r1_reg_7_/D] [get_pins                \
opa_r1_reg_8_/D] [get_pins opa_r1_reg_9_/D] [get_pins opa_r1_reg_10_/D]        \
[get_pins opa_r1_reg_11_/D] [get_pins opa_r1_reg_12_/D] [get_pins              \
opa_r1_reg_13_/D] [get_pins opa_r1_reg_14_/D] [get_pins opa_r1_reg_15_/D]      \
[get_pins opa_r1_reg_16_/D] [get_pins opa_r1_reg_17_/D] [get_pins              \
opa_r1_reg_18_/D] [get_pins opa_r1_reg_19_/D] [get_pins opa_r1_reg_20_/D]      \
[get_pins opa_r1_reg_21_/D] [get_pins opa_r1_reg_22_/D] [get_pins              \
opa_r1_reg_23_/D] [get_pins opa_r1_reg_24_/D] [get_pins opa_r1_reg_25_/D]      \
[get_pins opa_r1_reg_26_/D] [get_pins opa_r1_reg_27_/D] [get_pins              \
opa_r1_reg_28_/D] [get_pins opa_r1_reg_29_/D] [get_pins opa_r1_reg_30_/D]      \
[get_pins exp_r_reg_0_/D] [get_pins exp_r_reg_1_/D] [get_pins exp_r_reg_2_/D]  \
[get_pins exp_r_reg_3_/D] [get_pins exp_r_reg_4_/D] [get_pins exp_r_reg_5_/D]  \
[get_pins exp_r_reg_6_/D] [get_pins exp_r_reg_7_/D] [get_pins                  \
div_opa_ldz_r2_reg_0_/D] [get_pins div_opa_ldz_r2_reg_1_/D] [get_pins          \
div_opa_ldz_r2_reg_2_/D] [get_pins div_opa_ldz_r2_reg_3_/D] [get_pins          \
div_opa_ldz_r2_reg_4_/D] [get_pins div_opa_ldz_r1_reg_0_/D] [get_pins          \
div_opa_ldz_r1_reg_1_/D] [get_pins div_opa_ldz_r1_reg_2_/D] [get_pins          \
div_opa_ldz_r1_reg_3_/D] [get_pins div_opa_ldz_r1_reg_4_/D] [get_pins          \
u6_rem_reg_0_/D] [get_pins u6_rem_reg_1_/D] [get_pins u6_rem_reg_2_/D]         \
[get_pins u6_rem_reg_3_/D] [get_pins u6_rem_reg_4_/D] [get_pins                \
u6_rem_reg_5_/D] [get_pins u6_rem_reg_6_/D] [get_pins u6_rem_reg_7_/D]         \
[get_pins u6_rem_reg_8_/D] [get_pins u6_rem_reg_9_/D] [get_pins                \
u6_rem_reg_10_/D] [get_pins u6_rem_reg_11_/D] [get_pins u6_rem_reg_12_/D]      \
[get_pins u6_rem_reg_13_/D] [get_pins u6_rem_reg_14_/D] [get_pins              \
u6_rem_reg_15_/D] [get_pins u6_rem_reg_16_/D] [get_pins u6_rem_reg_17_/D]      \
[get_pins u6_rem_reg_18_/D] [get_pins u6_rem_reg_19_/D] [get_pins              \
u6_rem_reg_20_/D] [get_pins u6_rem_reg_21_/D] [get_pins u6_rem_reg_22_/D]      \
[get_pins u6_rem_reg_23_/D] [get_pins u6_rem_reg_26_/D] [get_pins              \
u6_rem_reg_27_/D] [get_pins u6_rem_reg_28_/D] [get_pins u6_rem_reg_29_/D]      \
[get_pins u6_rem_reg_30_/D] [get_pins u6_rem_reg_31_/D] [get_pins              \
u6_rem_reg_32_/D] [get_pins u6_rem_reg_33_/D] [get_pins u6_rem_reg_34_/D]      \
[get_pins u6_rem_reg_35_/D] [get_pins u6_rem_reg_36_/D] [get_pins              \
u6_rem_reg_37_/D] [get_pins u6_rem_reg_38_/D] [get_pins u6_rem_reg_39_/D]      \
[get_pins u6_rem_reg_40_/D] [get_pins u6_rem_reg_41_/D] [get_pins              \
u6_rem_reg_42_/D] [get_pins u6_rem_reg_43_/D] [get_pins u6_rem_reg_44_/D]      \
[get_pins u6_rem_reg_45_/D] [get_pins u6_rem_reg_46_/D] [get_pins              \
u6_rem_reg_47_/D] [get_pins u6_rem_reg_48_/D] [get_pins u6_rem_reg_49_/D]      \
[get_pins u6_remainder_reg_0_/D] [get_pins u6_remainder_reg_1_/D] [get_pins    \
u6_remainder_reg_2_/D] [get_pins u6_remainder_reg_3_/D] [get_pins              \
u6_remainder_reg_4_/D] [get_pins u6_remainder_reg_5_/D] [get_pins              \
u6_remainder_reg_6_/D] [get_pins u6_remainder_reg_7_/D] [get_pins              \
u6_remainder_reg_8_/D] [get_pins u6_remainder_reg_9_/D] [get_pins              \
u6_remainder_reg_10_/D] [get_pins u6_remainder_reg_11_/D] [get_pins            \
u6_remainder_reg_12_/D] [get_pins u6_remainder_reg_13_/D] [get_pins            \
u6_remainder_reg_14_/D] [get_pins u6_remainder_reg_15_/D] [get_pins            \
u6_remainder_reg_16_/D] [get_pins u6_remainder_reg_17_/D] [get_pins            \
u6_remainder_reg_18_/D] [get_pins u6_remainder_reg_19_/D] [get_pins            \
u6_remainder_reg_20_/D] [get_pins u6_remainder_reg_21_/D] [get_pins            \
u6_remainder_reg_22_/D] [get_pins u6_remainder_reg_23_/D] [get_pins            \
u6_remainder_reg_26_/D] [get_pins u6_remainder_reg_27_/D] [get_pins            \
u6_remainder_reg_28_/D] [get_pins u6_remainder_reg_29_/D] [get_pins            \
u6_remainder_reg_30_/D] [get_pins u6_remainder_reg_31_/D] [get_pins            \
u6_remainder_reg_32_/D] [get_pins u6_remainder_reg_33_/D] [get_pins            \
u6_remainder_reg_34_/D] [get_pins u6_remainder_reg_35_/D] [get_pins            \
u6_remainder_reg_36_/D] [get_pins u6_remainder_reg_37_/D] [get_pins            \
u6_remainder_reg_38_/D] [get_pins u6_remainder_reg_39_/D] [get_pins            \
u6_remainder_reg_40_/D] [get_pins u6_remainder_reg_41_/D] [get_pins            \
u6_remainder_reg_42_/D] [get_pins u6_remainder_reg_43_/D] [get_pins            \
u6_remainder_reg_44_/D] [get_pins u6_remainder_reg_45_/D] [get_pins            \
u6_remainder_reg_46_/D] [get_pins u6_remainder_reg_47_/D] [get_pins            \
u6_remainder_reg_48_/D] [get_pins u6_remainder_reg_49_/D] [get_pins            \
u6_quo_reg_0_/D] [get_pins u6_quo_reg_1_/D] [get_pins u6_quo_reg_2_/D]         \
[get_pins u6_quo_reg_3_/D] [get_pins u6_quo_reg_4_/D] [get_pins                \
u6_quo_reg_5_/D] [get_pins u6_quo_reg_6_/D] [get_pins u6_quo_reg_7_/D]         \
[get_pins u6_quo_reg_8_/D] [get_pins u6_quo_reg_9_/D] [get_pins                \
u6_quo_reg_10_/D] [get_pins u6_quo_reg_11_/D] [get_pins u6_quo_reg_12_/D]      \
[get_pins u6_quo_reg_13_/D] [get_pins u6_quo_reg_14_/D] [get_pins              \
u6_quo_reg_15_/D] [get_pins u6_quo_reg_16_/D] [get_pins u6_quo_reg_17_/D]      \
[get_pins u6_quo_reg_18_/D] [get_pins u6_quo_reg_19_/D] [get_pins              \
u6_quo_reg_20_/D] [get_pins u6_quo_reg_21_/D] [get_pins u6_quo_reg_22_/D]      \
[get_pins u6_quo_reg_23_/D] [get_pins u6_quo_reg_26_/D] [get_pins              \
u6_quo_reg_27_/D] [get_pins u6_quo_reg_28_/D] [get_pins u6_quo_reg_29_/D]      \
[get_pins u6_quo_reg_30_/D] [get_pins u6_quo_reg_31_/D] [get_pins              \
u6_quo_reg_32_/D] [get_pins u6_quo_reg_33_/D] [get_pins u6_quo_reg_34_/D]      \
[get_pins u6_quo_reg_35_/D] [get_pins u6_quo_reg_36_/D] [get_pins              \
u6_quo_reg_37_/D] [get_pins u6_quo_reg_38_/D] [get_pins u6_quo_reg_39_/D]      \
[get_pins u6_quo_reg_40_/D] [get_pins u6_quo_reg_41_/D] [get_pins              \
u6_quo_reg_42_/D] [get_pins u6_quo_reg_43_/D] [get_pins u6_quo_reg_44_/D]      \
[get_pins u6_quo_reg_45_/D] [get_pins u6_quo_reg_46_/D] [get_pins              \
u6_quo_reg_47_/D] [get_pins u6_quo_reg_48_/D] [get_pins u6_quo_reg_49_/D]      \
[get_pins u6_quo1_reg_0_/D] [get_pins u6_quo1_reg_1_/D] [get_pins              \
u6_quo1_reg_2_/D] [get_pins u6_quo1_reg_3_/D] [get_pins u6_quo1_reg_4_/D]      \
[get_pins u6_quo1_reg_5_/D] [get_pins u6_quo1_reg_6_/D] [get_pins              \
u6_quo1_reg_7_/D] [get_pins u6_quo1_reg_8_/D] [get_pins u6_quo1_reg_9_/D]      \
[get_pins u6_quo1_reg_10_/D] [get_pins u6_quo1_reg_11_/D] [get_pins            \
u6_quo1_reg_12_/D] [get_pins u6_quo1_reg_13_/D] [get_pins u6_quo1_reg_14_/D]   \
[get_pins u6_quo1_reg_15_/D] [get_pins u6_quo1_reg_16_/D] [get_pins            \
u6_quo1_reg_17_/D] [get_pins u6_quo1_reg_18_/D] [get_pins u6_quo1_reg_19_/D]   \
[get_pins u6_quo1_reg_20_/D] [get_pins u6_quo1_reg_21_/D] [get_pins            \
u6_quo1_reg_22_/D] [get_pins u6_quo1_reg_23_/D] [get_pins u6_quo1_reg_26_/D]   \
[get_pins u6_quo1_reg_27_/D] [get_pins u6_quo1_reg_28_/D] [get_pins            \
u6_quo1_reg_29_/D] [get_pins u6_quo1_reg_30_/D] [get_pins u6_quo1_reg_31_/D]   \
[get_pins u6_quo1_reg_32_/D] [get_pins u6_quo1_reg_33_/D] [get_pins            \
u6_quo1_reg_34_/D] [get_pins u6_quo1_reg_35_/D] [get_pins u6_quo1_reg_36_/D]   \
[get_pins u6_quo1_reg_37_/D] [get_pins u6_quo1_reg_38_/D] [get_pins            \
u6_quo1_reg_39_/D] [get_pins u6_quo1_reg_40_/D] [get_pins u6_quo1_reg_41_/D]   \
[get_pins u6_quo1_reg_42_/D] [get_pins u6_quo1_reg_43_/D] [get_pins            \
u6_quo1_reg_44_/D] [get_pins u6_quo1_reg_45_/D] [get_pins u6_quo1_reg_46_/D]   \
[get_pins u6_quo1_reg_47_/D] [get_pins u6_quo1_reg_48_/D] [get_pins            \
u6_quo1_reg_49_/D] [get_pins u5_prod_reg_0_/D] [get_pins u5_prod_reg_1_/D]     \
[get_pins u5_prod_reg_2_/D] [get_pins u5_prod_reg_3_/D] [get_pins              \
u5_prod_reg_4_/D] [get_pins u5_prod_reg_5_/D] [get_pins u5_prod_reg_6_/D]      \
[get_pins u5_prod_reg_7_/D] [get_pins u5_prod_reg_8_/D] [get_pins              \
u5_prod_reg_9_/D] [get_pins u5_prod_reg_10_/D] [get_pins u5_prod_reg_11_/D]    \
[get_pins u5_prod_reg_12_/D] [get_pins u5_prod_reg_13_/D] [get_pins            \
u5_prod_reg_14_/D] [get_pins u5_prod_reg_15_/D] [get_pins u5_prod_reg_16_/D]   \
[get_pins u5_prod_reg_17_/D] [get_pins u5_prod_reg_18_/D] [get_pins            \
u5_prod_reg_19_/D] [get_pins u5_prod_reg_20_/D] [get_pins u5_prod_reg_21_/D]   \
[get_pins u5_prod_reg_22_/D] [get_pins u5_prod_reg_23_/D] [get_pins            \
u5_prod_reg_24_/D] [get_pins u5_prod_reg_25_/D] [get_pins u5_prod_reg_26_/D]   \
[get_pins u5_prod_reg_27_/D] [get_pins u5_prod_reg_28_/D] [get_pins            \
u5_prod_reg_29_/D] [get_pins u5_prod_reg_30_/D] [get_pins u5_prod_reg_31_/D]   \
[get_pins u5_prod_reg_32_/D] [get_pins u5_prod_reg_33_/D] [get_pins            \
u5_prod_reg_34_/D] [get_pins u5_prod_reg_35_/D] [get_pins u5_prod_reg_36_/D]   \
[get_pins u5_prod_reg_37_/D] [get_pins u5_prod_reg_38_/D] [get_pins            \
u5_prod_reg_39_/D] [get_pins u5_prod_reg_40_/D] [get_pins u5_prod_reg_41_/D]   \
[get_pins u5_prod_reg_42_/D] [get_pins u5_prod_reg_43_/D] [get_pins            \
u5_prod_reg_44_/D] [get_pins u5_prod_reg_45_/D] [get_pins u5_prod_reg_46_/D]   \
[get_pins u5_prod_reg_47_/D] [get_pins u5_prod1_reg_0_/D] [get_pins            \
u5_prod1_reg_1_/D] [get_pins u5_prod1_reg_2_/D] [get_pins u5_prod1_reg_3_/D]   \
[get_pins u5_prod1_reg_4_/D] [get_pins u5_prod1_reg_5_/D] [get_pins            \
u5_prod1_reg_6_/D] [get_pins u5_prod1_reg_7_/D] [get_pins u5_prod1_reg_8_/D]   \
[get_pins u5_prod1_reg_9_/D] [get_pins u5_prod1_reg_10_/D] [get_pins           \
u5_prod1_reg_11_/D] [get_pins u5_prod1_reg_12_/D] [get_pins                    \
u5_prod1_reg_13_/D] [get_pins u5_prod1_reg_14_/D] [get_pins                    \
u5_prod1_reg_15_/D] [get_pins u5_prod1_reg_16_/D] [get_pins                    \
u5_prod1_reg_17_/D] [get_pins u5_prod1_reg_18_/D] [get_pins                    \
u5_prod1_reg_19_/D] [get_pins u5_prod1_reg_20_/D] [get_pins                    \
u5_prod1_reg_21_/D] [get_pins u5_prod1_reg_22_/D] [get_pins                    \
u5_prod1_reg_23_/D] [get_pins u5_prod1_reg_24_/D] [get_pins                    \
u5_prod1_reg_25_/D] [get_pins u5_prod1_reg_26_/D] [get_pins                    \
u5_prod1_reg_27_/D] [get_pins u5_prod1_reg_28_/D] [get_pins                    \
u5_prod1_reg_29_/D] [get_pins u5_prod1_reg_30_/D] [get_pins                    \
u5_prod1_reg_31_/D] [get_pins u5_prod1_reg_32_/D] [get_pins                    \
u5_prod1_reg_33_/D] [get_pins u5_prod1_reg_34_/D] [get_pins                    \
u5_prod1_reg_35_/D] [get_pins u5_prod1_reg_36_/D] [get_pins                    \
u5_prod1_reg_37_/D] [get_pins u5_prod1_reg_38_/D] [get_pins                    \
u5_prod1_reg_39_/D] [get_pins u5_prod1_reg_40_/D] [get_pins                    \
u5_prod1_reg_41_/D] [get_pins u5_prod1_reg_42_/D] [get_pins                    \
u5_prod1_reg_43_/D] [get_pins u5_prod1_reg_44_/D] [get_pins                    \
u5_prod1_reg_45_/D] [get_pins u5_prod1_reg_46_/D] [get_pins                    \
u5_prod1_reg_47_/D] [get_pins fract_out_q_reg_0_/D] [get_pins                  \
fract_out_q_reg_1_/D] [get_pins fract_out_q_reg_2_/D] [get_pins                \
fract_out_q_reg_3_/D] [get_pins fract_out_q_reg_4_/D] [get_pins                \
fract_out_q_reg_5_/D] [get_pins fract_out_q_reg_6_/D] [get_pins                \
fract_out_q_reg_7_/D] [get_pins fract_out_q_reg_8_/D] [get_pins                \
fract_out_q_reg_9_/D] [get_pins fract_out_q_reg_10_/D] [get_pins               \
fract_out_q_reg_11_/D] [get_pins fract_out_q_reg_12_/D] [get_pins              \
fract_out_q_reg_13_/D] [get_pins fract_out_q_reg_14_/D] [get_pins              \
fract_out_q_reg_15_/D] [get_pins fract_out_q_reg_16_/D] [get_pins              \
fract_out_q_reg_17_/D] [get_pins fract_out_q_reg_18_/D] [get_pins              \
fract_out_q_reg_19_/D] [get_pins fract_out_q_reg_20_/D] [get_pins              \
fract_out_q_reg_21_/D] [get_pins fract_out_q_reg_22_/D] [get_pins              \
fract_out_q_reg_23_/D] [get_pins fract_out_q_reg_24_/D] [get_pins              \
fract_out_q_reg_25_/D] [get_pins fract_out_q_reg_26_/D] [get_pins              \
fract_out_q_reg_27_/D] [get_pins exp_ovf_r_reg_0_/D] [get_pins                 \
exp_ovf_r_reg_1_/D] [get_pins inf_mul_r_reg/D] [get_pins sign_exe_r_reg/D]     \
[get_pins sign_mul_r_reg/D] [get_pins u2_sign_exe_reg/D] [get_pins             \
u2_sign_reg/D] [get_pins u2_inf_reg/D] [get_pins u2_underflow_reg_0_/D]        \
[get_pins u2_underflow_reg_1_/D] [get_pins u2_underflow_reg_2_/D] [get_pins    \
u2_exp_ovf_reg_0_/D] [get_pins u2_exp_ovf_reg_1_/D] [get_pins                  \
u2_exp_out_reg_0_/D] [get_pins u2_exp_out_reg_1_/D] [get_pins                  \
u2_exp_out_reg_2_/D] [get_pins u2_exp_out_reg_3_/D] [get_pins                  \
u2_exp_out_reg_4_/D] [get_pins u2_exp_out_reg_5_/D] [get_pins                  \
u2_exp_out_reg_6_/D] [get_pins u2_exp_out_reg_7_/D] [get_pins                  \
sign_fasu_r_reg/D] [get_pins u1_fasu_op_reg/D] [get_pins u1_nan_sign_reg/D]    \
[get_pins u1_fracta_eq_fractb_reg/D] [get_pins u1_fracta_lt_fractb_reg/D]      \
[get_pins u1_result_zero_sign_reg/D] [get_pins u1_add_r_reg/D] [get_pins       \
u1_signb_r_reg/D] [get_pins u1_signa_r_reg/D] [get_pins u1_sign_reg/D]         \
[get_pins u1_fractb_out_reg_0_/D] [get_pins u1_fractb_out_reg_1_/D] [get_pins  \
u1_fractb_out_reg_2_/D] [get_pins u1_fractb_out_reg_3_/D] [get_pins            \
u1_fractb_out_reg_4_/D] [get_pins u1_fractb_out_reg_5_/D] [get_pins            \
u1_fractb_out_reg_6_/D] [get_pins u1_fractb_out_reg_7_/D] [get_pins            \
u1_fractb_out_reg_8_/D] [get_pins u1_fractb_out_reg_9_/D] [get_pins            \
u1_fractb_out_reg_10_/D] [get_pins u1_fractb_out_reg_11_/D] [get_pins          \
u1_fractb_out_reg_12_/D] [get_pins u1_fractb_out_reg_13_/D] [get_pins          \
u1_fractb_out_reg_14_/D] [get_pins u1_fractb_out_reg_15_/D] [get_pins          \
u1_fractb_out_reg_16_/D] [get_pins u1_fractb_out_reg_17_/D] [get_pins          \
u1_fractb_out_reg_18_/D] [get_pins u1_fractb_out_reg_19_/D] [get_pins          \
u1_fractb_out_reg_20_/D] [get_pins u1_fractb_out_reg_21_/D] [get_pins          \
u1_fractb_out_reg_22_/D] [get_pins u1_fractb_out_reg_23_/D] [get_pins          \
u1_fractb_out_reg_24_/D] [get_pins u1_fractb_out_reg_25_/D] [get_pins          \
u1_fractb_out_reg_26_/D] [get_pins u1_fracta_out_reg_0_/D] [get_pins           \
u1_fracta_out_reg_1_/D] [get_pins u1_fracta_out_reg_2_/D] [get_pins            \
u1_fracta_out_reg_3_/D] [get_pins u1_fracta_out_reg_4_/D] [get_pins            \
u1_fracta_out_reg_5_/D] [get_pins u1_fracta_out_reg_6_/D] [get_pins            \
u1_fracta_out_reg_7_/D] [get_pins u1_fracta_out_reg_8_/D] [get_pins            \
u1_fracta_out_reg_9_/D] [get_pins u1_fracta_out_reg_10_/D] [get_pins           \
u1_fracta_out_reg_11_/D] [get_pins u1_fracta_out_reg_12_/D] [get_pins          \
u1_fracta_out_reg_13_/D] [get_pins u1_fracta_out_reg_14_/D] [get_pins          \
u1_fracta_out_reg_15_/D] [get_pins u1_fracta_out_reg_16_/D] [get_pins          \
u1_fracta_out_reg_17_/D] [get_pins u1_fracta_out_reg_18_/D] [get_pins          \
u1_fracta_out_reg_19_/D] [get_pins u1_fracta_out_reg_20_/D] [get_pins          \
u1_fracta_out_reg_21_/D] [get_pins u1_fracta_out_reg_22_/D] [get_pins          \
u1_fracta_out_reg_23_/D] [get_pins u1_fracta_out_reg_24_/D] [get_pins          \
u1_fracta_out_reg_25_/D] [get_pins u1_fracta_out_reg_26_/D] [get_pins          \
u1_exp_dn_out_reg_0_/D] [get_pins u1_exp_dn_out_reg_1_/D] [get_pins            \
u1_exp_dn_out_reg_2_/D] [get_pins u1_exp_dn_out_reg_3_/D] [get_pins            \
u1_exp_dn_out_reg_4_/D] [get_pins u1_exp_dn_out_reg_5_/D] [get_pins            \
u1_exp_dn_out_reg_6_/D] [get_pins u1_exp_dn_out_reg_7_/D] [get_pins            \
u0_opb_dn_reg/D] [get_pins u0_opa_dn_reg/D] [get_pins u0_opb_00_reg/D]         \
[get_pins u0_opa_00_reg/D] [get_pins u0_fractb_00_reg/D] [get_pins             \
u0_fracta_00_reg/D] [get_pins u0_expb_00_reg/D] [get_pins u0_expa_00_reg/D]    \
[get_pins u0_opb_inf_reg/D] [get_pins u0_opa_inf_reg/D] [get_pins              \
u0_opb_nan_reg/D] [get_pins u0_opa_nan_reg/D] [get_pins u0_snan_reg/D]         \
[get_pins u0_qnan_reg/D] [get_pins u0_inf_reg/D] [get_pins u0_ind_reg/D]       \
[get_pins u0_snan_r_b_reg/D] [get_pins u0_qnan_r_b_reg/D] [get_pins            \
u0_snan_r_a_reg/D] [get_pins u0_qnan_r_a_reg/D] [get_pins u0_infb_f_r_reg/D]   \
[get_pins u0_infa_f_r_reg/D] [get_pins u0_expb_ff_reg/D] [get_pins             \
u0_expa_ff_reg/D] [get_pins fpu_op_r3_reg_0_/D] [get_pins fpu_op_r3_reg_1_/D]  \
[get_pins fpu_op_r3_reg_2_/D] [get_pins fpu_op_r2_reg_0_/D] [get_pins          \
fpu_op_r2_reg_1_/D] [get_pins fpu_op_r2_reg_2_/D] [get_pins                    \
fpu_op_r1_reg_0_/D] [get_pins fpu_op_r1_reg_1_/D] [get_pins                    \
fpu_op_r1_reg_2_/D] [get_pins rmode_r3_reg_0_/D] [get_pins rmode_r3_reg_1_/D]  \
[get_pins rmode_r2_reg_0_/D] [get_pins rmode_r2_reg_1_/D] [get_pins            \
rmode_r1_reg_0_/D] [get_pins rmode_r1_reg_1_/D] [get_pins opb_r_reg_0_/D]      \
[get_pins opb_r_reg_1_/D] [get_pins opb_r_reg_2_/D] [get_pins opb_r_reg_3_/D]  \
[get_pins opb_r_reg_4_/D] [get_pins opb_r_reg_5_/D] [get_pins opb_r_reg_6_/D]  \
[get_pins opb_r_reg_7_/D] [get_pins opb_r_reg_8_/D] [get_pins opb_r_reg_9_/D]  \
[get_pins opb_r_reg_10_/D] [get_pins opb_r_reg_11_/D] [get_pins                \
opb_r_reg_12_/D] [get_pins opb_r_reg_13_/D] [get_pins opb_r_reg_14_/D]         \
[get_pins opb_r_reg_15_/D] [get_pins opb_r_reg_16_/D] [get_pins                \
opb_r_reg_17_/D] [get_pins opb_r_reg_18_/D] [get_pins opb_r_reg_19_/D]         \
[get_pins opb_r_reg_20_/D] [get_pins opb_r_reg_21_/D] [get_pins                \
opb_r_reg_22_/D] [get_pins opb_r_reg_23_/D] [get_pins opb_r_reg_24_/D]         \
[get_pins opb_r_reg_25_/D] [get_pins opb_r_reg_26_/D] [get_pins                \
opb_r_reg_27_/D] [get_pins opb_r_reg_28_/D] [get_pins opb_r_reg_29_/D]         \
[get_pins opb_r_reg_30_/D] [get_pins opb_r_reg_31_/D] [get_pins                \
opa_r_reg_0_/D] [get_pins opa_r_reg_1_/D] [get_pins opa_r_reg_2_/D] [get_pins  \
opa_r_reg_3_/D] [get_pins opa_r_reg_4_/D] [get_pins opa_r_reg_5_/D] [get_pins  \
opa_r_reg_6_/D] [get_pins opa_r_reg_7_/D] [get_pins opa_r_reg_8_/D] [get_pins  \
opa_r_reg_9_/D] [get_pins opa_r_reg_10_/D] [get_pins opa_r_reg_11_/D]          \
[get_pins opa_r_reg_12_/D] [get_pins opa_r_reg_13_/D] [get_pins                \
opa_r_reg_14_/D] [get_pins opa_r_reg_15_/D] [get_pins opa_r_reg_16_/D]         \
[get_pins opa_r_reg_17_/D] [get_pins opa_r_reg_18_/D] [get_pins                \
opa_r_reg_19_/D] [get_pins opa_r_reg_20_/D] [get_pins opa_r_reg_21_/D]         \
[get_pins opa_r_reg_22_/D] [get_pins opa_r_reg_23_/D] [get_pins                \
opa_r_reg_24_/D] [get_pins opa_r_reg_25_/D] [get_pins opa_r_reg_26_/D]         \
[get_pins opa_r_reg_27_/D] [get_pins opa_r_reg_28_/D] [get_pins                \
opa_r_reg_29_/D] [get_pins opa_r_reg_30_/D] [get_pins opa_r_reg_31_/D]]
group_path -name reg2out  -from [list [get_pins div_by_zero_reg/CK] [get_pins opa_nan_r_reg/CK]         \
[get_pins zero_reg/CK] [get_pins inf_reg/CK] [get_pins qnan_reg/CK] [get_pins  \
snan_reg/CK] [get_pins underflow_reg/CK] [get_pins underflow_fmul_r_reg_0_/CK] \
[get_pins underflow_fmul_r_reg_1_/CK] [get_pins underflow_fmul_r_reg_2_/CK]    \
[get_pins overflow_reg/CK] [get_pins ine_reg/CK] [get_pins out_reg_31_/CK]     \
[get_pins out_reg_0_/CK] [get_pins out_reg_1_/CK] [get_pins out_reg_2_/CK]     \
[get_pins out_reg_3_/CK] [get_pins out_reg_4_/CK] [get_pins out_reg_5_/CK]     \
[get_pins out_reg_6_/CK] [get_pins out_reg_7_/CK] [get_pins out_reg_8_/CK]     \
[get_pins out_reg_9_/CK] [get_pins out_reg_10_/CK] [get_pins out_reg_11_/CK]   \
[get_pins out_reg_12_/CK] [get_pins out_reg_13_/CK] [get_pins out_reg_14_/CK]  \
[get_pins out_reg_15_/CK] [get_pins out_reg_16_/CK] [get_pins out_reg_17_/CK]  \
[get_pins out_reg_18_/CK] [get_pins out_reg_19_/CK] [get_pins out_reg_20_/CK]  \
[get_pins out_reg_21_/CK] [get_pins out_reg_22_/CK] [get_pins out_reg_23_/CK]  \
[get_pins out_reg_24_/CK] [get_pins out_reg_25_/CK] [get_pins out_reg_26_/CK]  \
[get_pins out_reg_27_/CK] [get_pins out_reg_28_/CK] [get_pins out_reg_29_/CK]  \
[get_pins out_reg_30_/CK] [get_pins inf_mul2_reg/CK] [get_pins                 \
fasu_op_r2_reg/CK] [get_pins fasu_op_r1_reg/CK] [get_pins sign_reg/CK]         \
[get_pins opas_r2_reg/CK] [get_pins opas_r1_reg/CK] [get_pins                  \
fract_i2f_reg_0_/CK] [get_pins fract_i2f_reg_1_/CK] [get_pins                  \
fract_i2f_reg_2_/CK] [get_pins fract_i2f_reg_3_/CK] [get_pins                  \
fract_i2f_reg_4_/CK] [get_pins fract_i2f_reg_5_/CK] [get_pins                  \
fract_i2f_reg_6_/CK] [get_pins fract_i2f_reg_7_/CK] [get_pins                  \
fract_i2f_reg_8_/CK] [get_pins fract_i2f_reg_9_/CK] [get_pins                  \
fract_i2f_reg_10_/CK] [get_pins fract_i2f_reg_11_/CK] [get_pins                \
fract_i2f_reg_12_/CK] [get_pins fract_i2f_reg_13_/CK] [get_pins                \
fract_i2f_reg_14_/CK] [get_pins fract_i2f_reg_15_/CK] [get_pins                \
fract_i2f_reg_16_/CK] [get_pins fract_i2f_reg_17_/CK] [get_pins                \
fract_i2f_reg_18_/CK] [get_pins fract_i2f_reg_19_/CK] [get_pins                \
fract_i2f_reg_20_/CK] [get_pins fract_i2f_reg_21_/CK] [get_pins                \
fract_i2f_reg_22_/CK] [get_pins fract_i2f_reg_23_/CK] [get_pins                \
fract_i2f_reg_24_/CK] [get_pins fract_i2f_reg_25_/CK] [get_pins                \
fract_i2f_reg_26_/CK] [get_pins fract_i2f_reg_27_/CK] [get_pins                \
fract_i2f_reg_28_/CK] [get_pins fract_i2f_reg_29_/CK] [get_pins                \
fract_i2f_reg_30_/CK] [get_pins fract_i2f_reg_31_/CK] [get_pins                \
fract_i2f_reg_32_/CK] [get_pins fract_i2f_reg_33_/CK] [get_pins                \
fract_i2f_reg_34_/CK] [get_pins fract_i2f_reg_35_/CK] [get_pins                \
fract_i2f_reg_36_/CK] [get_pins fract_i2f_reg_37_/CK] [get_pins                \
fract_i2f_reg_38_/CK] [get_pins fract_i2f_reg_39_/CK] [get_pins                \
fract_i2f_reg_40_/CK] [get_pins fract_i2f_reg_41_/CK] [get_pins                \
fract_i2f_reg_42_/CK] [get_pins fract_i2f_reg_43_/CK] [get_pins                \
fract_i2f_reg_44_/CK] [get_pins fract_i2f_reg_45_/CK] [get_pins                \
fract_i2f_reg_46_/CK] [get_pins fract_i2f_reg_47_/CK] [get_pins                \
opa_r1_reg_0_/CK] [get_pins opa_r1_reg_1_/CK] [get_pins opa_r1_reg_2_/CK]      \
[get_pins opa_r1_reg_3_/CK] [get_pins opa_r1_reg_4_/CK] [get_pins              \
opa_r1_reg_5_/CK] [get_pins opa_r1_reg_6_/CK] [get_pins opa_r1_reg_7_/CK]      \
[get_pins opa_r1_reg_8_/CK] [get_pins opa_r1_reg_9_/CK] [get_pins              \
opa_r1_reg_10_/CK] [get_pins opa_r1_reg_11_/CK] [get_pins opa_r1_reg_12_/CK]   \
[get_pins opa_r1_reg_13_/CK] [get_pins opa_r1_reg_14_/CK] [get_pins            \
opa_r1_reg_15_/CK] [get_pins opa_r1_reg_16_/CK] [get_pins opa_r1_reg_17_/CK]   \
[get_pins opa_r1_reg_18_/CK] [get_pins opa_r1_reg_19_/CK] [get_pins            \
opa_r1_reg_20_/CK] [get_pins opa_r1_reg_21_/CK] [get_pins opa_r1_reg_22_/CK]   \
[get_pins opa_r1_reg_23_/CK] [get_pins opa_r1_reg_24_/CK] [get_pins            \
opa_r1_reg_25_/CK] [get_pins opa_r1_reg_26_/CK] [get_pins opa_r1_reg_27_/CK]   \
[get_pins opa_r1_reg_28_/CK] [get_pins opa_r1_reg_29_/CK] [get_pins            \
opa_r1_reg_30_/CK] [get_pins exp_r_reg_0_/CK] [get_pins exp_r_reg_1_/CK]       \
[get_pins exp_r_reg_2_/CK] [get_pins exp_r_reg_3_/CK] [get_pins                \
exp_r_reg_4_/CK] [get_pins exp_r_reg_5_/CK] [get_pins exp_r_reg_6_/CK]         \
[get_pins exp_r_reg_7_/CK] [get_pins div_opa_ldz_r2_reg_0_/CK] [get_pins       \
div_opa_ldz_r2_reg_1_/CK] [get_pins div_opa_ldz_r2_reg_2_/CK] [get_pins        \
div_opa_ldz_r2_reg_3_/CK] [get_pins div_opa_ldz_r2_reg_4_/CK] [get_pins        \
div_opa_ldz_r1_reg_0_/CK] [get_pins div_opa_ldz_r1_reg_1_/CK] [get_pins        \
div_opa_ldz_r1_reg_2_/CK] [get_pins div_opa_ldz_r1_reg_3_/CK] [get_pins        \
div_opa_ldz_r1_reg_4_/CK] [get_pins u6_rem_reg_0_/CK] [get_pins                \
u6_rem_reg_1_/CK] [get_pins u6_rem_reg_2_/CK] [get_pins u6_rem_reg_3_/CK]      \
[get_pins u6_rem_reg_4_/CK] [get_pins u6_rem_reg_5_/CK] [get_pins              \
u6_rem_reg_6_/CK] [get_pins u6_rem_reg_7_/CK] [get_pins u6_rem_reg_8_/CK]      \
[get_pins u6_rem_reg_9_/CK] [get_pins u6_rem_reg_10_/CK] [get_pins             \
u6_rem_reg_11_/CK] [get_pins u6_rem_reg_12_/CK] [get_pins u6_rem_reg_13_/CK]   \
[get_pins u6_rem_reg_14_/CK] [get_pins u6_rem_reg_15_/CK] [get_pins            \
u6_rem_reg_16_/CK] [get_pins u6_rem_reg_17_/CK] [get_pins u6_rem_reg_18_/CK]   \
[get_pins u6_rem_reg_19_/CK] [get_pins u6_rem_reg_20_/CK] [get_pins            \
u6_rem_reg_21_/CK] [get_pins u6_rem_reg_22_/CK] [get_pins u6_rem_reg_23_/CK]   \
[get_pins u6_rem_reg_26_/CK] [get_pins u6_rem_reg_27_/CK] [get_pins            \
u6_rem_reg_28_/CK] [get_pins u6_rem_reg_29_/CK] [get_pins u6_rem_reg_30_/CK]   \
[get_pins u6_rem_reg_31_/CK] [get_pins u6_rem_reg_32_/CK] [get_pins            \
u6_rem_reg_33_/CK] [get_pins u6_rem_reg_34_/CK] [get_pins u6_rem_reg_35_/CK]   \
[get_pins u6_rem_reg_36_/CK] [get_pins u6_rem_reg_37_/CK] [get_pins            \
u6_rem_reg_38_/CK] [get_pins u6_rem_reg_39_/CK] [get_pins u6_rem_reg_40_/CK]   \
[get_pins u6_rem_reg_41_/CK] [get_pins u6_rem_reg_42_/CK] [get_pins            \
u6_rem_reg_43_/CK] [get_pins u6_rem_reg_44_/CK] [get_pins u6_rem_reg_45_/CK]   \
[get_pins u6_rem_reg_46_/CK] [get_pins u6_rem_reg_47_/CK] [get_pins            \
u6_rem_reg_48_/CK] [get_pins u6_rem_reg_49_/CK] [get_pins                      \
u6_remainder_reg_0_/CK] [get_pins u6_remainder_reg_1_/CK] [get_pins            \
u6_remainder_reg_2_/CK] [get_pins u6_remainder_reg_3_/CK] [get_pins            \
u6_remainder_reg_4_/CK] [get_pins u6_remainder_reg_5_/CK] [get_pins            \
u6_remainder_reg_6_/CK] [get_pins u6_remainder_reg_7_/CK] [get_pins            \
u6_remainder_reg_8_/CK] [get_pins u6_remainder_reg_9_/CK] [get_pins            \
u6_remainder_reg_10_/CK] [get_pins u6_remainder_reg_11_/CK] [get_pins          \
u6_remainder_reg_12_/CK] [get_pins u6_remainder_reg_13_/CK] [get_pins          \
u6_remainder_reg_14_/CK] [get_pins u6_remainder_reg_15_/CK] [get_pins          \
u6_remainder_reg_16_/CK] [get_pins u6_remainder_reg_17_/CK] [get_pins          \
u6_remainder_reg_18_/CK] [get_pins u6_remainder_reg_19_/CK] [get_pins          \
u6_remainder_reg_20_/CK] [get_pins u6_remainder_reg_21_/CK] [get_pins          \
u6_remainder_reg_22_/CK] [get_pins u6_remainder_reg_23_/CK] [get_pins          \
u6_remainder_reg_26_/CK] [get_pins u6_remainder_reg_27_/CK] [get_pins          \
u6_remainder_reg_28_/CK] [get_pins u6_remainder_reg_29_/CK] [get_pins          \
u6_remainder_reg_30_/CK] [get_pins u6_remainder_reg_31_/CK] [get_pins          \
u6_remainder_reg_32_/CK] [get_pins u6_remainder_reg_33_/CK] [get_pins          \
u6_remainder_reg_34_/CK] [get_pins u6_remainder_reg_35_/CK] [get_pins          \
u6_remainder_reg_36_/CK] [get_pins u6_remainder_reg_37_/CK] [get_pins          \
u6_remainder_reg_38_/CK] [get_pins u6_remainder_reg_39_/CK] [get_pins          \
u6_remainder_reg_40_/CK] [get_pins u6_remainder_reg_41_/CK] [get_pins          \
u6_remainder_reg_42_/CK] [get_pins u6_remainder_reg_43_/CK] [get_pins          \
u6_remainder_reg_44_/CK] [get_pins u6_remainder_reg_45_/CK] [get_pins          \
u6_remainder_reg_46_/CK] [get_pins u6_remainder_reg_47_/CK] [get_pins          \
u6_remainder_reg_48_/CK] [get_pins u6_remainder_reg_49_/CK] [get_pins          \
u6_quo_reg_0_/CK] [get_pins u6_quo_reg_1_/CK] [get_pins u6_quo_reg_2_/CK]      \
[get_pins u6_quo_reg_3_/CK] [get_pins u6_quo_reg_4_/CK] [get_pins              \
u6_quo_reg_5_/CK] [get_pins u6_quo_reg_6_/CK] [get_pins u6_quo_reg_7_/CK]      \
[get_pins u6_quo_reg_8_/CK] [get_pins u6_quo_reg_9_/CK] [get_pins              \
u6_quo_reg_10_/CK] [get_pins u6_quo_reg_11_/CK] [get_pins u6_quo_reg_12_/CK]   \
[get_pins u6_quo_reg_13_/CK] [get_pins u6_quo_reg_14_/CK] [get_pins            \
u6_quo_reg_15_/CK] [get_pins u6_quo_reg_16_/CK] [get_pins u6_quo_reg_17_/CK]   \
[get_pins u6_quo_reg_18_/CK] [get_pins u6_quo_reg_19_/CK] [get_pins            \
u6_quo_reg_20_/CK] [get_pins u6_quo_reg_21_/CK] [get_pins u6_quo_reg_22_/CK]   \
[get_pins u6_quo_reg_23_/CK] [get_pins u6_quo_reg_26_/CK] [get_pins            \
u6_quo_reg_27_/CK] [get_pins u6_quo_reg_28_/CK] [get_pins u6_quo_reg_29_/CK]   \
[get_pins u6_quo_reg_30_/CK] [get_pins u6_quo_reg_31_/CK] [get_pins            \
u6_quo_reg_32_/CK] [get_pins u6_quo_reg_33_/CK] [get_pins u6_quo_reg_34_/CK]   \
[get_pins u6_quo_reg_35_/CK] [get_pins u6_quo_reg_36_/CK] [get_pins            \
u6_quo_reg_37_/CK] [get_pins u6_quo_reg_38_/CK] [get_pins u6_quo_reg_39_/CK]   \
[get_pins u6_quo_reg_40_/CK] [get_pins u6_quo_reg_41_/CK] [get_pins            \
u6_quo_reg_42_/CK] [get_pins u6_quo_reg_43_/CK] [get_pins u6_quo_reg_44_/CK]   \
[get_pins u6_quo_reg_45_/CK] [get_pins u6_quo_reg_46_/CK] [get_pins            \
u6_quo_reg_47_/CK] [get_pins u6_quo_reg_48_/CK] [get_pins u6_quo_reg_49_/CK]   \
[get_pins u6_quo1_reg_0_/CK] [get_pins u6_quo1_reg_1_/CK] [get_pins            \
u6_quo1_reg_2_/CK] [get_pins u6_quo1_reg_3_/CK] [get_pins u6_quo1_reg_4_/CK]   \
[get_pins u6_quo1_reg_5_/CK] [get_pins u6_quo1_reg_6_/CK] [get_pins            \
u6_quo1_reg_7_/CK] [get_pins u6_quo1_reg_8_/CK] [get_pins u6_quo1_reg_9_/CK]   \
[get_pins u6_quo1_reg_10_/CK] [get_pins u6_quo1_reg_11_/CK] [get_pins          \
u6_quo1_reg_12_/CK] [get_pins u6_quo1_reg_13_/CK] [get_pins                    \
u6_quo1_reg_14_/CK] [get_pins u6_quo1_reg_15_/CK] [get_pins                    \
u6_quo1_reg_16_/CK] [get_pins u6_quo1_reg_17_/CK] [get_pins                    \
u6_quo1_reg_18_/CK] [get_pins u6_quo1_reg_19_/CK] [get_pins                    \
u6_quo1_reg_20_/CK] [get_pins u6_quo1_reg_21_/CK] [get_pins                    \
u6_quo1_reg_22_/CK] [get_pins u6_quo1_reg_23_/CK] [get_pins                    \
u6_quo1_reg_26_/CK] [get_pins u6_quo1_reg_27_/CK] [get_pins                    \
u6_quo1_reg_28_/CK] [get_pins u6_quo1_reg_29_/CK] [get_pins                    \
u6_quo1_reg_30_/CK] [get_pins u6_quo1_reg_31_/CK] [get_pins                    \
u6_quo1_reg_32_/CK] [get_pins u6_quo1_reg_33_/CK] [get_pins                    \
u6_quo1_reg_34_/CK] [get_pins u6_quo1_reg_35_/CK] [get_pins                    \
u6_quo1_reg_36_/CK] [get_pins u6_quo1_reg_37_/CK] [get_pins                    \
u6_quo1_reg_38_/CK] [get_pins u6_quo1_reg_39_/CK] [get_pins                    \
u6_quo1_reg_40_/CK] [get_pins u6_quo1_reg_41_/CK] [get_pins                    \
u6_quo1_reg_42_/CK] [get_pins u6_quo1_reg_43_/CK] [get_pins                    \
u6_quo1_reg_44_/CK] [get_pins u6_quo1_reg_45_/CK] [get_pins                    \
u6_quo1_reg_46_/CK] [get_pins u6_quo1_reg_47_/CK] [get_pins                    \
u6_quo1_reg_48_/CK] [get_pins u6_quo1_reg_49_/CK] [get_pins u5_prod_reg_0_/CK] \
[get_pins u5_prod_reg_1_/CK] [get_pins u5_prod_reg_2_/CK] [get_pins            \
u5_prod_reg_3_/CK] [get_pins u5_prod_reg_4_/CK] [get_pins u5_prod_reg_5_/CK]   \
[get_pins u5_prod_reg_6_/CK] [get_pins u5_prod_reg_7_/CK] [get_pins            \
u5_prod_reg_8_/CK] [get_pins u5_prod_reg_9_/CK] [get_pins u5_prod_reg_10_/CK]  \
[get_pins u5_prod_reg_11_/CK] [get_pins u5_prod_reg_12_/CK] [get_pins          \
u5_prod_reg_13_/CK] [get_pins u5_prod_reg_14_/CK] [get_pins                    \
u5_prod_reg_15_/CK] [get_pins u5_prod_reg_16_/CK] [get_pins                    \
u5_prod_reg_17_/CK] [get_pins u5_prod_reg_18_/CK] [get_pins                    \
u5_prod_reg_19_/CK] [get_pins u5_prod_reg_20_/CK] [get_pins                    \
u5_prod_reg_21_/CK] [get_pins u5_prod_reg_22_/CK] [get_pins                    \
u5_prod_reg_23_/CK] [get_pins u5_prod_reg_24_/CK] [get_pins                    \
u5_prod_reg_25_/CK] [get_pins u5_prod_reg_26_/CK] [get_pins                    \
u5_prod_reg_27_/CK] [get_pins u5_prod_reg_28_/CK] [get_pins                    \
u5_prod_reg_29_/CK] [get_pins u5_prod_reg_30_/CK] [get_pins                    \
u5_prod_reg_31_/CK] [get_pins u5_prod_reg_32_/CK] [get_pins                    \
u5_prod_reg_33_/CK] [get_pins u5_prod_reg_34_/CK] [get_pins                    \
u5_prod_reg_35_/CK] [get_pins u5_prod_reg_36_/CK] [get_pins                    \
u5_prod_reg_37_/CK] [get_pins u5_prod_reg_38_/CK] [get_pins                    \
u5_prod_reg_39_/CK] [get_pins u5_prod_reg_40_/CK] [get_pins                    \
u5_prod_reg_41_/CK] [get_pins u5_prod_reg_42_/CK] [get_pins                    \
u5_prod_reg_43_/CK] [get_pins u5_prod_reg_44_/CK] [get_pins                    \
u5_prod_reg_45_/CK] [get_pins u5_prod_reg_46_/CK] [get_pins                    \
u5_prod_reg_47_/CK] [get_pins u5_prod1_reg_0_/CK] [get_pins                    \
u5_prod1_reg_1_/CK] [get_pins u5_prod1_reg_2_/CK] [get_pins                    \
u5_prod1_reg_3_/CK] [get_pins u5_prod1_reg_4_/CK] [get_pins                    \
u5_prod1_reg_5_/CK] [get_pins u5_prod1_reg_6_/CK] [get_pins                    \
u5_prod1_reg_7_/CK] [get_pins u5_prod1_reg_8_/CK] [get_pins                    \
u5_prod1_reg_9_/CK] [get_pins u5_prod1_reg_10_/CK] [get_pins                   \
u5_prod1_reg_11_/CK] [get_pins u5_prod1_reg_12_/CK] [get_pins                  \
u5_prod1_reg_13_/CK] [get_pins u5_prod1_reg_14_/CK] [get_pins                  \
u5_prod1_reg_15_/CK] [get_pins u5_prod1_reg_16_/CK] [get_pins                  \
u5_prod1_reg_17_/CK] [get_pins u5_prod1_reg_18_/CK] [get_pins                  \
u5_prod1_reg_19_/CK] [get_pins u5_prod1_reg_20_/CK] [get_pins                  \
u5_prod1_reg_21_/CK] [get_pins u5_prod1_reg_22_/CK] [get_pins                  \
u5_prod1_reg_23_/CK] [get_pins u5_prod1_reg_24_/CK] [get_pins                  \
u5_prod1_reg_25_/CK] [get_pins u5_prod1_reg_26_/CK] [get_pins                  \
u5_prod1_reg_27_/CK] [get_pins u5_prod1_reg_28_/CK] [get_pins                  \
u5_prod1_reg_29_/CK] [get_pins u5_prod1_reg_30_/CK] [get_pins                  \
u5_prod1_reg_31_/CK] [get_pins u5_prod1_reg_32_/CK] [get_pins                  \
u5_prod1_reg_33_/CK] [get_pins u5_prod1_reg_34_/CK] [get_pins                  \
u5_prod1_reg_35_/CK] [get_pins u5_prod1_reg_36_/CK] [get_pins                  \
u5_prod1_reg_37_/CK] [get_pins u5_prod1_reg_38_/CK] [get_pins                  \
u5_prod1_reg_39_/CK] [get_pins u5_prod1_reg_40_/CK] [get_pins                  \
u5_prod1_reg_41_/CK] [get_pins u5_prod1_reg_42_/CK] [get_pins                  \
u5_prod1_reg_43_/CK] [get_pins u5_prod1_reg_44_/CK] [get_pins                  \
u5_prod1_reg_45_/CK] [get_pins u5_prod1_reg_46_/CK] [get_pins                  \
u5_prod1_reg_47_/CK] [get_pins fract_out_q_reg_0_/CK] [get_pins                \
fract_out_q_reg_1_/CK] [get_pins fract_out_q_reg_2_/CK] [get_pins              \
fract_out_q_reg_3_/CK] [get_pins fract_out_q_reg_4_/CK] [get_pins              \
fract_out_q_reg_5_/CK] [get_pins fract_out_q_reg_6_/CK] [get_pins              \
fract_out_q_reg_7_/CK] [get_pins fract_out_q_reg_8_/CK] [get_pins              \
fract_out_q_reg_9_/CK] [get_pins fract_out_q_reg_10_/CK] [get_pins             \
fract_out_q_reg_11_/CK] [get_pins fract_out_q_reg_12_/CK] [get_pins            \
fract_out_q_reg_13_/CK] [get_pins fract_out_q_reg_14_/CK] [get_pins            \
fract_out_q_reg_15_/CK] [get_pins fract_out_q_reg_16_/CK] [get_pins            \
fract_out_q_reg_17_/CK] [get_pins fract_out_q_reg_18_/CK] [get_pins            \
fract_out_q_reg_19_/CK] [get_pins fract_out_q_reg_20_/CK] [get_pins            \
fract_out_q_reg_21_/CK] [get_pins fract_out_q_reg_22_/CK] [get_pins            \
fract_out_q_reg_23_/CK] [get_pins fract_out_q_reg_24_/CK] [get_pins            \
fract_out_q_reg_25_/CK] [get_pins fract_out_q_reg_26_/CK] [get_pins            \
fract_out_q_reg_27_/CK] [get_pins exp_ovf_r_reg_0_/CK] [get_pins               \
exp_ovf_r_reg_1_/CK] [get_pins inf_mul_r_reg/CK] [get_pins sign_exe_r_reg/CK]  \
[get_pins sign_mul_r_reg/CK] [get_pins u2_sign_exe_reg/CK] [get_pins           \
u2_sign_reg/CK] [get_pins u2_inf_reg/CK] [get_pins u2_underflow_reg_0_/CK]     \
[get_pins u2_underflow_reg_1_/CK] [get_pins u2_underflow_reg_2_/CK] [get_pins  \
u2_exp_ovf_reg_0_/CK] [get_pins u2_exp_ovf_reg_1_/CK] [get_pins                \
u2_exp_out_reg_0_/CK] [get_pins u2_exp_out_reg_1_/CK] [get_pins                \
u2_exp_out_reg_2_/CK] [get_pins u2_exp_out_reg_3_/CK] [get_pins                \
u2_exp_out_reg_4_/CK] [get_pins u2_exp_out_reg_5_/CK] [get_pins                \
u2_exp_out_reg_6_/CK] [get_pins u2_exp_out_reg_7_/CK] [get_pins                \
sign_fasu_r_reg/CK] [get_pins u1_fasu_op_reg/CK] [get_pins u1_nan_sign_reg/CK] \
[get_pins u1_fracta_eq_fractb_reg/CK] [get_pins u1_fracta_lt_fractb_reg/CK]    \
[get_pins u1_result_zero_sign_reg/CK] [get_pins u1_add_r_reg/CK] [get_pins     \
u1_signb_r_reg/CK] [get_pins u1_signa_r_reg/CK] [get_pins u1_sign_reg/CK]      \
[get_pins u1_fractb_out_reg_0_/CK] [get_pins u1_fractb_out_reg_1_/CK]          \
[get_pins u1_fractb_out_reg_2_/CK] [get_pins u1_fractb_out_reg_3_/CK]          \
[get_pins u1_fractb_out_reg_4_/CK] [get_pins u1_fractb_out_reg_5_/CK]          \
[get_pins u1_fractb_out_reg_6_/CK] [get_pins u1_fractb_out_reg_7_/CK]          \
[get_pins u1_fractb_out_reg_8_/CK] [get_pins u1_fractb_out_reg_9_/CK]          \
[get_pins u1_fractb_out_reg_10_/CK] [get_pins u1_fractb_out_reg_11_/CK]        \
[get_pins u1_fractb_out_reg_12_/CK] [get_pins u1_fractb_out_reg_13_/CK]        \
[get_pins u1_fractb_out_reg_14_/CK] [get_pins u1_fractb_out_reg_15_/CK]        \
[get_pins u1_fractb_out_reg_16_/CK] [get_pins u1_fractb_out_reg_17_/CK]        \
[get_pins u1_fractb_out_reg_18_/CK] [get_pins u1_fractb_out_reg_19_/CK]        \
[get_pins u1_fractb_out_reg_20_/CK] [get_pins u1_fractb_out_reg_21_/CK]        \
[get_pins u1_fractb_out_reg_22_/CK] [get_pins u1_fractb_out_reg_23_/CK]        \
[get_pins u1_fractb_out_reg_24_/CK] [get_pins u1_fractb_out_reg_25_/CK]        \
[get_pins u1_fractb_out_reg_26_/CK] [get_pins u1_fracta_out_reg_0_/CK]         \
[get_pins u1_fracta_out_reg_1_/CK] [get_pins u1_fracta_out_reg_2_/CK]          \
[get_pins u1_fracta_out_reg_3_/CK] [get_pins u1_fracta_out_reg_4_/CK]          \
[get_pins u1_fracta_out_reg_5_/CK] [get_pins u1_fracta_out_reg_6_/CK]          \
[get_pins u1_fracta_out_reg_7_/CK] [get_pins u1_fracta_out_reg_8_/CK]          \
[get_pins u1_fracta_out_reg_9_/CK] [get_pins u1_fracta_out_reg_10_/CK]         \
[get_pins u1_fracta_out_reg_11_/CK] [get_pins u1_fracta_out_reg_12_/CK]        \
[get_pins u1_fracta_out_reg_13_/CK] [get_pins u1_fracta_out_reg_14_/CK]        \
[get_pins u1_fracta_out_reg_15_/CK] [get_pins u1_fracta_out_reg_16_/CK]        \
[get_pins u1_fracta_out_reg_17_/CK] [get_pins u1_fracta_out_reg_18_/CK]        \
[get_pins u1_fracta_out_reg_19_/CK] [get_pins u1_fracta_out_reg_20_/CK]        \
[get_pins u1_fracta_out_reg_21_/CK] [get_pins u1_fracta_out_reg_22_/CK]        \
[get_pins u1_fracta_out_reg_23_/CK] [get_pins u1_fracta_out_reg_24_/CK]        \
[get_pins u1_fracta_out_reg_25_/CK] [get_pins u1_fracta_out_reg_26_/CK]        \
[get_pins u1_exp_dn_out_reg_0_/CK] [get_pins u1_exp_dn_out_reg_1_/CK]          \
[get_pins u1_exp_dn_out_reg_2_/CK] [get_pins u1_exp_dn_out_reg_3_/CK]          \
[get_pins u1_exp_dn_out_reg_4_/CK] [get_pins u1_exp_dn_out_reg_5_/CK]          \
[get_pins u1_exp_dn_out_reg_6_/CK] [get_pins u1_exp_dn_out_reg_7_/CK]          \
[get_pins u0_opb_dn_reg/CK] [get_pins u0_opa_dn_reg/CK] [get_pins              \
u0_opb_00_reg/CK] [get_pins u0_opa_00_reg/CK] [get_pins u0_fractb_00_reg/CK]   \
[get_pins u0_fracta_00_reg/CK] [get_pins u0_expb_00_reg/CK] [get_pins          \
u0_expa_00_reg/CK] [get_pins u0_opb_inf_reg/CK] [get_pins u0_opa_inf_reg/CK]   \
[get_pins u0_opb_nan_reg/CK] [get_pins u0_opa_nan_reg/CK] [get_pins            \
u0_snan_reg/CK] [get_pins u0_qnan_reg/CK] [get_pins u0_inf_reg/CK] [get_pins   \
u0_ind_reg/CK] [get_pins u0_snan_r_b_reg/CK] [get_pins u0_qnan_r_b_reg/CK]     \
[get_pins u0_snan_r_a_reg/CK] [get_pins u0_qnan_r_a_reg/CK] [get_pins          \
u0_infb_f_r_reg/CK] [get_pins u0_infa_f_r_reg/CK] [get_pins u0_expb_ff_reg/CK] \
[get_pins u0_expa_ff_reg/CK] [get_pins fpu_op_r3_reg_0_/CK] [get_pins          \
fpu_op_r3_reg_1_/CK] [get_pins fpu_op_r3_reg_2_/CK] [get_pins                  \
fpu_op_r2_reg_0_/CK] [get_pins fpu_op_r2_reg_1_/CK] [get_pins                  \
fpu_op_r2_reg_2_/CK] [get_pins fpu_op_r1_reg_0_/CK] [get_pins                  \
fpu_op_r1_reg_1_/CK] [get_pins fpu_op_r1_reg_2_/CK] [get_pins                  \
rmode_r3_reg_0_/CK] [get_pins rmode_r3_reg_1_/CK] [get_pins                    \
rmode_r2_reg_0_/CK] [get_pins rmode_r2_reg_1_/CK] [get_pins                    \
rmode_r1_reg_0_/CK] [get_pins rmode_r1_reg_1_/CK] [get_pins opb_r_reg_0_/CK]   \
[get_pins opb_r_reg_1_/CK] [get_pins opb_r_reg_2_/CK] [get_pins                \
opb_r_reg_3_/CK] [get_pins opb_r_reg_4_/CK] [get_pins opb_r_reg_5_/CK]         \
[get_pins opb_r_reg_6_/CK] [get_pins opb_r_reg_7_/CK] [get_pins                \
opb_r_reg_8_/CK] [get_pins opb_r_reg_9_/CK] [get_pins opb_r_reg_10_/CK]        \
[get_pins opb_r_reg_11_/CK] [get_pins opb_r_reg_12_/CK] [get_pins              \
opb_r_reg_13_/CK] [get_pins opb_r_reg_14_/CK] [get_pins opb_r_reg_15_/CK]      \
[get_pins opb_r_reg_16_/CK] [get_pins opb_r_reg_17_/CK] [get_pins              \
opb_r_reg_18_/CK] [get_pins opb_r_reg_19_/CK] [get_pins opb_r_reg_20_/CK]      \
[get_pins opb_r_reg_21_/CK] [get_pins opb_r_reg_22_/CK] [get_pins              \
opb_r_reg_23_/CK] [get_pins opb_r_reg_24_/CK] [get_pins opb_r_reg_25_/CK]      \
[get_pins opb_r_reg_26_/CK] [get_pins opb_r_reg_27_/CK] [get_pins              \
opb_r_reg_28_/CK] [get_pins opb_r_reg_29_/CK] [get_pins opb_r_reg_30_/CK]      \
[get_pins opb_r_reg_31_/CK] [get_pins opa_r_reg_0_/CK] [get_pins               \
opa_r_reg_1_/CK] [get_pins opa_r_reg_2_/CK] [get_pins opa_r_reg_3_/CK]         \
[get_pins opa_r_reg_4_/CK] [get_pins opa_r_reg_5_/CK] [get_pins                \
opa_r_reg_6_/CK] [get_pins opa_r_reg_7_/CK] [get_pins opa_r_reg_8_/CK]         \
[get_pins opa_r_reg_9_/CK] [get_pins opa_r_reg_10_/CK] [get_pins               \
opa_r_reg_11_/CK] [get_pins opa_r_reg_12_/CK] [get_pins opa_r_reg_13_/CK]      \
[get_pins opa_r_reg_14_/CK] [get_pins opa_r_reg_15_/CK] [get_pins              \
opa_r_reg_16_/CK] [get_pins opa_r_reg_17_/CK] [get_pins opa_r_reg_18_/CK]      \
[get_pins opa_r_reg_19_/CK] [get_pins opa_r_reg_20_/CK] [get_pins              \
opa_r_reg_21_/CK] [get_pins opa_r_reg_22_/CK] [get_pins opa_r_reg_23_/CK]      \
[get_pins opa_r_reg_24_/CK] [get_pins opa_r_reg_25_/CK] [get_pins              \
opa_r_reg_26_/CK] [get_pins opa_r_reg_27_/CK] [get_pins opa_r_reg_28_/CK]      \
[get_pins opa_r_reg_29_/CK] [get_pins opa_r_reg_30_/CK] [get_pins              \
opa_r_reg_31_/CK]]  -to [list [get_ports {out[31]}] [get_ports {out[30]}] [get_ports {out[29]}]   \
[get_ports {out[28]}] [get_ports {out[27]}] [get_ports {out[26]}] [get_ports   \
{out[25]}] [get_ports {out[24]}] [get_ports {out[23]}] [get_ports {out[22]}]   \
[get_ports {out[21]}] [get_ports {out[20]}] [get_ports {out[19]}] [get_ports   \
{out[18]}] [get_ports {out[17]}] [get_ports {out[16]}] [get_ports {out[15]}]   \
[get_ports {out[14]}] [get_ports {out[13]}] [get_ports {out[12]}] [get_ports   \
{out[11]}] [get_ports {out[10]}] [get_ports {out[9]}] [get_ports {out[8]}]     \
[get_ports {out[7]}] [get_ports {out[6]}] [get_ports {out[5]}] [get_ports      \
{out[4]}] [get_ports {out[3]}] [get_ports {out[2]}] [get_ports {out[1]}]       \
[get_ports {out[0]}] [get_ports inf] [get_ports snan] [get_ports qnan]         \
[get_ports ine] [get_ports overflow] [get_ports underflow] [get_ports zero]    \
[get_ports div_by_zero]]
group_path -name reg2reg  -from [list [get_pins div_by_zero_reg/CK] [get_pins opa_nan_r_reg/CK]         \
[get_pins zero_reg/CK] [get_pins inf_reg/CK] [get_pins qnan_reg/CK] [get_pins  \
snan_reg/CK] [get_pins underflow_reg/CK] [get_pins underflow_fmul_r_reg_0_/CK] \
[get_pins underflow_fmul_r_reg_1_/CK] [get_pins underflow_fmul_r_reg_2_/CK]    \
[get_pins overflow_reg/CK] [get_pins ine_reg/CK] [get_pins out_reg_31_/CK]     \
[get_pins out_reg_0_/CK] [get_pins out_reg_1_/CK] [get_pins out_reg_2_/CK]     \
[get_pins out_reg_3_/CK] [get_pins out_reg_4_/CK] [get_pins out_reg_5_/CK]     \
[get_pins out_reg_6_/CK] [get_pins out_reg_7_/CK] [get_pins out_reg_8_/CK]     \
[get_pins out_reg_9_/CK] [get_pins out_reg_10_/CK] [get_pins out_reg_11_/CK]   \
[get_pins out_reg_12_/CK] [get_pins out_reg_13_/CK] [get_pins out_reg_14_/CK]  \
[get_pins out_reg_15_/CK] [get_pins out_reg_16_/CK] [get_pins out_reg_17_/CK]  \
[get_pins out_reg_18_/CK] [get_pins out_reg_19_/CK] [get_pins out_reg_20_/CK]  \
[get_pins out_reg_21_/CK] [get_pins out_reg_22_/CK] [get_pins out_reg_23_/CK]  \
[get_pins out_reg_24_/CK] [get_pins out_reg_25_/CK] [get_pins out_reg_26_/CK]  \
[get_pins out_reg_27_/CK] [get_pins out_reg_28_/CK] [get_pins out_reg_29_/CK]  \
[get_pins out_reg_30_/CK] [get_pins inf_mul2_reg/CK] [get_pins                 \
fasu_op_r2_reg/CK] [get_pins fasu_op_r1_reg/CK] [get_pins sign_reg/CK]         \
[get_pins opas_r2_reg/CK] [get_pins opas_r1_reg/CK] [get_pins                  \
fract_i2f_reg_0_/CK] [get_pins fract_i2f_reg_1_/CK] [get_pins                  \
fract_i2f_reg_2_/CK] [get_pins fract_i2f_reg_3_/CK] [get_pins                  \
fract_i2f_reg_4_/CK] [get_pins fract_i2f_reg_5_/CK] [get_pins                  \
fract_i2f_reg_6_/CK] [get_pins fract_i2f_reg_7_/CK] [get_pins                  \
fract_i2f_reg_8_/CK] [get_pins fract_i2f_reg_9_/CK] [get_pins                  \
fract_i2f_reg_10_/CK] [get_pins fract_i2f_reg_11_/CK] [get_pins                \
fract_i2f_reg_12_/CK] [get_pins fract_i2f_reg_13_/CK] [get_pins                \
fract_i2f_reg_14_/CK] [get_pins fract_i2f_reg_15_/CK] [get_pins                \
fract_i2f_reg_16_/CK] [get_pins fract_i2f_reg_17_/CK] [get_pins                \
fract_i2f_reg_18_/CK] [get_pins fract_i2f_reg_19_/CK] [get_pins                \
fract_i2f_reg_20_/CK] [get_pins fract_i2f_reg_21_/CK] [get_pins                \
fract_i2f_reg_22_/CK] [get_pins fract_i2f_reg_23_/CK] [get_pins                \
fract_i2f_reg_24_/CK] [get_pins fract_i2f_reg_25_/CK] [get_pins                \
fract_i2f_reg_26_/CK] [get_pins fract_i2f_reg_27_/CK] [get_pins                \
fract_i2f_reg_28_/CK] [get_pins fract_i2f_reg_29_/CK] [get_pins                \
fract_i2f_reg_30_/CK] [get_pins fract_i2f_reg_31_/CK] [get_pins                \
fract_i2f_reg_32_/CK] [get_pins fract_i2f_reg_33_/CK] [get_pins                \
fract_i2f_reg_34_/CK] [get_pins fract_i2f_reg_35_/CK] [get_pins                \
fract_i2f_reg_36_/CK] [get_pins fract_i2f_reg_37_/CK] [get_pins                \
fract_i2f_reg_38_/CK] [get_pins fract_i2f_reg_39_/CK] [get_pins                \
fract_i2f_reg_40_/CK] [get_pins fract_i2f_reg_41_/CK] [get_pins                \
fract_i2f_reg_42_/CK] [get_pins fract_i2f_reg_43_/CK] [get_pins                \
fract_i2f_reg_44_/CK] [get_pins fract_i2f_reg_45_/CK] [get_pins                \
fract_i2f_reg_46_/CK] [get_pins fract_i2f_reg_47_/CK] [get_pins                \
opa_r1_reg_0_/CK] [get_pins opa_r1_reg_1_/CK] [get_pins opa_r1_reg_2_/CK]      \
[get_pins opa_r1_reg_3_/CK] [get_pins opa_r1_reg_4_/CK] [get_pins              \
opa_r1_reg_5_/CK] [get_pins opa_r1_reg_6_/CK] [get_pins opa_r1_reg_7_/CK]      \
[get_pins opa_r1_reg_8_/CK] [get_pins opa_r1_reg_9_/CK] [get_pins              \
opa_r1_reg_10_/CK] [get_pins opa_r1_reg_11_/CK] [get_pins opa_r1_reg_12_/CK]   \
[get_pins opa_r1_reg_13_/CK] [get_pins opa_r1_reg_14_/CK] [get_pins            \
opa_r1_reg_15_/CK] [get_pins opa_r1_reg_16_/CK] [get_pins opa_r1_reg_17_/CK]   \
[get_pins opa_r1_reg_18_/CK] [get_pins opa_r1_reg_19_/CK] [get_pins            \
opa_r1_reg_20_/CK] [get_pins opa_r1_reg_21_/CK] [get_pins opa_r1_reg_22_/CK]   \
[get_pins opa_r1_reg_23_/CK] [get_pins opa_r1_reg_24_/CK] [get_pins            \
opa_r1_reg_25_/CK] [get_pins opa_r1_reg_26_/CK] [get_pins opa_r1_reg_27_/CK]   \
[get_pins opa_r1_reg_28_/CK] [get_pins opa_r1_reg_29_/CK] [get_pins            \
opa_r1_reg_30_/CK] [get_pins exp_r_reg_0_/CK] [get_pins exp_r_reg_1_/CK]       \
[get_pins exp_r_reg_2_/CK] [get_pins exp_r_reg_3_/CK] [get_pins                \
exp_r_reg_4_/CK] [get_pins exp_r_reg_5_/CK] [get_pins exp_r_reg_6_/CK]         \
[get_pins exp_r_reg_7_/CK] [get_pins div_opa_ldz_r2_reg_0_/CK] [get_pins       \
div_opa_ldz_r2_reg_1_/CK] [get_pins div_opa_ldz_r2_reg_2_/CK] [get_pins        \
div_opa_ldz_r2_reg_3_/CK] [get_pins div_opa_ldz_r2_reg_4_/CK] [get_pins        \
div_opa_ldz_r1_reg_0_/CK] [get_pins div_opa_ldz_r1_reg_1_/CK] [get_pins        \
div_opa_ldz_r1_reg_2_/CK] [get_pins div_opa_ldz_r1_reg_3_/CK] [get_pins        \
div_opa_ldz_r1_reg_4_/CK] [get_pins u6_rem_reg_0_/CK] [get_pins                \
u6_rem_reg_1_/CK] [get_pins u6_rem_reg_2_/CK] [get_pins u6_rem_reg_3_/CK]      \
[get_pins u6_rem_reg_4_/CK] [get_pins u6_rem_reg_5_/CK] [get_pins              \
u6_rem_reg_6_/CK] [get_pins u6_rem_reg_7_/CK] [get_pins u6_rem_reg_8_/CK]      \
[get_pins u6_rem_reg_9_/CK] [get_pins u6_rem_reg_10_/CK] [get_pins             \
u6_rem_reg_11_/CK] [get_pins u6_rem_reg_12_/CK] [get_pins u6_rem_reg_13_/CK]   \
[get_pins u6_rem_reg_14_/CK] [get_pins u6_rem_reg_15_/CK] [get_pins            \
u6_rem_reg_16_/CK] [get_pins u6_rem_reg_17_/CK] [get_pins u6_rem_reg_18_/CK]   \
[get_pins u6_rem_reg_19_/CK] [get_pins u6_rem_reg_20_/CK] [get_pins            \
u6_rem_reg_21_/CK] [get_pins u6_rem_reg_22_/CK] [get_pins u6_rem_reg_23_/CK]   \
[get_pins u6_rem_reg_26_/CK] [get_pins u6_rem_reg_27_/CK] [get_pins            \
u6_rem_reg_28_/CK] [get_pins u6_rem_reg_29_/CK] [get_pins u6_rem_reg_30_/CK]   \
[get_pins u6_rem_reg_31_/CK] [get_pins u6_rem_reg_32_/CK] [get_pins            \
u6_rem_reg_33_/CK] [get_pins u6_rem_reg_34_/CK] [get_pins u6_rem_reg_35_/CK]   \
[get_pins u6_rem_reg_36_/CK] [get_pins u6_rem_reg_37_/CK] [get_pins            \
u6_rem_reg_38_/CK] [get_pins u6_rem_reg_39_/CK] [get_pins u6_rem_reg_40_/CK]   \
[get_pins u6_rem_reg_41_/CK] [get_pins u6_rem_reg_42_/CK] [get_pins            \
u6_rem_reg_43_/CK] [get_pins u6_rem_reg_44_/CK] [get_pins u6_rem_reg_45_/CK]   \
[get_pins u6_rem_reg_46_/CK] [get_pins u6_rem_reg_47_/CK] [get_pins            \
u6_rem_reg_48_/CK] [get_pins u6_rem_reg_49_/CK] [get_pins                      \
u6_remainder_reg_0_/CK] [get_pins u6_remainder_reg_1_/CK] [get_pins            \
u6_remainder_reg_2_/CK] [get_pins u6_remainder_reg_3_/CK] [get_pins            \
u6_remainder_reg_4_/CK] [get_pins u6_remainder_reg_5_/CK] [get_pins            \
u6_remainder_reg_6_/CK] [get_pins u6_remainder_reg_7_/CK] [get_pins            \
u6_remainder_reg_8_/CK] [get_pins u6_remainder_reg_9_/CK] [get_pins            \
u6_remainder_reg_10_/CK] [get_pins u6_remainder_reg_11_/CK] [get_pins          \
u6_remainder_reg_12_/CK] [get_pins u6_remainder_reg_13_/CK] [get_pins          \
u6_remainder_reg_14_/CK] [get_pins u6_remainder_reg_15_/CK] [get_pins          \
u6_remainder_reg_16_/CK] [get_pins u6_remainder_reg_17_/CK] [get_pins          \
u6_remainder_reg_18_/CK] [get_pins u6_remainder_reg_19_/CK] [get_pins          \
u6_remainder_reg_20_/CK] [get_pins u6_remainder_reg_21_/CK] [get_pins          \
u6_remainder_reg_22_/CK] [get_pins u6_remainder_reg_23_/CK] [get_pins          \
u6_remainder_reg_26_/CK] [get_pins u6_remainder_reg_27_/CK] [get_pins          \
u6_remainder_reg_28_/CK] [get_pins u6_remainder_reg_29_/CK] [get_pins          \
u6_remainder_reg_30_/CK] [get_pins u6_remainder_reg_31_/CK] [get_pins          \
u6_remainder_reg_32_/CK] [get_pins u6_remainder_reg_33_/CK] [get_pins          \
u6_remainder_reg_34_/CK] [get_pins u6_remainder_reg_35_/CK] [get_pins          \
u6_remainder_reg_36_/CK] [get_pins u6_remainder_reg_37_/CK] [get_pins          \
u6_remainder_reg_38_/CK] [get_pins u6_remainder_reg_39_/CK] [get_pins          \
u6_remainder_reg_40_/CK] [get_pins u6_remainder_reg_41_/CK] [get_pins          \
u6_remainder_reg_42_/CK] [get_pins u6_remainder_reg_43_/CK] [get_pins          \
u6_remainder_reg_44_/CK] [get_pins u6_remainder_reg_45_/CK] [get_pins          \
u6_remainder_reg_46_/CK] [get_pins u6_remainder_reg_47_/CK] [get_pins          \
u6_remainder_reg_48_/CK] [get_pins u6_remainder_reg_49_/CK] [get_pins          \
u6_quo_reg_0_/CK] [get_pins u6_quo_reg_1_/CK] [get_pins u6_quo_reg_2_/CK]      \
[get_pins u6_quo_reg_3_/CK] [get_pins u6_quo_reg_4_/CK] [get_pins              \
u6_quo_reg_5_/CK] [get_pins u6_quo_reg_6_/CK] [get_pins u6_quo_reg_7_/CK]      \
[get_pins u6_quo_reg_8_/CK] [get_pins u6_quo_reg_9_/CK] [get_pins              \
u6_quo_reg_10_/CK] [get_pins u6_quo_reg_11_/CK] [get_pins u6_quo_reg_12_/CK]   \
[get_pins u6_quo_reg_13_/CK] [get_pins u6_quo_reg_14_/CK] [get_pins            \
u6_quo_reg_15_/CK] [get_pins u6_quo_reg_16_/CK] [get_pins u6_quo_reg_17_/CK]   \
[get_pins u6_quo_reg_18_/CK] [get_pins u6_quo_reg_19_/CK] [get_pins            \
u6_quo_reg_20_/CK] [get_pins u6_quo_reg_21_/CK] [get_pins u6_quo_reg_22_/CK]   \
[get_pins u6_quo_reg_23_/CK] [get_pins u6_quo_reg_26_/CK] [get_pins            \
u6_quo_reg_27_/CK] [get_pins u6_quo_reg_28_/CK] [get_pins u6_quo_reg_29_/CK]   \
[get_pins u6_quo_reg_30_/CK] [get_pins u6_quo_reg_31_/CK] [get_pins            \
u6_quo_reg_32_/CK] [get_pins u6_quo_reg_33_/CK] [get_pins u6_quo_reg_34_/CK]   \
[get_pins u6_quo_reg_35_/CK] [get_pins u6_quo_reg_36_/CK] [get_pins            \
u6_quo_reg_37_/CK] [get_pins u6_quo_reg_38_/CK] [get_pins u6_quo_reg_39_/CK]   \
[get_pins u6_quo_reg_40_/CK] [get_pins u6_quo_reg_41_/CK] [get_pins            \
u6_quo_reg_42_/CK] [get_pins u6_quo_reg_43_/CK] [get_pins u6_quo_reg_44_/CK]   \
[get_pins u6_quo_reg_45_/CK] [get_pins u6_quo_reg_46_/CK] [get_pins            \
u6_quo_reg_47_/CK] [get_pins u6_quo_reg_48_/CK] [get_pins u6_quo_reg_49_/CK]   \
[get_pins u6_quo1_reg_0_/CK] [get_pins u6_quo1_reg_1_/CK] [get_pins            \
u6_quo1_reg_2_/CK] [get_pins u6_quo1_reg_3_/CK] [get_pins u6_quo1_reg_4_/CK]   \
[get_pins u6_quo1_reg_5_/CK] [get_pins u6_quo1_reg_6_/CK] [get_pins            \
u6_quo1_reg_7_/CK] [get_pins u6_quo1_reg_8_/CK] [get_pins u6_quo1_reg_9_/CK]   \
[get_pins u6_quo1_reg_10_/CK] [get_pins u6_quo1_reg_11_/CK] [get_pins          \
u6_quo1_reg_12_/CK] [get_pins u6_quo1_reg_13_/CK] [get_pins                    \
u6_quo1_reg_14_/CK] [get_pins u6_quo1_reg_15_/CK] [get_pins                    \
u6_quo1_reg_16_/CK] [get_pins u6_quo1_reg_17_/CK] [get_pins                    \
u6_quo1_reg_18_/CK] [get_pins u6_quo1_reg_19_/CK] [get_pins                    \
u6_quo1_reg_20_/CK] [get_pins u6_quo1_reg_21_/CK] [get_pins                    \
u6_quo1_reg_22_/CK] [get_pins u6_quo1_reg_23_/CK] [get_pins                    \
u6_quo1_reg_26_/CK] [get_pins u6_quo1_reg_27_/CK] [get_pins                    \
u6_quo1_reg_28_/CK] [get_pins u6_quo1_reg_29_/CK] [get_pins                    \
u6_quo1_reg_30_/CK] [get_pins u6_quo1_reg_31_/CK] [get_pins                    \
u6_quo1_reg_32_/CK] [get_pins u6_quo1_reg_33_/CK] [get_pins                    \
u6_quo1_reg_34_/CK] [get_pins u6_quo1_reg_35_/CK] [get_pins                    \
u6_quo1_reg_36_/CK] [get_pins u6_quo1_reg_37_/CK] [get_pins                    \
u6_quo1_reg_38_/CK] [get_pins u6_quo1_reg_39_/CK] [get_pins                    \
u6_quo1_reg_40_/CK] [get_pins u6_quo1_reg_41_/CK] [get_pins                    \
u6_quo1_reg_42_/CK] [get_pins u6_quo1_reg_43_/CK] [get_pins                    \
u6_quo1_reg_44_/CK] [get_pins u6_quo1_reg_45_/CK] [get_pins                    \
u6_quo1_reg_46_/CK] [get_pins u6_quo1_reg_47_/CK] [get_pins                    \
u6_quo1_reg_48_/CK] [get_pins u6_quo1_reg_49_/CK] [get_pins u5_prod_reg_0_/CK] \
[get_pins u5_prod_reg_1_/CK] [get_pins u5_prod_reg_2_/CK] [get_pins            \
u5_prod_reg_3_/CK] [get_pins u5_prod_reg_4_/CK] [get_pins u5_prod_reg_5_/CK]   \
[get_pins u5_prod_reg_6_/CK] [get_pins u5_prod_reg_7_/CK] [get_pins            \
u5_prod_reg_8_/CK] [get_pins u5_prod_reg_9_/CK] [get_pins u5_prod_reg_10_/CK]  \
[get_pins u5_prod_reg_11_/CK] [get_pins u5_prod_reg_12_/CK] [get_pins          \
u5_prod_reg_13_/CK] [get_pins u5_prod_reg_14_/CK] [get_pins                    \
u5_prod_reg_15_/CK] [get_pins u5_prod_reg_16_/CK] [get_pins                    \
u5_prod_reg_17_/CK] [get_pins u5_prod_reg_18_/CK] [get_pins                    \
u5_prod_reg_19_/CK] [get_pins u5_prod_reg_20_/CK] [get_pins                    \
u5_prod_reg_21_/CK] [get_pins u5_prod_reg_22_/CK] [get_pins                    \
u5_prod_reg_23_/CK] [get_pins u5_prod_reg_24_/CK] [get_pins                    \
u5_prod_reg_25_/CK] [get_pins u5_prod_reg_26_/CK] [get_pins                    \
u5_prod_reg_27_/CK] [get_pins u5_prod_reg_28_/CK] [get_pins                    \
u5_prod_reg_29_/CK] [get_pins u5_prod_reg_30_/CK] [get_pins                    \
u5_prod_reg_31_/CK] [get_pins u5_prod_reg_32_/CK] [get_pins                    \
u5_prod_reg_33_/CK] [get_pins u5_prod_reg_34_/CK] [get_pins                    \
u5_prod_reg_35_/CK] [get_pins u5_prod_reg_36_/CK] [get_pins                    \
u5_prod_reg_37_/CK] [get_pins u5_prod_reg_38_/CK] [get_pins                    \
u5_prod_reg_39_/CK] [get_pins u5_prod_reg_40_/CK] [get_pins                    \
u5_prod_reg_41_/CK] [get_pins u5_prod_reg_42_/CK] [get_pins                    \
u5_prod_reg_43_/CK] [get_pins u5_prod_reg_44_/CK] [get_pins                    \
u5_prod_reg_45_/CK] [get_pins u5_prod_reg_46_/CK] [get_pins                    \
u5_prod_reg_47_/CK] [get_pins u5_prod1_reg_0_/CK] [get_pins                    \
u5_prod1_reg_1_/CK] [get_pins u5_prod1_reg_2_/CK] [get_pins                    \
u5_prod1_reg_3_/CK] [get_pins u5_prod1_reg_4_/CK] [get_pins                    \
u5_prod1_reg_5_/CK] [get_pins u5_prod1_reg_6_/CK] [get_pins                    \
u5_prod1_reg_7_/CK] [get_pins u5_prod1_reg_8_/CK] [get_pins                    \
u5_prod1_reg_9_/CK] [get_pins u5_prod1_reg_10_/CK] [get_pins                   \
u5_prod1_reg_11_/CK] [get_pins u5_prod1_reg_12_/CK] [get_pins                  \
u5_prod1_reg_13_/CK] [get_pins u5_prod1_reg_14_/CK] [get_pins                  \
u5_prod1_reg_15_/CK] [get_pins u5_prod1_reg_16_/CK] [get_pins                  \
u5_prod1_reg_17_/CK] [get_pins u5_prod1_reg_18_/CK] [get_pins                  \
u5_prod1_reg_19_/CK] [get_pins u5_prod1_reg_20_/CK] [get_pins                  \
u5_prod1_reg_21_/CK] [get_pins u5_prod1_reg_22_/CK] [get_pins                  \
u5_prod1_reg_23_/CK] [get_pins u5_prod1_reg_24_/CK] [get_pins                  \
u5_prod1_reg_25_/CK] [get_pins u5_prod1_reg_26_/CK] [get_pins                  \
u5_prod1_reg_27_/CK] [get_pins u5_prod1_reg_28_/CK] [get_pins                  \
u5_prod1_reg_29_/CK] [get_pins u5_prod1_reg_30_/CK] [get_pins                  \
u5_prod1_reg_31_/CK] [get_pins u5_prod1_reg_32_/CK] [get_pins                  \
u5_prod1_reg_33_/CK] [get_pins u5_prod1_reg_34_/CK] [get_pins                  \
u5_prod1_reg_35_/CK] [get_pins u5_prod1_reg_36_/CK] [get_pins                  \
u5_prod1_reg_37_/CK] [get_pins u5_prod1_reg_38_/CK] [get_pins                  \
u5_prod1_reg_39_/CK] [get_pins u5_prod1_reg_40_/CK] [get_pins                  \
u5_prod1_reg_41_/CK] [get_pins u5_prod1_reg_42_/CK] [get_pins                  \
u5_prod1_reg_43_/CK] [get_pins u5_prod1_reg_44_/CK] [get_pins                  \
u5_prod1_reg_45_/CK] [get_pins u5_prod1_reg_46_/CK] [get_pins                  \
u5_prod1_reg_47_/CK] [get_pins fract_out_q_reg_0_/CK] [get_pins                \
fract_out_q_reg_1_/CK] [get_pins fract_out_q_reg_2_/CK] [get_pins              \
fract_out_q_reg_3_/CK] [get_pins fract_out_q_reg_4_/CK] [get_pins              \
fract_out_q_reg_5_/CK] [get_pins fract_out_q_reg_6_/CK] [get_pins              \
fract_out_q_reg_7_/CK] [get_pins fract_out_q_reg_8_/CK] [get_pins              \
fract_out_q_reg_9_/CK] [get_pins fract_out_q_reg_10_/CK] [get_pins             \
fract_out_q_reg_11_/CK] [get_pins fract_out_q_reg_12_/CK] [get_pins            \
fract_out_q_reg_13_/CK] [get_pins fract_out_q_reg_14_/CK] [get_pins            \
fract_out_q_reg_15_/CK] [get_pins fract_out_q_reg_16_/CK] [get_pins            \
fract_out_q_reg_17_/CK] [get_pins fract_out_q_reg_18_/CK] [get_pins            \
fract_out_q_reg_19_/CK] [get_pins fract_out_q_reg_20_/CK] [get_pins            \
fract_out_q_reg_21_/CK] [get_pins fract_out_q_reg_22_/CK] [get_pins            \
fract_out_q_reg_23_/CK] [get_pins fract_out_q_reg_24_/CK] [get_pins            \
fract_out_q_reg_25_/CK] [get_pins fract_out_q_reg_26_/CK] [get_pins            \
fract_out_q_reg_27_/CK] [get_pins exp_ovf_r_reg_0_/CK] [get_pins               \
exp_ovf_r_reg_1_/CK] [get_pins inf_mul_r_reg/CK] [get_pins sign_exe_r_reg/CK]  \
[get_pins sign_mul_r_reg/CK] [get_pins u2_sign_exe_reg/CK] [get_pins           \
u2_sign_reg/CK] [get_pins u2_inf_reg/CK] [get_pins u2_underflow_reg_0_/CK]     \
[get_pins u2_underflow_reg_1_/CK] [get_pins u2_underflow_reg_2_/CK] [get_pins  \
u2_exp_ovf_reg_0_/CK] [get_pins u2_exp_ovf_reg_1_/CK] [get_pins                \
u2_exp_out_reg_0_/CK] [get_pins u2_exp_out_reg_1_/CK] [get_pins                \
u2_exp_out_reg_2_/CK] [get_pins u2_exp_out_reg_3_/CK] [get_pins                \
u2_exp_out_reg_4_/CK] [get_pins u2_exp_out_reg_5_/CK] [get_pins                \
u2_exp_out_reg_6_/CK] [get_pins u2_exp_out_reg_7_/CK] [get_pins                \
sign_fasu_r_reg/CK] [get_pins u1_fasu_op_reg/CK] [get_pins u1_nan_sign_reg/CK] \
[get_pins u1_fracta_eq_fractb_reg/CK] [get_pins u1_fracta_lt_fractb_reg/CK]    \
[get_pins u1_result_zero_sign_reg/CK] [get_pins u1_add_r_reg/CK] [get_pins     \
u1_signb_r_reg/CK] [get_pins u1_signa_r_reg/CK] [get_pins u1_sign_reg/CK]      \
[get_pins u1_fractb_out_reg_0_/CK] [get_pins u1_fractb_out_reg_1_/CK]          \
[get_pins u1_fractb_out_reg_2_/CK] [get_pins u1_fractb_out_reg_3_/CK]          \
[get_pins u1_fractb_out_reg_4_/CK] [get_pins u1_fractb_out_reg_5_/CK]          \
[get_pins u1_fractb_out_reg_6_/CK] [get_pins u1_fractb_out_reg_7_/CK]          \
[get_pins u1_fractb_out_reg_8_/CK] [get_pins u1_fractb_out_reg_9_/CK]          \
[get_pins u1_fractb_out_reg_10_/CK] [get_pins u1_fractb_out_reg_11_/CK]        \
[get_pins u1_fractb_out_reg_12_/CK] [get_pins u1_fractb_out_reg_13_/CK]        \
[get_pins u1_fractb_out_reg_14_/CK] [get_pins u1_fractb_out_reg_15_/CK]        \
[get_pins u1_fractb_out_reg_16_/CK] [get_pins u1_fractb_out_reg_17_/CK]        \
[get_pins u1_fractb_out_reg_18_/CK] [get_pins u1_fractb_out_reg_19_/CK]        \
[get_pins u1_fractb_out_reg_20_/CK] [get_pins u1_fractb_out_reg_21_/CK]        \
[get_pins u1_fractb_out_reg_22_/CK] [get_pins u1_fractb_out_reg_23_/CK]        \
[get_pins u1_fractb_out_reg_24_/CK] [get_pins u1_fractb_out_reg_25_/CK]        \
[get_pins u1_fractb_out_reg_26_/CK] [get_pins u1_fracta_out_reg_0_/CK]         \
[get_pins u1_fracta_out_reg_1_/CK] [get_pins u1_fracta_out_reg_2_/CK]          \
[get_pins u1_fracta_out_reg_3_/CK] [get_pins u1_fracta_out_reg_4_/CK]          \
[get_pins u1_fracta_out_reg_5_/CK] [get_pins u1_fracta_out_reg_6_/CK]          \
[get_pins u1_fracta_out_reg_7_/CK] [get_pins u1_fracta_out_reg_8_/CK]          \
[get_pins u1_fracta_out_reg_9_/CK] [get_pins u1_fracta_out_reg_10_/CK]         \
[get_pins u1_fracta_out_reg_11_/CK] [get_pins u1_fracta_out_reg_12_/CK]        \
[get_pins u1_fracta_out_reg_13_/CK] [get_pins u1_fracta_out_reg_14_/CK]        \
[get_pins u1_fracta_out_reg_15_/CK] [get_pins u1_fracta_out_reg_16_/CK]        \
[get_pins u1_fracta_out_reg_17_/CK] [get_pins u1_fracta_out_reg_18_/CK]        \
[get_pins u1_fracta_out_reg_19_/CK] [get_pins u1_fracta_out_reg_20_/CK]        \
[get_pins u1_fracta_out_reg_21_/CK] [get_pins u1_fracta_out_reg_22_/CK]        \
[get_pins u1_fracta_out_reg_23_/CK] [get_pins u1_fracta_out_reg_24_/CK]        \
[get_pins u1_fracta_out_reg_25_/CK] [get_pins u1_fracta_out_reg_26_/CK]        \
[get_pins u1_exp_dn_out_reg_0_/CK] [get_pins u1_exp_dn_out_reg_1_/CK]          \
[get_pins u1_exp_dn_out_reg_2_/CK] [get_pins u1_exp_dn_out_reg_3_/CK]          \
[get_pins u1_exp_dn_out_reg_4_/CK] [get_pins u1_exp_dn_out_reg_5_/CK]          \
[get_pins u1_exp_dn_out_reg_6_/CK] [get_pins u1_exp_dn_out_reg_7_/CK]          \
[get_pins u0_opb_dn_reg/CK] [get_pins u0_opa_dn_reg/CK] [get_pins              \
u0_opb_00_reg/CK] [get_pins u0_opa_00_reg/CK] [get_pins u0_fractb_00_reg/CK]   \
[get_pins u0_fracta_00_reg/CK] [get_pins u0_expb_00_reg/CK] [get_pins          \
u0_expa_00_reg/CK] [get_pins u0_opb_inf_reg/CK] [get_pins u0_opa_inf_reg/CK]   \
[get_pins u0_opb_nan_reg/CK] [get_pins u0_opa_nan_reg/CK] [get_pins            \
u0_snan_reg/CK] [get_pins u0_qnan_reg/CK] [get_pins u0_inf_reg/CK] [get_pins   \
u0_ind_reg/CK] [get_pins u0_snan_r_b_reg/CK] [get_pins u0_qnan_r_b_reg/CK]     \
[get_pins u0_snan_r_a_reg/CK] [get_pins u0_qnan_r_a_reg/CK] [get_pins          \
u0_infb_f_r_reg/CK] [get_pins u0_infa_f_r_reg/CK] [get_pins u0_expb_ff_reg/CK] \
[get_pins u0_expa_ff_reg/CK] [get_pins fpu_op_r3_reg_0_/CK] [get_pins          \
fpu_op_r3_reg_1_/CK] [get_pins fpu_op_r3_reg_2_/CK] [get_pins                  \
fpu_op_r2_reg_0_/CK] [get_pins fpu_op_r2_reg_1_/CK] [get_pins                  \
fpu_op_r2_reg_2_/CK] [get_pins fpu_op_r1_reg_0_/CK] [get_pins                  \
fpu_op_r1_reg_1_/CK] [get_pins fpu_op_r1_reg_2_/CK] [get_pins                  \
rmode_r3_reg_0_/CK] [get_pins rmode_r3_reg_1_/CK] [get_pins                    \
rmode_r2_reg_0_/CK] [get_pins rmode_r2_reg_1_/CK] [get_pins                    \
rmode_r1_reg_0_/CK] [get_pins rmode_r1_reg_1_/CK] [get_pins opb_r_reg_0_/CK]   \
[get_pins opb_r_reg_1_/CK] [get_pins opb_r_reg_2_/CK] [get_pins                \
opb_r_reg_3_/CK] [get_pins opb_r_reg_4_/CK] [get_pins opb_r_reg_5_/CK]         \
[get_pins opb_r_reg_6_/CK] [get_pins opb_r_reg_7_/CK] [get_pins                \
opb_r_reg_8_/CK] [get_pins opb_r_reg_9_/CK] [get_pins opb_r_reg_10_/CK]        \
[get_pins opb_r_reg_11_/CK] [get_pins opb_r_reg_12_/CK] [get_pins              \
opb_r_reg_13_/CK] [get_pins opb_r_reg_14_/CK] [get_pins opb_r_reg_15_/CK]      \
[get_pins opb_r_reg_16_/CK] [get_pins opb_r_reg_17_/CK] [get_pins              \
opb_r_reg_18_/CK] [get_pins opb_r_reg_19_/CK] [get_pins opb_r_reg_20_/CK]      \
[get_pins opb_r_reg_21_/CK] [get_pins opb_r_reg_22_/CK] [get_pins              \
opb_r_reg_23_/CK] [get_pins opb_r_reg_24_/CK] [get_pins opb_r_reg_25_/CK]      \
[get_pins opb_r_reg_26_/CK] [get_pins opb_r_reg_27_/CK] [get_pins              \
opb_r_reg_28_/CK] [get_pins opb_r_reg_29_/CK] [get_pins opb_r_reg_30_/CK]      \
[get_pins opb_r_reg_31_/CK] [get_pins opa_r_reg_0_/CK] [get_pins               \
opa_r_reg_1_/CK] [get_pins opa_r_reg_2_/CK] [get_pins opa_r_reg_3_/CK]         \
[get_pins opa_r_reg_4_/CK] [get_pins opa_r_reg_5_/CK] [get_pins                \
opa_r_reg_6_/CK] [get_pins opa_r_reg_7_/CK] [get_pins opa_r_reg_8_/CK]         \
[get_pins opa_r_reg_9_/CK] [get_pins opa_r_reg_10_/CK] [get_pins               \
opa_r_reg_11_/CK] [get_pins opa_r_reg_12_/CK] [get_pins opa_r_reg_13_/CK]      \
[get_pins opa_r_reg_14_/CK] [get_pins opa_r_reg_15_/CK] [get_pins              \
opa_r_reg_16_/CK] [get_pins opa_r_reg_17_/CK] [get_pins opa_r_reg_18_/CK]      \
[get_pins opa_r_reg_19_/CK] [get_pins opa_r_reg_20_/CK] [get_pins              \
opa_r_reg_21_/CK] [get_pins opa_r_reg_22_/CK] [get_pins opa_r_reg_23_/CK]      \
[get_pins opa_r_reg_24_/CK] [get_pins opa_r_reg_25_/CK] [get_pins              \
opa_r_reg_26_/CK] [get_pins opa_r_reg_27_/CK] [get_pins opa_r_reg_28_/CK]      \
[get_pins opa_r_reg_29_/CK] [get_pins opa_r_reg_30_/CK] [get_pins              \
opa_r_reg_31_/CK]]  -to [list [get_pins div_by_zero_reg/D] [get_pins opa_nan_r_reg/D] [get_pins   \
zero_reg/D] [get_pins inf_reg/D] [get_pins qnan_reg/D] [get_pins snan_reg/D]   \
[get_pins underflow_reg/D] [get_pins underflow_fmul_r_reg_0_/D] [get_pins      \
underflow_fmul_r_reg_1_/D] [get_pins underflow_fmul_r_reg_2_/D] [get_pins      \
overflow_reg/D] [get_pins ine_reg/D] [get_pins out_reg_31_/D] [get_pins        \
out_reg_0_/D] [get_pins out_reg_1_/D] [get_pins out_reg_2_/D] [get_pins        \
out_reg_3_/D] [get_pins out_reg_4_/D] [get_pins out_reg_5_/D] [get_pins        \
out_reg_6_/D] [get_pins out_reg_7_/D] [get_pins out_reg_8_/D] [get_pins        \
out_reg_9_/D] [get_pins out_reg_10_/D] [get_pins out_reg_11_/D] [get_pins      \
out_reg_12_/D] [get_pins out_reg_13_/D] [get_pins out_reg_14_/D] [get_pins     \
out_reg_15_/D] [get_pins out_reg_16_/D] [get_pins out_reg_17_/D] [get_pins     \
out_reg_18_/D] [get_pins out_reg_19_/D] [get_pins out_reg_20_/D] [get_pins     \
out_reg_21_/D] [get_pins out_reg_22_/D] [get_pins out_reg_23_/D] [get_pins     \
out_reg_24_/D] [get_pins out_reg_25_/D] [get_pins out_reg_26_/D] [get_pins     \
out_reg_27_/D] [get_pins out_reg_28_/D] [get_pins out_reg_29_/D] [get_pins     \
out_reg_30_/D] [get_pins inf_mul2_reg/D] [get_pins fasu_op_r2_reg/D] [get_pins \
fasu_op_r1_reg/D] [get_pins sign_reg/D] [get_pins opas_r2_reg/D] [get_pins     \
opas_r1_reg/D] [get_pins fract_i2f_reg_0_/D] [get_pins fract_i2f_reg_1_/D]     \
[get_pins fract_i2f_reg_2_/D] [get_pins fract_i2f_reg_3_/D] [get_pins          \
fract_i2f_reg_4_/D] [get_pins fract_i2f_reg_5_/D] [get_pins                    \
fract_i2f_reg_6_/D] [get_pins fract_i2f_reg_7_/D] [get_pins                    \
fract_i2f_reg_8_/D] [get_pins fract_i2f_reg_9_/D] [get_pins                    \
fract_i2f_reg_10_/D] [get_pins fract_i2f_reg_11_/D] [get_pins                  \
fract_i2f_reg_12_/D] [get_pins fract_i2f_reg_13_/D] [get_pins                  \
fract_i2f_reg_14_/D] [get_pins fract_i2f_reg_15_/D] [get_pins                  \
fract_i2f_reg_16_/D] [get_pins fract_i2f_reg_17_/D] [get_pins                  \
fract_i2f_reg_18_/D] [get_pins fract_i2f_reg_19_/D] [get_pins                  \
fract_i2f_reg_20_/D] [get_pins fract_i2f_reg_21_/D] [get_pins                  \
fract_i2f_reg_22_/D] [get_pins fract_i2f_reg_23_/D] [get_pins                  \
fract_i2f_reg_24_/D] [get_pins fract_i2f_reg_25_/D] [get_pins                  \
fract_i2f_reg_26_/D] [get_pins fract_i2f_reg_27_/D] [get_pins                  \
fract_i2f_reg_28_/D] [get_pins fract_i2f_reg_29_/D] [get_pins                  \
fract_i2f_reg_30_/D] [get_pins fract_i2f_reg_31_/D] [get_pins                  \
fract_i2f_reg_32_/D] [get_pins fract_i2f_reg_33_/D] [get_pins                  \
fract_i2f_reg_34_/D] [get_pins fract_i2f_reg_35_/D] [get_pins                  \
fract_i2f_reg_36_/D] [get_pins fract_i2f_reg_37_/D] [get_pins                  \
fract_i2f_reg_38_/D] [get_pins fract_i2f_reg_39_/D] [get_pins                  \
fract_i2f_reg_40_/D] [get_pins fract_i2f_reg_41_/D] [get_pins                  \
fract_i2f_reg_42_/D] [get_pins fract_i2f_reg_43_/D] [get_pins                  \
fract_i2f_reg_44_/D] [get_pins fract_i2f_reg_45_/D] [get_pins                  \
fract_i2f_reg_46_/D] [get_pins fract_i2f_reg_47_/D] [get_pins opa_r1_reg_0_/D] \
[get_pins opa_r1_reg_1_/D] [get_pins opa_r1_reg_2_/D] [get_pins                \
opa_r1_reg_3_/D] [get_pins opa_r1_reg_4_/D] [get_pins opa_r1_reg_5_/D]         \
[get_pins opa_r1_reg_6_/D] [get_pins opa_r1_reg_7_/D] [get_pins                \
opa_r1_reg_8_/D] [get_pins opa_r1_reg_9_/D] [get_pins opa_r1_reg_10_/D]        \
[get_pins opa_r1_reg_11_/D] [get_pins opa_r1_reg_12_/D] [get_pins              \
opa_r1_reg_13_/D] [get_pins opa_r1_reg_14_/D] [get_pins opa_r1_reg_15_/D]      \
[get_pins opa_r1_reg_16_/D] [get_pins opa_r1_reg_17_/D] [get_pins              \
opa_r1_reg_18_/D] [get_pins opa_r1_reg_19_/D] [get_pins opa_r1_reg_20_/D]      \
[get_pins opa_r1_reg_21_/D] [get_pins opa_r1_reg_22_/D] [get_pins              \
opa_r1_reg_23_/D] [get_pins opa_r1_reg_24_/D] [get_pins opa_r1_reg_25_/D]      \
[get_pins opa_r1_reg_26_/D] [get_pins opa_r1_reg_27_/D] [get_pins              \
opa_r1_reg_28_/D] [get_pins opa_r1_reg_29_/D] [get_pins opa_r1_reg_30_/D]      \
[get_pins exp_r_reg_0_/D] [get_pins exp_r_reg_1_/D] [get_pins exp_r_reg_2_/D]  \
[get_pins exp_r_reg_3_/D] [get_pins exp_r_reg_4_/D] [get_pins exp_r_reg_5_/D]  \
[get_pins exp_r_reg_6_/D] [get_pins exp_r_reg_7_/D] [get_pins                  \
div_opa_ldz_r2_reg_0_/D] [get_pins div_opa_ldz_r2_reg_1_/D] [get_pins          \
div_opa_ldz_r2_reg_2_/D] [get_pins div_opa_ldz_r2_reg_3_/D] [get_pins          \
div_opa_ldz_r2_reg_4_/D] [get_pins div_opa_ldz_r1_reg_0_/D] [get_pins          \
div_opa_ldz_r1_reg_1_/D] [get_pins div_opa_ldz_r1_reg_2_/D] [get_pins          \
div_opa_ldz_r1_reg_3_/D] [get_pins div_opa_ldz_r1_reg_4_/D] [get_pins          \
u6_rem_reg_0_/D] [get_pins u6_rem_reg_1_/D] [get_pins u6_rem_reg_2_/D]         \
[get_pins u6_rem_reg_3_/D] [get_pins u6_rem_reg_4_/D] [get_pins                \
u6_rem_reg_5_/D] [get_pins u6_rem_reg_6_/D] [get_pins u6_rem_reg_7_/D]         \
[get_pins u6_rem_reg_8_/D] [get_pins u6_rem_reg_9_/D] [get_pins                \
u6_rem_reg_10_/D] [get_pins u6_rem_reg_11_/D] [get_pins u6_rem_reg_12_/D]      \
[get_pins u6_rem_reg_13_/D] [get_pins u6_rem_reg_14_/D] [get_pins              \
u6_rem_reg_15_/D] [get_pins u6_rem_reg_16_/D] [get_pins u6_rem_reg_17_/D]      \
[get_pins u6_rem_reg_18_/D] [get_pins u6_rem_reg_19_/D] [get_pins              \
u6_rem_reg_20_/D] [get_pins u6_rem_reg_21_/D] [get_pins u6_rem_reg_22_/D]      \
[get_pins u6_rem_reg_23_/D] [get_pins u6_rem_reg_26_/D] [get_pins              \
u6_rem_reg_27_/D] [get_pins u6_rem_reg_28_/D] [get_pins u6_rem_reg_29_/D]      \
[get_pins u6_rem_reg_30_/D] [get_pins u6_rem_reg_31_/D] [get_pins              \
u6_rem_reg_32_/D] [get_pins u6_rem_reg_33_/D] [get_pins u6_rem_reg_34_/D]      \
[get_pins u6_rem_reg_35_/D] [get_pins u6_rem_reg_36_/D] [get_pins              \
u6_rem_reg_37_/D] [get_pins u6_rem_reg_38_/D] [get_pins u6_rem_reg_39_/D]      \
[get_pins u6_rem_reg_40_/D] [get_pins u6_rem_reg_41_/D] [get_pins              \
u6_rem_reg_42_/D] [get_pins u6_rem_reg_43_/D] [get_pins u6_rem_reg_44_/D]      \
[get_pins u6_rem_reg_45_/D] [get_pins u6_rem_reg_46_/D] [get_pins              \
u6_rem_reg_47_/D] [get_pins u6_rem_reg_48_/D] [get_pins u6_rem_reg_49_/D]      \
[get_pins u6_remainder_reg_0_/D] [get_pins u6_remainder_reg_1_/D] [get_pins    \
u6_remainder_reg_2_/D] [get_pins u6_remainder_reg_3_/D] [get_pins              \
u6_remainder_reg_4_/D] [get_pins u6_remainder_reg_5_/D] [get_pins              \
u6_remainder_reg_6_/D] [get_pins u6_remainder_reg_7_/D] [get_pins              \
u6_remainder_reg_8_/D] [get_pins u6_remainder_reg_9_/D] [get_pins              \
u6_remainder_reg_10_/D] [get_pins u6_remainder_reg_11_/D] [get_pins            \
u6_remainder_reg_12_/D] [get_pins u6_remainder_reg_13_/D] [get_pins            \
u6_remainder_reg_14_/D] [get_pins u6_remainder_reg_15_/D] [get_pins            \
u6_remainder_reg_16_/D] [get_pins u6_remainder_reg_17_/D] [get_pins            \
u6_remainder_reg_18_/D] [get_pins u6_remainder_reg_19_/D] [get_pins            \
u6_remainder_reg_20_/D] [get_pins u6_remainder_reg_21_/D] [get_pins            \
u6_remainder_reg_22_/D] [get_pins u6_remainder_reg_23_/D] [get_pins            \
u6_remainder_reg_26_/D] [get_pins u6_remainder_reg_27_/D] [get_pins            \
u6_remainder_reg_28_/D] [get_pins u6_remainder_reg_29_/D] [get_pins            \
u6_remainder_reg_30_/D] [get_pins u6_remainder_reg_31_/D] [get_pins            \
u6_remainder_reg_32_/D] [get_pins u6_remainder_reg_33_/D] [get_pins            \
u6_remainder_reg_34_/D] [get_pins u6_remainder_reg_35_/D] [get_pins            \
u6_remainder_reg_36_/D] [get_pins u6_remainder_reg_37_/D] [get_pins            \
u6_remainder_reg_38_/D] [get_pins u6_remainder_reg_39_/D] [get_pins            \
u6_remainder_reg_40_/D] [get_pins u6_remainder_reg_41_/D] [get_pins            \
u6_remainder_reg_42_/D] [get_pins u6_remainder_reg_43_/D] [get_pins            \
u6_remainder_reg_44_/D] [get_pins u6_remainder_reg_45_/D] [get_pins            \
u6_remainder_reg_46_/D] [get_pins u6_remainder_reg_47_/D] [get_pins            \
u6_remainder_reg_48_/D] [get_pins u6_remainder_reg_49_/D] [get_pins            \
u6_quo_reg_0_/D] [get_pins u6_quo_reg_1_/D] [get_pins u6_quo_reg_2_/D]         \
[get_pins u6_quo_reg_3_/D] [get_pins u6_quo_reg_4_/D] [get_pins                \
u6_quo_reg_5_/D] [get_pins u6_quo_reg_6_/D] [get_pins u6_quo_reg_7_/D]         \
[get_pins u6_quo_reg_8_/D] [get_pins u6_quo_reg_9_/D] [get_pins                \
u6_quo_reg_10_/D] [get_pins u6_quo_reg_11_/D] [get_pins u6_quo_reg_12_/D]      \
[get_pins u6_quo_reg_13_/D] [get_pins u6_quo_reg_14_/D] [get_pins              \
u6_quo_reg_15_/D] [get_pins u6_quo_reg_16_/D] [get_pins u6_quo_reg_17_/D]      \
[get_pins u6_quo_reg_18_/D] [get_pins u6_quo_reg_19_/D] [get_pins              \
u6_quo_reg_20_/D] [get_pins u6_quo_reg_21_/D] [get_pins u6_quo_reg_22_/D]      \
[get_pins u6_quo_reg_23_/D] [get_pins u6_quo_reg_26_/D] [get_pins              \
u6_quo_reg_27_/D] [get_pins u6_quo_reg_28_/D] [get_pins u6_quo_reg_29_/D]      \
[get_pins u6_quo_reg_30_/D] [get_pins u6_quo_reg_31_/D] [get_pins              \
u6_quo_reg_32_/D] [get_pins u6_quo_reg_33_/D] [get_pins u6_quo_reg_34_/D]      \
[get_pins u6_quo_reg_35_/D] [get_pins u6_quo_reg_36_/D] [get_pins              \
u6_quo_reg_37_/D] [get_pins u6_quo_reg_38_/D] [get_pins u6_quo_reg_39_/D]      \
[get_pins u6_quo_reg_40_/D] [get_pins u6_quo_reg_41_/D] [get_pins              \
u6_quo_reg_42_/D] [get_pins u6_quo_reg_43_/D] [get_pins u6_quo_reg_44_/D]      \
[get_pins u6_quo_reg_45_/D] [get_pins u6_quo_reg_46_/D] [get_pins              \
u6_quo_reg_47_/D] [get_pins u6_quo_reg_48_/D] [get_pins u6_quo_reg_49_/D]      \
[get_pins u6_quo1_reg_0_/D] [get_pins u6_quo1_reg_1_/D] [get_pins              \
u6_quo1_reg_2_/D] [get_pins u6_quo1_reg_3_/D] [get_pins u6_quo1_reg_4_/D]      \
[get_pins u6_quo1_reg_5_/D] [get_pins u6_quo1_reg_6_/D] [get_pins              \
u6_quo1_reg_7_/D] [get_pins u6_quo1_reg_8_/D] [get_pins u6_quo1_reg_9_/D]      \
[get_pins u6_quo1_reg_10_/D] [get_pins u6_quo1_reg_11_/D] [get_pins            \
u6_quo1_reg_12_/D] [get_pins u6_quo1_reg_13_/D] [get_pins u6_quo1_reg_14_/D]   \
[get_pins u6_quo1_reg_15_/D] [get_pins u6_quo1_reg_16_/D] [get_pins            \
u6_quo1_reg_17_/D] [get_pins u6_quo1_reg_18_/D] [get_pins u6_quo1_reg_19_/D]   \
[get_pins u6_quo1_reg_20_/D] [get_pins u6_quo1_reg_21_/D] [get_pins            \
u6_quo1_reg_22_/D] [get_pins u6_quo1_reg_23_/D] [get_pins u6_quo1_reg_26_/D]   \
[get_pins u6_quo1_reg_27_/D] [get_pins u6_quo1_reg_28_/D] [get_pins            \
u6_quo1_reg_29_/D] [get_pins u6_quo1_reg_30_/D] [get_pins u6_quo1_reg_31_/D]   \
[get_pins u6_quo1_reg_32_/D] [get_pins u6_quo1_reg_33_/D] [get_pins            \
u6_quo1_reg_34_/D] [get_pins u6_quo1_reg_35_/D] [get_pins u6_quo1_reg_36_/D]   \
[get_pins u6_quo1_reg_37_/D] [get_pins u6_quo1_reg_38_/D] [get_pins            \
u6_quo1_reg_39_/D] [get_pins u6_quo1_reg_40_/D] [get_pins u6_quo1_reg_41_/D]   \
[get_pins u6_quo1_reg_42_/D] [get_pins u6_quo1_reg_43_/D] [get_pins            \
u6_quo1_reg_44_/D] [get_pins u6_quo1_reg_45_/D] [get_pins u6_quo1_reg_46_/D]   \
[get_pins u6_quo1_reg_47_/D] [get_pins u6_quo1_reg_48_/D] [get_pins            \
u6_quo1_reg_49_/D] [get_pins u5_prod_reg_0_/D] [get_pins u5_prod_reg_1_/D]     \
[get_pins u5_prod_reg_2_/D] [get_pins u5_prod_reg_3_/D] [get_pins              \
u5_prod_reg_4_/D] [get_pins u5_prod_reg_5_/D] [get_pins u5_prod_reg_6_/D]      \
[get_pins u5_prod_reg_7_/D] [get_pins u5_prod_reg_8_/D] [get_pins              \
u5_prod_reg_9_/D] [get_pins u5_prod_reg_10_/D] [get_pins u5_prod_reg_11_/D]    \
[get_pins u5_prod_reg_12_/D] [get_pins u5_prod_reg_13_/D] [get_pins            \
u5_prod_reg_14_/D] [get_pins u5_prod_reg_15_/D] [get_pins u5_prod_reg_16_/D]   \
[get_pins u5_prod_reg_17_/D] [get_pins u5_prod_reg_18_/D] [get_pins            \
u5_prod_reg_19_/D] [get_pins u5_prod_reg_20_/D] [get_pins u5_prod_reg_21_/D]   \
[get_pins u5_prod_reg_22_/D] [get_pins u5_prod_reg_23_/D] [get_pins            \
u5_prod_reg_24_/D] [get_pins u5_prod_reg_25_/D] [get_pins u5_prod_reg_26_/D]   \
[get_pins u5_prod_reg_27_/D] [get_pins u5_prod_reg_28_/D] [get_pins            \
u5_prod_reg_29_/D] [get_pins u5_prod_reg_30_/D] [get_pins u5_prod_reg_31_/D]   \
[get_pins u5_prod_reg_32_/D] [get_pins u5_prod_reg_33_/D] [get_pins            \
u5_prod_reg_34_/D] [get_pins u5_prod_reg_35_/D] [get_pins u5_prod_reg_36_/D]   \
[get_pins u5_prod_reg_37_/D] [get_pins u5_prod_reg_38_/D] [get_pins            \
u5_prod_reg_39_/D] [get_pins u5_prod_reg_40_/D] [get_pins u5_prod_reg_41_/D]   \
[get_pins u5_prod_reg_42_/D] [get_pins u5_prod_reg_43_/D] [get_pins            \
u5_prod_reg_44_/D] [get_pins u5_prod_reg_45_/D] [get_pins u5_prod_reg_46_/D]   \
[get_pins u5_prod_reg_47_/D] [get_pins u5_prod1_reg_0_/D] [get_pins            \
u5_prod1_reg_1_/D] [get_pins u5_prod1_reg_2_/D] [get_pins u5_prod1_reg_3_/D]   \
[get_pins u5_prod1_reg_4_/D] [get_pins u5_prod1_reg_5_/D] [get_pins            \
u5_prod1_reg_6_/D] [get_pins u5_prod1_reg_7_/D] [get_pins u5_prod1_reg_8_/D]   \
[get_pins u5_prod1_reg_9_/D] [get_pins u5_prod1_reg_10_/D] [get_pins           \
u5_prod1_reg_11_/D] [get_pins u5_prod1_reg_12_/D] [get_pins                    \
u5_prod1_reg_13_/D] [get_pins u5_prod1_reg_14_/D] [get_pins                    \
u5_prod1_reg_15_/D] [get_pins u5_prod1_reg_16_/D] [get_pins                    \
u5_prod1_reg_17_/D] [get_pins u5_prod1_reg_18_/D] [get_pins                    \
u5_prod1_reg_19_/D] [get_pins u5_prod1_reg_20_/D] [get_pins                    \
u5_prod1_reg_21_/D] [get_pins u5_prod1_reg_22_/D] [get_pins                    \
u5_prod1_reg_23_/D] [get_pins u5_prod1_reg_24_/D] [get_pins                    \
u5_prod1_reg_25_/D] [get_pins u5_prod1_reg_26_/D] [get_pins                    \
u5_prod1_reg_27_/D] [get_pins u5_prod1_reg_28_/D] [get_pins                    \
u5_prod1_reg_29_/D] [get_pins u5_prod1_reg_30_/D] [get_pins                    \
u5_prod1_reg_31_/D] [get_pins u5_prod1_reg_32_/D] [get_pins                    \
u5_prod1_reg_33_/D] [get_pins u5_prod1_reg_34_/D] [get_pins                    \
u5_prod1_reg_35_/D] [get_pins u5_prod1_reg_36_/D] [get_pins                    \
u5_prod1_reg_37_/D] [get_pins u5_prod1_reg_38_/D] [get_pins                    \
u5_prod1_reg_39_/D] [get_pins u5_prod1_reg_40_/D] [get_pins                    \
u5_prod1_reg_41_/D] [get_pins u5_prod1_reg_42_/D] [get_pins                    \
u5_prod1_reg_43_/D] [get_pins u5_prod1_reg_44_/D] [get_pins                    \
u5_prod1_reg_45_/D] [get_pins u5_prod1_reg_46_/D] [get_pins                    \
u5_prod1_reg_47_/D] [get_pins fract_out_q_reg_0_/D] [get_pins                  \
fract_out_q_reg_1_/D] [get_pins fract_out_q_reg_2_/D] [get_pins                \
fract_out_q_reg_3_/D] [get_pins fract_out_q_reg_4_/D] [get_pins                \
fract_out_q_reg_5_/D] [get_pins fract_out_q_reg_6_/D] [get_pins                \
fract_out_q_reg_7_/D] [get_pins fract_out_q_reg_8_/D] [get_pins                \
fract_out_q_reg_9_/D] [get_pins fract_out_q_reg_10_/D] [get_pins               \
fract_out_q_reg_11_/D] [get_pins fract_out_q_reg_12_/D] [get_pins              \
fract_out_q_reg_13_/D] [get_pins fract_out_q_reg_14_/D] [get_pins              \
fract_out_q_reg_15_/D] [get_pins fract_out_q_reg_16_/D] [get_pins              \
fract_out_q_reg_17_/D] [get_pins fract_out_q_reg_18_/D] [get_pins              \
fract_out_q_reg_19_/D] [get_pins fract_out_q_reg_20_/D] [get_pins              \
fract_out_q_reg_21_/D] [get_pins fract_out_q_reg_22_/D] [get_pins              \
fract_out_q_reg_23_/D] [get_pins fract_out_q_reg_24_/D] [get_pins              \
fract_out_q_reg_25_/D] [get_pins fract_out_q_reg_26_/D] [get_pins              \
fract_out_q_reg_27_/D] [get_pins exp_ovf_r_reg_0_/D] [get_pins                 \
exp_ovf_r_reg_1_/D] [get_pins inf_mul_r_reg/D] [get_pins sign_exe_r_reg/D]     \
[get_pins sign_mul_r_reg/D] [get_pins u2_sign_exe_reg/D] [get_pins             \
u2_sign_reg/D] [get_pins u2_inf_reg/D] [get_pins u2_underflow_reg_0_/D]        \
[get_pins u2_underflow_reg_1_/D] [get_pins u2_underflow_reg_2_/D] [get_pins    \
u2_exp_ovf_reg_0_/D] [get_pins u2_exp_ovf_reg_1_/D] [get_pins                  \
u2_exp_out_reg_0_/D] [get_pins u2_exp_out_reg_1_/D] [get_pins                  \
u2_exp_out_reg_2_/D] [get_pins u2_exp_out_reg_3_/D] [get_pins                  \
u2_exp_out_reg_4_/D] [get_pins u2_exp_out_reg_5_/D] [get_pins                  \
u2_exp_out_reg_6_/D] [get_pins u2_exp_out_reg_7_/D] [get_pins                  \
sign_fasu_r_reg/D] [get_pins u1_fasu_op_reg/D] [get_pins u1_nan_sign_reg/D]    \
[get_pins u1_fracta_eq_fractb_reg/D] [get_pins u1_fracta_lt_fractb_reg/D]      \
[get_pins u1_result_zero_sign_reg/D] [get_pins u1_add_r_reg/D] [get_pins       \
u1_signb_r_reg/D] [get_pins u1_signa_r_reg/D] [get_pins u1_sign_reg/D]         \
[get_pins u1_fractb_out_reg_0_/D] [get_pins u1_fractb_out_reg_1_/D] [get_pins  \
u1_fractb_out_reg_2_/D] [get_pins u1_fractb_out_reg_3_/D] [get_pins            \
u1_fractb_out_reg_4_/D] [get_pins u1_fractb_out_reg_5_/D] [get_pins            \
u1_fractb_out_reg_6_/D] [get_pins u1_fractb_out_reg_7_/D] [get_pins            \
u1_fractb_out_reg_8_/D] [get_pins u1_fractb_out_reg_9_/D] [get_pins            \
u1_fractb_out_reg_10_/D] [get_pins u1_fractb_out_reg_11_/D] [get_pins          \
u1_fractb_out_reg_12_/D] [get_pins u1_fractb_out_reg_13_/D] [get_pins          \
u1_fractb_out_reg_14_/D] [get_pins u1_fractb_out_reg_15_/D] [get_pins          \
u1_fractb_out_reg_16_/D] [get_pins u1_fractb_out_reg_17_/D] [get_pins          \
u1_fractb_out_reg_18_/D] [get_pins u1_fractb_out_reg_19_/D] [get_pins          \
u1_fractb_out_reg_20_/D] [get_pins u1_fractb_out_reg_21_/D] [get_pins          \
u1_fractb_out_reg_22_/D] [get_pins u1_fractb_out_reg_23_/D] [get_pins          \
u1_fractb_out_reg_24_/D] [get_pins u1_fractb_out_reg_25_/D] [get_pins          \
u1_fractb_out_reg_26_/D] [get_pins u1_fracta_out_reg_0_/D] [get_pins           \
u1_fracta_out_reg_1_/D] [get_pins u1_fracta_out_reg_2_/D] [get_pins            \
u1_fracta_out_reg_3_/D] [get_pins u1_fracta_out_reg_4_/D] [get_pins            \
u1_fracta_out_reg_5_/D] [get_pins u1_fracta_out_reg_6_/D] [get_pins            \
u1_fracta_out_reg_7_/D] [get_pins u1_fracta_out_reg_8_/D] [get_pins            \
u1_fracta_out_reg_9_/D] [get_pins u1_fracta_out_reg_10_/D] [get_pins           \
u1_fracta_out_reg_11_/D] [get_pins u1_fracta_out_reg_12_/D] [get_pins          \
u1_fracta_out_reg_13_/D] [get_pins u1_fracta_out_reg_14_/D] [get_pins          \
u1_fracta_out_reg_15_/D] [get_pins u1_fracta_out_reg_16_/D] [get_pins          \
u1_fracta_out_reg_17_/D] [get_pins u1_fracta_out_reg_18_/D] [get_pins          \
u1_fracta_out_reg_19_/D] [get_pins u1_fracta_out_reg_20_/D] [get_pins          \
u1_fracta_out_reg_21_/D] [get_pins u1_fracta_out_reg_22_/D] [get_pins          \
u1_fracta_out_reg_23_/D] [get_pins u1_fracta_out_reg_24_/D] [get_pins          \
u1_fracta_out_reg_25_/D] [get_pins u1_fracta_out_reg_26_/D] [get_pins          \
u1_exp_dn_out_reg_0_/D] [get_pins u1_exp_dn_out_reg_1_/D] [get_pins            \
u1_exp_dn_out_reg_2_/D] [get_pins u1_exp_dn_out_reg_3_/D] [get_pins            \
u1_exp_dn_out_reg_4_/D] [get_pins u1_exp_dn_out_reg_5_/D] [get_pins            \
u1_exp_dn_out_reg_6_/D] [get_pins u1_exp_dn_out_reg_7_/D] [get_pins            \
u0_opb_dn_reg/D] [get_pins u0_opa_dn_reg/D] [get_pins u0_opb_00_reg/D]         \
[get_pins u0_opa_00_reg/D] [get_pins u0_fractb_00_reg/D] [get_pins             \
u0_fracta_00_reg/D] [get_pins u0_expb_00_reg/D] [get_pins u0_expa_00_reg/D]    \
[get_pins u0_opb_inf_reg/D] [get_pins u0_opa_inf_reg/D] [get_pins              \
u0_opb_nan_reg/D] [get_pins u0_opa_nan_reg/D] [get_pins u0_snan_reg/D]         \
[get_pins u0_qnan_reg/D] [get_pins u0_inf_reg/D] [get_pins u0_ind_reg/D]       \
[get_pins u0_snan_r_b_reg/D] [get_pins u0_qnan_r_b_reg/D] [get_pins            \
u0_snan_r_a_reg/D] [get_pins u0_qnan_r_a_reg/D] [get_pins u0_infb_f_r_reg/D]   \
[get_pins u0_infa_f_r_reg/D] [get_pins u0_expb_ff_reg/D] [get_pins             \
u0_expa_ff_reg/D] [get_pins fpu_op_r3_reg_0_/D] [get_pins fpu_op_r3_reg_1_/D]  \
[get_pins fpu_op_r3_reg_2_/D] [get_pins fpu_op_r2_reg_0_/D] [get_pins          \
fpu_op_r2_reg_1_/D] [get_pins fpu_op_r2_reg_2_/D] [get_pins                    \
fpu_op_r1_reg_0_/D] [get_pins fpu_op_r1_reg_1_/D] [get_pins                    \
fpu_op_r1_reg_2_/D] [get_pins rmode_r3_reg_0_/D] [get_pins rmode_r3_reg_1_/D]  \
[get_pins rmode_r2_reg_0_/D] [get_pins rmode_r2_reg_1_/D] [get_pins            \
rmode_r1_reg_0_/D] [get_pins rmode_r1_reg_1_/D] [get_pins opb_r_reg_0_/D]      \
[get_pins opb_r_reg_1_/D] [get_pins opb_r_reg_2_/D] [get_pins opb_r_reg_3_/D]  \
[get_pins opb_r_reg_4_/D] [get_pins opb_r_reg_5_/D] [get_pins opb_r_reg_6_/D]  \
[get_pins opb_r_reg_7_/D] [get_pins opb_r_reg_8_/D] [get_pins opb_r_reg_9_/D]  \
[get_pins opb_r_reg_10_/D] [get_pins opb_r_reg_11_/D] [get_pins                \
opb_r_reg_12_/D] [get_pins opb_r_reg_13_/D] [get_pins opb_r_reg_14_/D]         \
[get_pins opb_r_reg_15_/D] [get_pins opb_r_reg_16_/D] [get_pins                \
opb_r_reg_17_/D] [get_pins opb_r_reg_18_/D] [get_pins opb_r_reg_19_/D]         \
[get_pins opb_r_reg_20_/D] [get_pins opb_r_reg_21_/D] [get_pins                \
opb_r_reg_22_/D] [get_pins opb_r_reg_23_/D] [get_pins opb_r_reg_24_/D]         \
[get_pins opb_r_reg_25_/D] [get_pins opb_r_reg_26_/D] [get_pins                \
opb_r_reg_27_/D] [get_pins opb_r_reg_28_/D] [get_pins opb_r_reg_29_/D]         \
[get_pins opb_r_reg_30_/D] [get_pins opb_r_reg_31_/D] [get_pins                \
opa_r_reg_0_/D] [get_pins opa_r_reg_1_/D] [get_pins opa_r_reg_2_/D] [get_pins  \
opa_r_reg_3_/D] [get_pins opa_r_reg_4_/D] [get_pins opa_r_reg_5_/D] [get_pins  \
opa_r_reg_6_/D] [get_pins opa_r_reg_7_/D] [get_pins opa_r_reg_8_/D] [get_pins  \
opa_r_reg_9_/D] [get_pins opa_r_reg_10_/D] [get_pins opa_r_reg_11_/D]          \
[get_pins opa_r_reg_12_/D] [get_pins opa_r_reg_13_/D] [get_pins                \
opa_r_reg_14_/D] [get_pins opa_r_reg_15_/D] [get_pins opa_r_reg_16_/D]         \
[get_pins opa_r_reg_17_/D] [get_pins opa_r_reg_18_/D] [get_pins                \
opa_r_reg_19_/D] [get_pins opa_r_reg_20_/D] [get_pins opa_r_reg_21_/D]         \
[get_pins opa_r_reg_22_/D] [get_pins opa_r_reg_23_/D] [get_pins                \
opa_r_reg_24_/D] [get_pins opa_r_reg_25_/D] [get_pins opa_r_reg_26_/D]         \
[get_pins opa_r_reg_27_/D] [get_pins opa_r_reg_28_/D] [get_pins                \
opa_r_reg_29_/D] [get_pins opa_r_reg_30_/D] [get_pins opa_r_reg_31_/D]]
set_input_delay -clock clk  0.001  [get_ports clk]
set_input_delay -clock clk  0.001  [get_ports {rmode[1]}]
set_input_delay -clock clk  0.001  [get_ports {rmode[0]}]
set_input_delay -clock clk  0.001  [get_ports {fpu_op[2]}]
set_input_delay -clock clk  0.001  [get_ports {fpu_op[1]}]
set_input_delay -clock clk  0.001  [get_ports {fpu_op[0]}]
set_input_delay -clock clk  0.001  [get_ports {opa[31]}]
set_input_delay -clock clk  0.001  [get_ports {opa[30]}]
set_input_delay -clock clk  0.001  [get_ports {opa[29]}]
set_input_delay -clock clk  0.001  [get_ports {opa[28]}]
set_input_delay -clock clk  0.001  [get_ports {opa[27]}]
set_input_delay -clock clk  0.001  [get_ports {opa[26]}]
set_input_delay -clock clk  0.001  [get_ports {opa[25]}]
set_input_delay -clock clk  0.001  [get_ports {opa[24]}]
set_input_delay -clock clk  0.001  [get_ports {opa[23]}]
set_input_delay -clock clk  0.001  [get_ports {opa[22]}]
set_input_delay -clock clk  0.001  [get_ports {opa[21]}]
set_input_delay -clock clk  0.001  [get_ports {opa[20]}]
set_input_delay -clock clk  0.001  [get_ports {opa[19]}]
set_input_delay -clock clk  0.001  [get_ports {opa[18]}]
set_input_delay -clock clk  0.001  [get_ports {opa[17]}]
set_input_delay -clock clk  0.001  [get_ports {opa[16]}]
set_input_delay -clock clk  0.001  [get_ports {opa[15]}]
set_input_delay -clock clk  0.001  [get_ports {opa[14]}]
set_input_delay -clock clk  0.001  [get_ports {opa[13]}]
set_input_delay -clock clk  0.001  [get_ports {opa[12]}]
set_input_delay -clock clk  0.001  [get_ports {opa[11]}]
set_input_delay -clock clk  0.001  [get_ports {opa[10]}]
set_input_delay -clock clk  0.001  [get_ports {opa[9]}]
set_input_delay -clock clk  0.001  [get_ports {opa[8]}]
set_input_delay -clock clk  0.001  [get_ports {opa[7]}]
set_input_delay -clock clk  0.001  [get_ports {opa[6]}]
set_input_delay -clock clk  0.001  [get_ports {opa[5]}]
set_input_delay -clock clk  0.001  [get_ports {opa[4]}]
set_input_delay -clock clk  0.001  [get_ports {opa[3]}]
set_input_delay -clock clk  0.001  [get_ports {opa[2]}]
set_input_delay -clock clk  0.001  [get_ports {opa[1]}]
set_input_delay -clock clk  0.001  [get_ports {opa[0]}]
set_input_delay -clock clk  0.001  [get_ports {opb[31]}]
set_input_delay -clock clk  0.001  [get_ports {opb[30]}]
set_input_delay -clock clk  0.001  [get_ports {opb[29]}]
set_input_delay -clock clk  0.001  [get_ports {opb[28]}]
set_input_delay -clock clk  0.001  [get_ports {opb[27]}]
set_input_delay -clock clk  0.001  [get_ports {opb[26]}]
set_input_delay -clock clk  0.001  [get_ports {opb[25]}]
set_input_delay -clock clk  0.001  [get_ports {opb[24]}]
set_input_delay -clock clk  0.001  [get_ports {opb[23]}]
set_input_delay -clock clk  0.001  [get_ports {opb[22]}]
set_input_delay -clock clk  0.001  [get_ports {opb[21]}]
set_input_delay -clock clk  0.001  [get_ports {opb[20]}]
set_input_delay -clock clk  0.001  [get_ports {opb[19]}]
set_input_delay -clock clk  0.001  [get_ports {opb[18]}]
set_input_delay -clock clk  0.001  [get_ports {opb[17]}]
set_input_delay -clock clk  0.001  [get_ports {opb[16]}]
set_input_delay -clock clk  0.001  [get_ports {opb[15]}]
set_input_delay -clock clk  0.001  [get_ports {opb[14]}]
set_input_delay -clock clk  0.001  [get_ports {opb[13]}]
set_input_delay -clock clk  0.001  [get_ports {opb[12]}]
set_input_delay -clock clk  0.001  [get_ports {opb[11]}]
set_input_delay -clock clk  0.001  [get_ports {opb[10]}]
set_input_delay -clock clk  0.001  [get_ports {opb[9]}]
set_input_delay -clock clk  0.001  [get_ports {opb[8]}]
set_input_delay -clock clk  0.001  [get_ports {opb[7]}]
set_input_delay -clock clk  0.001  [get_ports {opb[6]}]
set_input_delay -clock clk  0.001  [get_ports {opb[5]}]
set_input_delay -clock clk  0.001  [get_ports {opb[4]}]
set_input_delay -clock clk  0.001  [get_ports {opb[3]}]
set_input_delay -clock clk  0.001  [get_ports {opb[2]}]
set_input_delay -clock clk  0.001  [get_ports {opb[1]}]
set_input_delay -clock clk  0.001  [get_ports {opb[0]}]
set_output_delay -clock clk  0.001  [get_ports {out[31]}]
set_output_delay -clock clk  0.001  [get_ports {out[30]}]
set_output_delay -clock clk  0.001  [get_ports {out[29]}]
set_output_delay -clock clk  0.001  [get_ports {out[28]}]
set_output_delay -clock clk  0.001  [get_ports {out[27]}]
set_output_delay -clock clk  0.001  [get_ports {out[26]}]
set_output_delay -clock clk  0.001  [get_ports {out[25]}]
set_output_delay -clock clk  0.001  [get_ports {out[24]}]
set_output_delay -clock clk  0.001  [get_ports {out[23]}]
set_output_delay -clock clk  0.001  [get_ports {out[22]}]
set_output_delay -clock clk  0.001  [get_ports {out[21]}]
set_output_delay -clock clk  0.001  [get_ports {out[20]}]
set_output_delay -clock clk  0.001  [get_ports {out[19]}]
set_output_delay -clock clk  0.001  [get_ports {out[18]}]
set_output_delay -clock clk  0.001  [get_ports {out[17]}]
set_output_delay -clock clk  0.001  [get_ports {out[16]}]
set_output_delay -clock clk  0.001  [get_ports {out[15]}]
set_output_delay -clock clk  0.001  [get_ports {out[14]}]
set_output_delay -clock clk  0.001  [get_ports {out[13]}]
set_output_delay -clock clk  0.001  [get_ports {out[12]}]
set_output_delay -clock clk  0.001  [get_ports {out[11]}]
set_output_delay -clock clk  0.001  [get_ports {out[10]}]
set_output_delay -clock clk  0.001  [get_ports {out[9]}]
set_output_delay -clock clk  0.001  [get_ports {out[8]}]
set_output_delay -clock clk  0.001  [get_ports {out[7]}]
set_output_delay -clock clk  0.001  [get_ports {out[6]}]
set_output_delay -clock clk  0.001  [get_ports {out[5]}]
set_output_delay -clock clk  0.001  [get_ports {out[4]}]
set_output_delay -clock clk  0.001  [get_ports {out[3]}]
set_output_delay -clock clk  0.001  [get_ports {out[2]}]
set_output_delay -clock clk  0.001  [get_ports {out[1]}]
set_output_delay -clock clk  0.001  [get_ports {out[0]}]
set_output_delay -clock clk  0.001  [get_ports inf]
set_output_delay -clock clk  0.001  [get_ports snan]
set_output_delay -clock clk  0.001  [get_ports qnan]
set_output_delay -clock clk  0.001  [get_ports ine]
set_output_delay -clock clk  0.001  [get_ports overflow]
set_output_delay -clock clk  0.001  [get_ports underflow]
set_output_delay -clock clk  0.001  [get_ports zero]
set_output_delay -clock clk  0.001  [get_ports div_by_zero]

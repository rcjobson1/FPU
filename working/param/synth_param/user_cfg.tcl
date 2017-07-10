# ========== Copyright Header Begin ==========================================
# 
# OpenSPARC T1 Processor File: user_cfg.scr
# Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
# 
# The above named program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public
# License version 2 as published by the Free Software Foundation.
# 
# The above named program is distributed in the hope that it will be 
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public
# License along with this work; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
# 
# ========== Copyright Header End ============================================
source -echo -verbose ./project_cfg.tcl

set rtl_files { \
		fpu.v \
		except.v \
		post_norm.v \
		pre_norm_fmul.v \
		pre_norm.v \
	
		primitives.v \
		}

#set dont_touch_modules { Mult }

set dont_use_cells 1
# can only use DFFRS, DFFR, DFFS, DFF
set dont_use_cell_list { \
	NangateOpenCellLibrary/DFF_X2 \
	NangateOpenCellLibrary/DFFR_X2 \
	NangateOpenCellLibrary/DFFS_X2 \
	NangateOpenCellLibrary/DFFRS_X1 \
	NangateOpenCellLibrary/DFFRS_X2 \
	NangateOpenCellLibrary/DLH_X1 \
	NangateOpenCellLibrary/DLH_X2 \
	NangateOpenCellLibrary/CLKGATETST_X1 \
	NangateOpenCellLibrary/CLKGATETST_X2 \
	NangateOpenCellLibrary/CLKGATETST_X4 \
	NangateOpenCellLibrary/CLKGATETST_X8 \
	NangateOpenCellLibrary/CLKGATE_X1 \
	NangateOpenCellLibrary/CLKGATE_X2 \
	NangateOpenCellLibrary/CLKGATE_X4 \
	NangateOpenCellLibrary/CLKGATE_X8 \
	NangateOpenCellLibrary/DLL_X1 \
	NangateOpenCellLibrary/DLL_X2 \
	NangateOpenCellLibrary/SDFFRS_X1 \
	NangateOpenCellLibrary/SDFFRS_X2 \
	NangateOpenCellLibrary/SDFFR_X1 \
	NangateOpenCellLibrary/SDFFR_X2 \
	NangateOpenCellLibrary/SDFFS_X1 \
	NangateOpenCellLibrary/SDFFS_X2 \
	NangateOpenCellLibrary/SDFF_X1 \
	NangateOpenCellLibrary/SDFF_X2 \
	NangateOpenCellLibrary/TLAT_X1 \
	NangateOpenCellLibrary/FA_X1 \
}
 
set mix_files {}
set top_module fpu 
set include_paths { design/sys/iop/include }

set black_box_libs {}
set black_box_designs {}
set mem_libs {}

set compile_effort "high"
set area_effort "low"

set compile_flatten_all 1
set hdlin_keep_signal_name user

set compile_no_new_cells_at_top_level false
#set compile_delete_unloaded_sequential_cells false

set default_clk clk
set default_clk_freq  1000
set default_setup_skew  0.1
set default_hold_skew  0.1
set default_clk_transition 0.1 
set clk_list {{ clk 720.0 0 0 0 }}
set ideal_net_list {}
set false_path_list {}
set enforce_input_fanout_one     0
set allow_outport_drive_innodes  1
set skip_scan            0
set add_lockup_latch     false
set chain_count          1
set scanin_port_list     {}
set scanout_port_list    {}
set scanenable_port      global_shift_enable
set has_test_stub        0
set scanenable_pin       test_stub_no_bist/se
set long_chain_so_0_net  long_chain_so_0
set short_chain_so_0_net short_chain_so_0
set so_0_net             so_0
set insert_extra_lockup_latch 0
set extra_lockup_latch_clk_list {}

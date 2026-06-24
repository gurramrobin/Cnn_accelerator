-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Jun 12 17:37:19 2026
-- Host        : DESKTOP-1HEQ2M2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/CHINNA/Vivado_workspace/cnn_accelerator/cnn_accelerator.gen/sources_1/bd/cnn_pipeline/ip/cnn_pipeline_maxpool_0_1/cnn_pipeline_maxpool_0_1_sim_netlist.vhdl
-- Design      : cnn_pipeline_maxpool_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init is
  port (
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \icmp_ln70_reg_190_reg[0]\ : out STD_LOGIC;
    ap_sig_allocacmp_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_2_fu_122_p2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    \i_fu_62_reg[0]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_ready : in STD_LOGIC;
    \i_fu_62_reg[2]\ : in STD_LOGIC;
    \i_fu_62_reg[2]_0\ : in STD_LOGIC;
    \i_fu_62_reg[2]_1\ : in STD_LOGIC;
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init : entity is "maxpool_flow_control_loop_pipe_sequential_init";
end cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init is
  signal \ap_CS_fsm[7]_i_2_n_5\ : STD_LOGIC;
  signal \ap_block_pp0_stage0_11001__0\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__1_n_5\ : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__1_n_5\ : STD_LOGIC;
  signal grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i_fu_62[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i_fu_62[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i_fu_62[2]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \icmp_ln70_reg_190[0]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \select_ln68_2_reg_185[15]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \select_ln68_2_reg_185[15]_i_4\ : label is "soft_lutpair32";
begin
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEEAE"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => ap_done_cache,
      I3 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I4 => \ap_CS_fsm[7]_i_2_n_5\,
      O => D(0)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA08FFFFAA08AA08"
    )
        port map (
      I0 => Q(1),
      I1 => ap_done_cache,
      I2 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I3 => \ap_CS_fsm[7]_i_2_n_5\,
      I4 => ap_ready,
      I5 => Q(2),
      O => D(1)
    );
\ap_CS_fsm[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \i_fu_62_reg[2]_1\,
      I1 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \i_fu_62_reg[2]_0\,
      I4 => \i_fu_62_reg[2]\,
      I5 => \ap_block_pp0_stage0_11001__0\,
      O => \ap_CS_fsm[7]_i_2_n_5\
    );
\ap_done_cache_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ap_CS_fsm[7]_i_2_n_5\,
      I1 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I2 => ap_done_cache,
      O => \ap_done_cache_i_1__1_n_5\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__1_n_5\,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFAA0000"
    )
        port map (
      I0 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter1_reg,
      I4 => ap_rst_n,
      I5 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready,
      O => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg
    );
\ap_loop_init_int_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD0FF"
    )
        port map (
      I0 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I1 => \ap_block_pp0_stage0_11001__0\,
      I2 => ap_loop_init_int,
      I3 => ap_rst_n,
      I4 => \ap_CS_fsm[7]_i_2_n_5\,
      O => \ap_loop_init_int_i_1__1_n_5\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__1_n_5\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(0),
      I1 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready,
      I2 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      O => \ap_CS_fsm_reg[5]\
    );
grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \ap_block_pp0_stage0_11001__0\,
      I1 => \i_fu_62_reg[2]\,
      I2 => \i_fu_62_reg[2]_0\,
      I3 => ap_loop_init_int,
      I4 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I5 => \i_fu_62_reg[2]_1\,
      O => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready
    );
\i_fu_62[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_62_reg[2]\,
      O => i_2_fu_122_p2(0)
    );
\i_fu_62[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_fu_62_reg[2]\,
      I1 => ap_loop_init_int,
      I2 => \i_fu_62_reg[2]_1\,
      O => i_2_fu_122_p2(1)
    );
\i_fu_62[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00FB00"
    )
        port map (
      I0 => \i_fu_62_reg[2]\,
      I1 => \i_fu_62_reg[2]_0\,
      I2 => ap_loop_init_int,
      I3 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I4 => \i_fu_62_reg[2]_1\,
      I5 => \ap_block_pp0_stage0_11001__0\,
      O => \i_fu_62_reg[0]\
    );
\i_fu_62[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \i_fu_62_reg[2]\,
      I1 => \i_fu_62_reg[2]_1\,
      I2 => ap_loop_init_int,
      I3 => \i_fu_62_reg[2]_0\,
      O => i_2_fu_122_p2(2)
    );
\i_fu_62[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg,
      I1 => Q(1),
      I2 => out_stream_TREADY_int_regslice,
      O => \ap_block_pp0_stage0_11001__0\
    );
\icmp_ln70_reg_190[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888B888"
    )
        port map (
      I0 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0),
      I1 => \ap_block_pp0_stage0_11001__0\,
      I2 => \i_fu_62_reg[2]\,
      I3 => \i_fu_62_reg[2]_1\,
      I4 => ap_loop_init,
      I5 => \i_fu_62_reg[2]_0\,
      O => \icmp_ln70_reg_190_reg[0]\
    );
\icmp_ln70_reg_190[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      O => ap_loop_init
    );
\select_ln68_2_reg_185[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_62_reg[2]_1\,
      I1 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i_1(1)
    );
\select_ln68_2_reg_185[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_62_reg[2]\,
      I1 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_fu_92_reg[2]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0 : out STD_LOGIC;
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1 : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_fu_92_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_2 : entity is "maxpool_flow_control_loop_pipe_sequential_init";
end cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_2;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_2 is
  signal \ap_CS_fsm[3]_i_2_n_5\ : STD_LOGIC;
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_5 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_5 : STD_LOGIC;
  signal \icmp_ln34_fu_301_p2__3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ap_enable_reg_pp0_iter1_i_1__1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i_fu_92[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_fu_92[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_fu_92[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_fu_92[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_fu_92[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_fu_92[4]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \i_fu_92[4]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \trunc_ln34_reg_597[1]_i_1\ : label is "soft_lutpair18";
begin
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFBAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(0),
      I1 => ap_done_cache,
      I2 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I3 => \ap_CS_fsm[3]_i_2_n_5\,
      I4 => \ap_CS_fsm_reg[3]\(1),
      O => D(0)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => \ap_CS_fsm[3]_i_2_n_5\,
      I2 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I3 => ap_done_cache,
      O => D(1)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => \icmp_ln34_fu_301_p2__3\(0),
      I1 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I2 => Q(0),
      I3 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
      O => \ap_CS_fsm[3]_i_2_n_5\
    );
ap_done_cache_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2_n_5\,
      I1 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I2 => ap_done_cache,
      O => ap_done_cache_i_1_n_5
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_5,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
\ap_enable_reg_pp0_iter1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CAE0000"
    )
        port map (
      I0 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I1 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
      I2 => Q(0),
      I3 => \icmp_ln34_fu_301_p2__3\(0),
      I4 => ap_rst_n,
      O => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7500FFFF"
    )
        port map (
      I0 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I1 => Q(0),
      I2 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
      I3 => ap_loop_init_int,
      I4 => ap_rst_n,
      I5 => \ap_CS_fsm[3]_i_2_n_5\,
      O => ap_loop_init_int_i_1_n_5
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_5,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF08AA"
    )
        port map (
      I0 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I1 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
      I2 => Q(0),
      I3 => \icmp_ln34_fu_301_p2__3\(0),
      I4 => \ap_CS_fsm_reg[3]\(0),
      O => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1
    );
\i_fu_92[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_92_reg[4]\(0),
      O => \i_fu_92_reg[2]\(0)
    );
\i_fu_92[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_fu_92_reg[4]\(0),
      I1 => ap_loop_init_int,
      I2 => \i_fu_92_reg[4]\(1),
      O => \i_fu_92_reg[2]\(1)
    );
\i_fu_92[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \i_fu_92_reg[4]\(0),
      I1 => \i_fu_92_reg[4]\(1),
      I2 => ap_loop_init_int,
      I3 => \i_fu_92_reg[4]\(2),
      O => \i_fu_92_reg[2]\(2)
    );
\i_fu_92[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_92_reg[4]\(1),
      I1 => \i_fu_92_reg[4]\(0),
      I2 => \i_fu_92_reg[4]\(2),
      I3 => ap_loop_init_int,
      I4 => \i_fu_92_reg[4]\(3),
      O => \i_fu_92_reg[2]\(3)
    );
\i_fu_92[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80008080"
    )
        port map (
      I0 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I1 => \icmp_ln34_fu_301_p2__3\(0),
      I2 => ap_loop_init_int,
      I3 => Q(0),
      I4 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
      O => SR(0)
    );
\i_fu_92[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \icmp_ln34_fu_301_p2__3\(0),
      I1 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I2 => Q(0),
      I3 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
      O => E(0)
    );
\i_fu_92[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \i_fu_92_reg[4]\(2),
      I1 => \i_fu_92_reg[4]\(0),
      I2 => \i_fu_92_reg[4]\(1),
      I3 => \i_fu_92_reg[4]\(3),
      I4 => ap_loop_init,
      I5 => \i_fu_92_reg[4]\(4),
      O => \i_fu_92_reg[2]\(4)
    );
\i_fu_92[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \i_fu_92_reg[4]\(3),
      I1 => \i_fu_92_reg[4]\(2),
      I2 => \i_fu_92_reg[4]\(4),
      I3 => ap_loop_init,
      I4 => \i_fu_92_reg[4]\(0),
      I5 => \i_fu_92_reg[4]\(1),
      O => \icmp_ln34_fu_301_p2__3\(0)
    );
\i_fu_92[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      O => ap_loop_init
    );
\trunc_ln34_reg_597[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => Q(0),
      I3 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
      O => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_3 is
  port (
    \or_s_fu_96_reg[1]\ : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \indvar_flatten_fu_100_reg[0]\ : out STD_LOGIC;
    indvar_flatten_fu_1000 : out STD_LOGIC;
    add_ln45_fu_252_p2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in : out STD_LOGIC;
    select_ln45_fu_292_p3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    first_iter_0_fu_306_p2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    \or_s_fu_96_reg[1]_0\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \icmp_ln58_reg_643_reg[0]\ : in STD_LOGIC;
    grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg : in STD_LOGIC;
    \icmp_ln58_reg_643_reg[0]_0\ : in STD_LOGIC;
    \icmp_ln58_reg_643_reg[0]_1\ : in STD_LOGIC;
    \icmp_ln58_reg_643_reg[0]_2\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_done_cache_reg_0 : in STD_LOGIC;
    ap_done_cache_reg_1 : in STD_LOGIC;
    ap_done_cache_reg_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_3 : entity is "maxpool_flow_control_loop_pipe_sequential_init";
end cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_3;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_3 is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_5\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_5\ : STD_LOGIC;
  signal grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_100[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_100[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_100[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_100[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \oc_s_fu_76[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \oc_s_fu_76[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \oc_s_fu_76[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \or_s_fu_96[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \or_s_fu_96[1]_i_1\ : label is "soft_lutpair3";
begin
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFBAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => ap_done_cache,
      I2 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I3 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready,
      I4 => Q(1),
      O => D(0)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => Q(1),
      I1 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready,
      I2 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I3 => ap_done_cache,
      O => D(1)
    );
\ap_CS_fsm[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => ap_done_cache_reg_0,
      I1 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => ap_done_cache_reg_1,
      I4 => ap_done_cache_reg_2,
      O => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => ap_done_cache_reg_2,
      I1 => ap_done_cache_reg_1,
      I2 => ap_loop_init_int,
      I3 => ap_done_cache_reg_0,
      I4 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I5 => ap_done_cache,
      O => \ap_done_cache_i_1__0_n_5\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_5\,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A080A0A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_done_cache_reg_0,
      I2 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => ap_done_cache_reg_1,
      I5 => ap_done_cache_reg_2,
      O => ap_rst_n_0
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F555F555F755F55"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_done_cache_reg_0,
      I2 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => ap_done_cache_reg_1,
      I5 => ap_done_cache_reg_2,
      O => \ap_loop_init_int_i_1__0_n_5\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_5\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFFEFAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => ap_done_cache_reg_2,
      I2 => ap_done_cache_reg_1,
      I3 => ap_loop_init_int,
      I4 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I5 => ap_done_cache_reg_0,
      O => \ap_CS_fsm_reg[3]\
    );
\icmp_ln58_reg_643[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0EAC0C0D5C0D5D5"
    )
        port map (
      I0 => \icmp_ln58_reg_643_reg[0]\,
      I1 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \icmp_ln58_reg_643_reg[0]_0\,
      I4 => \icmp_ln58_reg_643_reg[0]_1\,
      I5 => \icmp_ln58_reg_643_reg[0]_2\,
      O => \or_s_fu_96_reg[1]\
    );
\indvar_flatten_fu_100[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_done_cache_reg_2,
      O => add_ln45_fu_252_p2(0)
    );
\indvar_flatten_fu_100[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => ap_done_cache_reg_2,
      I1 => ap_loop_init_int,
      I2 => ap_done_cache_reg_0,
      O => add_ln45_fu_252_p2(1)
    );
\indvar_flatten_fu_100[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCC8CC"
    )
        port map (
      I0 => ap_done_cache_reg_0,
      I1 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => ap_done_cache_reg_1,
      I4 => ap_done_cache_reg_2,
      O => indvar_flatten_fu_1000
    );
\indvar_flatten_fu_100[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => ap_done_cache_reg_2,
      I1 => ap_done_cache_reg_0,
      I2 => ap_loop_init_int,
      I3 => ap_done_cache_reg_1,
      O => add_ln45_fu_252_p2(2)
    );
\oc_s_fu_76[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I2 => \icmp_ln58_reg_643_reg[0]_0\,
      O => first_iter_0_fu_306_p2(0)
    );
\oc_s_fu_76[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FB00"
    )
        port map (
      I0 => ap_done_cache_reg_2,
      I1 => ap_done_cache_reg_1,
      I2 => ap_done_cache_reg_0,
      I3 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I4 => ap_loop_init_int,
      O => \indvar_flatten_fu_100_reg[0]\
    );
\oc_s_fu_76[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \icmp_ln58_reg_643_reg[0]_0\,
      I1 => ap_loop_init_int,
      O => p_0_in
    );
\or_s_fu_96[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"090A"
    )
        port map (
      I0 => \icmp_ln58_reg_643_reg[0]_2\,
      I1 => \icmp_ln58_reg_643_reg[0]_0\,
      I2 => ap_loop_init_int,
      I3 => \icmp_ln58_reg_643_reg[0]_1\,
      O => select_ln45_fu_292_p3(0)
    );
\or_s_fu_96[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F70008"
    )
        port map (
      I0 => \icmp_ln58_reg_643_reg[0]_2\,
      I1 => \icmp_ln58_reg_643_reg[0]_1\,
      I2 => \icmp_ln58_reg_643_reg[0]_0\,
      I3 => ap_loop_init_int,
      I4 => \icmp_ln58_reg_643_reg[0]\,
      O => select_ln45_fu_292_p3(1)
    );
\v_4_reg_657[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1500151500150000"
    )
        port map (
      I0 => \icmp_ln58_reg_643_reg[0]\,
      I1 => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \icmp_ln58_reg_643_reg[0]_0\,
      I4 => \icmp_ln58_reg_643_reg[0]_1\,
      I5 => \icmp_ln58_reg_643_reg[0]_2\,
      O => \or_s_fu_96_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_regslice_both is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_block_pp0_stage0_subdone : out STD_LOGIC;
    \data_p1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    in_stream_TREADY_int_regslice : in STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_regslice_both : entity is "maxpool_regslice_both";
end cnn_pipeline_maxpool_0_1_maxpool_regslice_both;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_regslice_both is
  signal \FSM_sequential_state[0]_i_1_n_5\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_5\ : STD_LOGIC;
  signal ack_in_t_i_2_n_5 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[10]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[11]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[13]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[14]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[15]_i_2__0_n_5\ : STD_LOGIC;
  signal \data_p1[1]_i_1__2_n_5\ : STD_LOGIC;
  signal \data_p1[2]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[5]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[6]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p1[9]_i_1__0_n_5\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_5\ : STD_LOGIC;
  signal \state[1]_i_1_n_5\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^state_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \trunc_ln34_reg_597[1]_i_2\ : label is "soft_lutpair35";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  \state_reg[0]_0\(0) <= \^state_reg[0]_0\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080FF80FFFFFFFF"
    )
        port map (
      I0 => \^state_reg[0]_0\(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(0),
      I3 => \state__0\(0),
      I4 => in_stream_TVALID,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1_n_5\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^ack_in_t_reg_0\,
      I4 => in_stream_TVALID,
      O => \FSM_sequential_state[1]_i_1_n_5\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_5\,
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_5\,
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
ack_in_t_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => in_stream_TREADY_int_regslice,
      I1 => in_stream_TVALID,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => ack_in_t_i_2_n_5
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_2_n_5,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[0]\,
      I1 => in_stream_TDATA(0),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[0]_i_1__0_n_5\
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[10]\,
      I1 => in_stream_TDATA(10),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[10]_i_1__0_n_5\
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[11]\,
      I1 => in_stream_TDATA(11),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[11]_i_1__0_n_5\
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[12]\,
      I1 => in_stream_TDATA(12),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[12]_i_1__0_n_5\
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[13]\,
      I1 => in_stream_TDATA(13),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[13]_i_1__0_n_5\
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[14]\,
      I1 => in_stream_TDATA(14),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[14]_i_1__0_n_5\
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E240404040404040"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => in_stream_TVALID,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \^state_reg[0]_0\(0),
      O => load_p1
    );
\data_p1[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[15]\,
      I1 => in_stream_TDATA(15),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[15]_i_2__0_n_5\
    );
\data_p1[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[1]\,
      I1 => in_stream_TDATA(1),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[1]_i_1__2_n_5\
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[2]\,
      I1 => in_stream_TDATA(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[2]_i_1__0_n_5\
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[3]\,
      I1 => in_stream_TDATA(3),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[3]_i_1__0_n_5\
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[4]\,
      I1 => in_stream_TDATA(4),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[4]_i_1__0_n_5\
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[5]\,
      I1 => in_stream_TDATA(5),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[5]_i_1__0_n_5\
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[6]\,
      I1 => in_stream_TDATA(6),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[6]_i_1__0_n_5\
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[7]\,
      I1 => in_stream_TDATA(7),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[7]_i_1__0_n_5\
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[8]\,
      I1 => in_stream_TDATA(8),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[8]_i_1__0_n_5\
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_5_[9]\,
      I1 => in_stream_TDATA(9),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => \data_p1[9]_i_1__0_n_5\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[10]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[11]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[12]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[13]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[14]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[15]_i_2__0_n_5\,
      Q => \data_p1_reg[15]_0\(15),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__2_n_5\,
      Q => \data_p1_reg[15]_0\(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[4]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[5]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[6]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[7]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[8]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[9]_i_1__0_n_5\,
      Q => \data_p1_reg[15]_0\(9),
      R => '0'
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => \^ack_in_t_reg_0\,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(0),
      Q => \data_p2_reg_n_5_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(10),
      Q => \data_p2_reg_n_5_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(11),
      Q => \data_p2_reg_n_5_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(12),
      Q => \data_p2_reg_n_5_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(13),
      Q => \data_p2_reg_n_5_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(14),
      Q => \data_p2_reg_n_5_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(15),
      Q => \data_p2_reg_n_5_[15]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(1),
      Q => \data_p2_reg_n_5_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(2),
      Q => \data_p2_reg_n_5_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(3),
      Q => \data_p2_reg_n_5_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(4),
      Q => \data_p2_reg_n_5_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(5),
      Q => \data_p2_reg_n_5_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(6),
      Q => \data_p2_reg_n_5_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(7),
      Q => \data_p2_reg_n_5_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(8),
      Q => \data_p2_reg_n_5_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TDATA(9),
      Q => \data_p2_reg_n_5_[9]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0F0F070F070F0"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \^state_reg[0]_0\(0),
      I3 => state(1),
      I4 => \^ack_in_t_reg_0\,
      I5 => in_stream_TVALID,
      O => \state[0]_i_1_n_5\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8FFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(0),
      I2 => state(1),
      I3 => in_stream_TVALID,
      I4 => \^state_reg[0]_0\(0),
      O => \state[1]_i_1_n_5\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_5\,
      Q => \^state_reg[0]_0\(0),
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_5\,
      Q => state(1),
      S => ap_rst_n_inv
    );
\trunc_ln34_reg_597[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^state_reg[0]_0\(0),
      I1 => ap_enable_reg_pp0_iter1,
      O => ap_block_pp0_stage0_subdone
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_regslice_both_0 is
  port (
    out_stream_TREADY_int_regslice : out STD_LOGIC;
    ap_rst_n_inv : out STD_LOGIC;
    out_stream_TVALID : out STD_LOGIC;
    ack_in_t_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_ready : out STD_LOGIC;
    ack_in_t_reg_1 : out STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TDATA_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_regslice_both_0 : entity is "maxpool_regslice_both";
end cnn_pipeline_maxpool_0_1_maxpool_regslice_both_0;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_regslice_both_0 is
  signal \ack_in_t_i_1__0_n_5\ : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \data_p1[0]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[10]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[11]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[12]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[13]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[14]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[15]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1[1]_i_1__1_n_5\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[3]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[4]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[5]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[6]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[7]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[8]_i_1_n_5\ : STD_LOGIC;
  signal \data_p1[9]_i_1_n_5\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_5_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tready_int_regslice\ : STD_LOGIC;
  signal \^out_stream_tvalid\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_5\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_p1[0]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \select_ln68_2_reg_185[15]_i_1\ : label is "soft_lutpair36";
begin
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  out_stream_TREADY_int_regslice <= \^out_stream_tready_int_regslice\;
  out_stream_TVALID <= \^out_stream_tvalid\;
\FSM_sequential_state[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEEEEEFFFFFFFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(1),
      I4 => \^out_stream_tready_int_regslice\,
      I5 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC4C4C4C4C4C4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^out_stream_tready_int_regslice\,
      I4 => Q(1),
      I5 => ap_enable_reg_pp0_iter1,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => \^ap_rst_n_inv\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => \^ap_rst_n_inv\
    );
ack_in_t_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_inv\
    );
\ack_in_t_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00FFFFFFAAFF00"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(1),
      I3 => \^out_stream_tready_int_regslice\,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \ack_in_t_i_1__0_n_5\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_5\,
      Q => \^out_stream_tready_int_regslice\,
      R => \^ap_rst_n_inv\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F222F222F222F2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => Q(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => out_stream_TREADY,
      O => \ap_CS_fsm_reg[0]\(0)
    );
ap_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => Q(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => out_stream_TREADY,
      O => ap_ready
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[0]\,
      I1 => D(0),
      I2 => out_stream_TDATA_reg(0),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[0]_i_1_n_5\
    );
\data_p1[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^out_stream_tready_int_regslice\,
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter1,
      O => ack_in_t_reg_1
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[10]\,
      I1 => D(10),
      I2 => out_stream_TDATA_reg(10),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[10]_i_1_n_5\
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[11]\,
      I1 => D(11),
      I2 => out_stream_TDATA_reg(11),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[11]_i_1_n_5\
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[12]\,
      I1 => D(12),
      I2 => out_stream_TDATA_reg(12),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[12]_i_1_n_5\
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[13]\,
      I1 => D(13),
      I2 => out_stream_TDATA_reg(13),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[13]_i_1_n_5\
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[14]\,
      I1 => D(14),
      I2 => out_stream_TDATA_reg(14),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[14]_i_1_n_5\
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E222222240000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \^out_stream_tready_int_regslice\,
      I3 => Q(1),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => out_stream_TREADY,
      O => load_p1
    );
\data_p1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[15]\,
      I1 => D(15),
      I2 => out_stream_TDATA_reg(15),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[15]_i_2_n_5\
    );
\data_p1[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[1]\,
      I1 => D(1),
      I2 => out_stream_TDATA_reg(1),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[1]_i_1__1_n_5\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[2]\,
      I1 => D(2),
      I2 => out_stream_TDATA_reg(2),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[2]_i_1_n_5\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[3]\,
      I1 => D(3),
      I2 => out_stream_TDATA_reg(3),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[3]_i_1_n_5\
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[4]\,
      I1 => D(4),
      I2 => out_stream_TDATA_reg(4),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[4]_i_1_n_5\
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[5]\,
      I1 => D(5),
      I2 => out_stream_TDATA_reg(5),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[5]_i_1_n_5\
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[6]\,
      I1 => D(6),
      I2 => out_stream_TDATA_reg(6),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[6]_i_1_n_5\
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[7]\,
      I1 => D(7),
      I2 => out_stream_TDATA_reg(7),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[7]_i_1_n_5\
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[8]\,
      I1 => D(8),
      I2 => out_stream_TDATA_reg(8),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[8]_i_1_n_5\
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CCF0AAAACCF0"
    )
        port map (
      I0 => \data_p2_reg_n_5_[9]\,
      I1 => D(9),
      I2 => out_stream_TDATA_reg(9),
      I3 => E(0),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_p1[9]_i_1_n_5\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_5\,
      Q => out_stream_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[10]_i_1_n_5\,
      Q => out_stream_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[11]_i_1_n_5\,
      Q => out_stream_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[12]_i_1_n_5\,
      Q => out_stream_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[13]_i_1_n_5\,
      Q => out_stream_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[14]_i_1_n_5\,
      Q => out_stream_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[15]_i_2_n_5\,
      Q => out_stream_TDATA(15),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__1_n_5\,
      Q => out_stream_TDATA(1),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1_n_5\,
      Q => out_stream_TDATA(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_1_n_5\,
      Q => out_stream_TDATA(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[4]_i_1_n_5\,
      Q => out_stream_TDATA(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[5]_i_1_n_5\,
      Q => out_stream_TDATA(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[6]_i_1_n_5\,
      Q => out_stream_TDATA(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[7]_i_1_n_5\,
      Q => out_stream_TDATA(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[8]_i_1_n_5\,
      Q => out_stream_TDATA(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[9]_i_1_n_5\,
      Q => out_stream_TDATA(9),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \data_p2_reg_n_5_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(10),
      Q => \data_p2_reg_n_5_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(11),
      Q => \data_p2_reg_n_5_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(12),
      Q => \data_p2_reg_n_5_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(13),
      Q => \data_p2_reg_n_5_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(14),
      Q => \data_p2_reg_n_5_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(15),
      Q => \data_p2_reg_n_5_[15]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(1),
      Q => \data_p2_reg_n_5_[1]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(2),
      Q => \data_p2_reg_n_5_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(3),
      Q => \data_p2_reg_n_5_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(4),
      Q => \data_p2_reg_n_5_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(5),
      Q => \data_p2_reg_n_5_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(6),
      Q => \data_p2_reg_n_5_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(7),
      Q => \data_p2_reg_n_5_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(8),
      Q => \data_p2_reg_n_5_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(9),
      Q => \data_p2_reg_n_5_[9]\,
      R => '0'
    );
\select_ln68_2_reg_185[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^out_stream_tready_int_regslice\,
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter1,
      O => ack_in_t_reg_0(0)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC4C4C4C4C4C4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \^out_stream_tvalid\,
      I2 => state(1),
      I3 => \^out_stream_tready_int_regslice\,
      I4 => Q(1),
      I5 => ap_enable_reg_pp0_iter1,
      O => \state[0]_i_1__0_n_5\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEEEEEFFFFFFFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => state(1),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(1),
      I4 => \^out_stream_tready_int_regslice\,
      I5 => \^out_stream_tvalid\,
      O => \state[1]_i_1__0_n_5\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_5\,
      Q => \^out_stream_tvalid\,
      R => \^ap_rst_n_inv\
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__0_n_5\,
      Q => state(1),
      S => \^ap_rst_n_inv\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0\ is
  port (
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_in_t_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    ack_in_t_reg_1 : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    load_p2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0\ : entity is "maxpool_regslice_both";
end \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0\;

architecture STRUCTURE of \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0\ is
  signal \ack_in_t_i_1__1_n_5\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[1]_i_2_n_5\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \data_p2[1]_i_1_n_5\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair37";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair37";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEEEEEFFFFFFFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(0),
      I4 => out_stream_TREADY_int_regslice,
      I5 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^ack_in_t_reg_0\,
      I4 => ack_in_t_reg_1,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => ack_in_t_reg_1,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__1_n_5\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_5\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E222222240000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => out_stream_TREADY_int_regslice,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => out_stream_TREADY,
      O => load_p1
    );
\data_p1[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \data_p1[1]_i_2_n_5\
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_2_n_5\,
      Q => out_stream_TKEEP(0),
      R => '0'
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(0),
      I3 => ap_enable_reg_pp0_iter1,
      O => \data_p2[1]_i_1_n_5\
    );
\data_p2_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => '1',
      Q => data_p2(1),
      S => \data_p2[1]_i_1_n_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0_1\ is
  port (
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ack_in_t_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    ack_in_t_reg_1 : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    load_p2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0_1\ : entity is "maxpool_regslice_both";
end \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0_1\;

architecture STRUCTURE of \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0_1\ is
  signal \ack_in_t_i_1__2_n_5\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[1]_i_2__0_n_5\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \data_p2[1]_i_1_n_5\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__2\ : label is "soft_lutpair39";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair39";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEEEEEFFFFFFFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(0),
      I4 => out_stream_TREADY_int_regslice,
      I5 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^ack_in_t_reg_0\,
      I4 => ack_in_t_reg_1,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => ack_in_t_reg_1,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__2_n_5\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_5\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E222222240000000"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => out_stream_TREADY_int_regslice,
      I3 => Q(0),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => out_stream_TREADY,
      O => load_p1
    );
\data_p1[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \data_p1[1]_i_2__0_n_5\
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_2__0_n_5\,
      Q => out_stream_TSTRB(0),
      R => '0'
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(0),
      I3 => ap_enable_reg_pp0_iter1,
      O => \data_p2[1]_i_1_n_5\
    );
\data_p2_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => '1',
      Q => data_p2(1),
      S => \data_p2[1]_i_1_n_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized1\ is
  port (
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    ack_in_t_reg_0 : in STD_LOGIC;
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TLAST_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized1\ : entity is "maxpool_regslice_both";
end \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized1\;

architecture STRUCTURE of \cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__3_n_5\ : STD_LOGIC;
  signal ack_in_t_reg_n_5 : STD_LOGIC;
  signal \data_p1[0]_i_1__1_n_5\ : STD_LOGIC;
  signal \data_p1[0]_i_2_n_5\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p2[0]_i_1_n_5\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__3\ : label is "soft_lutpair38";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__3\ : label is "soft_lutpair38";
begin
  out_stream_TLAST(0) <= \^out_stream_tlast\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEEEEEFFFFFFFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(0),
      I4 => out_stream_TREADY_int_regslice,
      I5 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ack_in_t_reg_n_5,
      I4 => ack_in_t_reg_0,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => ap_rst_n_inv
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
\ack_in_t_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => ack_in_t_reg_0,
      I2 => ack_in_t_reg_n_5,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__3_n_5\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__3_n_5\,
      Q => ack_in_t_reg_n_5,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBEFFFA8082000"
    )
        port map (
      I0 => \data_p1[0]_i_2_n_5\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ack_in_t_reg_0,
      I4 => out_stream_TREADY,
      I5 => \^out_stream_tlast\(0),
      O => \data_p1[0]_i_1__1_n_5\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0),
      I4 => E(0),
      I5 => out_stream_TLAST_reg(0),
      O => \data_p1[0]_i_2_n_5\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__1_n_5\,
      Q => \^out_stream_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0),
      I1 => Q(0),
      I2 => out_stream_TLAST_reg(0),
      I3 => ack_in_t_reg_0,
      I4 => ack_in_t_reg_n_5,
      I5 => data_p2(0),
      O => \data_p2[0]_i_1_n_5\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1_n_5\,
      Q => data_p2(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_POOL_OR_POOL_OC is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    first_iter_0_fu_306_p2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \output_3_fu_92_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    \or_s_fu_96_reg[1]_0\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_sig_allocacmp_i_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    max_val_fu_378_p3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v_4_fu_402_p3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    v_3_fu_426_p3 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_POOL_OR_POOL_OC : entity is "maxpool_maxpool_Pipeline_POOL_OR_POOL_OC";
end cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_POOL_OR_POOL_OC;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_POOL_OR_POOL_OC is
  signal add_ln45_fu_252_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal \^first_iter_0_fu_306_p2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal first_iter_0_reg_635 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_6 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_9 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_10_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_11_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_12_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_13_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_14_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_15_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_16_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_1_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_2_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_3_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_4_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_5_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_6_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_7_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_8_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_i_9_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_10 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_11 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_12 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_5 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_6 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_7 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_8 : STD_LOGIC;
  signal icmp_ln55_1_fu_469_p2_carry_n_9 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_10_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_11_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_12_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_13_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_14_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_15_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_16_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_1_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_2_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_3_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_4_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_5_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_6_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_7_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_8_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_i_9_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_10 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_11 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_12 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_5 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_6 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_7 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_8 : STD_LOGIC;
  signal icmp_ln55_2_fu_479_p2_carry_n_9 : STD_LOGIC;
  signal icmp_ln55_fu_372_p2_carry_n_10 : STD_LOGIC;
  signal icmp_ln55_fu_372_p2_carry_n_11 : STD_LOGIC;
  signal icmp_ln55_fu_372_p2_carry_n_12 : STD_LOGIC;
  signal icmp_ln55_fu_372_p2_carry_n_6 : STD_LOGIC;
  signal icmp_ln55_fu_372_p2_carry_n_7 : STD_LOGIC;
  signal icmp_ln55_fu_372_p2_carry_n_8 : STD_LOGIC;
  signal icmp_ln55_fu_372_p2_carry_n_9 : STD_LOGIC;
  signal \icmp_ln58_reg_643_reg_n_5_[0]\ : STD_LOGIC;
  signal indvar_flatten_fu_1000 : STD_LOGIC;
  signal \indvar_flatten_fu_100_reg_n_5_[0]\ : STD_LOGIC;
  signal \indvar_flatten_fu_100_reg_n_5_[1]\ : STD_LOGIC;
  signal \indvar_flatten_fu_100_reg_n_5_[2]\ : STD_LOGIC;
  signal max_val_3_fu_473_p3 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal max_val_4_fu_484_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal max_val_reg_651 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \oc_s_fu_76_reg_n_5_[0]\ : STD_LOGIC;
  signal \oc_s_fu_76_reg_n_5_[1]\ : STD_LOGIC;
  signal \or_s_fu_96_reg_n_5_[0]\ : STD_LOGIC;
  signal \or_s_fu_96_reg_n_5_[1]\ : STD_LOGIC;
  signal output_1_fu_84 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal output_1_fu_84_3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal output_2_fu_88 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal output_2_fu_88_2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal output_3_fu_92 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal output_3_fu_92_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal output_fu_80 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal output_fu_80_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC;
  signal select_ln45_fu_292_p3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_3_reg_663 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal v_4_reg_657 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_icmp_ln55_1_fu_469_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_icmp_ln55_2_fu_479_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_icmp_ln55_fu_372_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of icmp_ln55_1_fu_469_p2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of icmp_ln55_2_fu_479_p2_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_17 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_18 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_19 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_20 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_21 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_22 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_23 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of icmp_ln55_2_fu_479_p2_carry_i_24 : label is "soft_lutpair6";
  attribute COMPARATOR_THRESHOLD of icmp_ln55_fu_372_p2_carry : label is 11;
  attribute SOFT_HLUTNM of \output_fu_80[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \output_fu_80[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \output_fu_80[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \output_fu_80[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \output_fu_80[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \output_fu_80[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \output_fu_80[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \output_fu_80[9]_i_1\ : label is "soft_lutpair10";
begin
  first_iter_0_fu_306_p2(0) <= \^first_iter_0_fu_306_p2\(0);
\__11/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => first_iter_0_reg_635(0),
      I2 => \icmp_ln58_reg_643_reg_n_5_[0]\,
      O => output_fu_80_0(0)
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_6,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
\first_iter_0_reg_635_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^first_iter_0_fu_306_p2\(0),
      Q => first_iter_0_reg_635(0),
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_3
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      add_ln45_fu_252_p2(2 downto 0) => add_ln45_fu_252_p2(2 downto 0),
      \ap_CS_fsm_reg[3]\ => \ap_CS_fsm_reg[3]\,
      ap_clk => ap_clk,
      ap_done_cache_reg_0 => \indvar_flatten_fu_100_reg_n_5_[1]\,
      ap_done_cache_reg_1 => \indvar_flatten_fu_100_reg_n_5_[2]\,
      ap_done_cache_reg_2 => \indvar_flatten_fu_100_reg_n_5_[0]\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => flow_control_loop_pipe_sequential_init_U_n_6,
      ap_rst_n_inv => ap_rst_n_inv,
      first_iter_0_fu_306_p2(0) => \^first_iter_0_fu_306_p2\(0),
      grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      \icmp_ln58_reg_643_reg[0]\ => \or_s_fu_96_reg_n_5_[1]\,
      \icmp_ln58_reg_643_reg[0]_0\ => \oc_s_fu_76_reg_n_5_[0]\,
      \icmp_ln58_reg_643_reg[0]_1\ => \oc_s_fu_76_reg_n_5_[1]\,
      \icmp_ln58_reg_643_reg[0]_2\ => \or_s_fu_96_reg_n_5_[0]\,
      indvar_flatten_fu_1000 => indvar_flatten_fu_1000,
      \indvar_flatten_fu_100_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_9,
      \or_s_fu_96_reg[1]\ => flow_control_loop_pipe_sequential_init_U_n_5,
      \or_s_fu_96_reg[1]_0\ => \or_s_fu_96_reg[1]_0\,
      p_0_in => p_0_in,
      select_ln45_fu_292_p3(1 downto 0) => select_ln45_fu_292_p3(1 downto 0)
    );
icmp_ln55_1_fu_469_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => icmp_ln55_1_fu_469_p2_carry_n_5,
      CO(6) => icmp_ln55_1_fu_469_p2_carry_n_6,
      CO(5) => icmp_ln55_1_fu_469_p2_carry_n_7,
      CO(4) => icmp_ln55_1_fu_469_p2_carry_n_8,
      CO(3) => icmp_ln55_1_fu_469_p2_carry_n_9,
      CO(2) => icmp_ln55_1_fu_469_p2_carry_n_10,
      CO(1) => icmp_ln55_1_fu_469_p2_carry_n_11,
      CO(0) => icmp_ln55_1_fu_469_p2_carry_n_12,
      DI(7) => icmp_ln55_1_fu_469_p2_carry_i_1_n_5,
      DI(6) => icmp_ln55_1_fu_469_p2_carry_i_2_n_5,
      DI(5) => icmp_ln55_1_fu_469_p2_carry_i_3_n_5,
      DI(4) => icmp_ln55_1_fu_469_p2_carry_i_4_n_5,
      DI(3) => icmp_ln55_1_fu_469_p2_carry_i_5_n_5,
      DI(2) => icmp_ln55_1_fu_469_p2_carry_i_6_n_5,
      DI(1) => icmp_ln55_1_fu_469_p2_carry_i_7_n_5,
      DI(0) => icmp_ln55_1_fu_469_p2_carry_i_8_n_5,
      O(7 downto 0) => NLW_icmp_ln55_1_fu_469_p2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => icmp_ln55_1_fu_469_p2_carry_i_9_n_5,
      S(6) => icmp_ln55_1_fu_469_p2_carry_i_10_n_5,
      S(5) => icmp_ln55_1_fu_469_p2_carry_i_11_n_5,
      S(4) => icmp_ln55_1_fu_469_p2_carry_i_12_n_5,
      S(3) => icmp_ln55_1_fu_469_p2_carry_i_13_n_5,
      S(2) => icmp_ln55_1_fu_469_p2_carry_i_14_n_5,
      S(1) => icmp_ln55_1_fu_469_p2_carry_i_15_n_5,
      S(0) => icmp_ln55_1_fu_469_p2_carry_i_16_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(14),
      I1 => max_val_reg_651(14),
      I2 => v_4_reg_657(15),
      I3 => max_val_reg_651(15),
      O => icmp_ln55_1_fu_469_p2_carry_i_1_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(12),
      I1 => max_val_reg_651(12),
      I2 => v_4_reg_657(13),
      I3 => max_val_reg_651(13),
      O => icmp_ln55_1_fu_469_p2_carry_i_10_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(10),
      I1 => max_val_reg_651(10),
      I2 => v_4_reg_657(11),
      I3 => max_val_reg_651(11),
      O => icmp_ln55_1_fu_469_p2_carry_i_11_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(8),
      I1 => max_val_reg_651(8),
      I2 => v_4_reg_657(9),
      I3 => max_val_reg_651(9),
      O => icmp_ln55_1_fu_469_p2_carry_i_12_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(6),
      I1 => max_val_reg_651(6),
      I2 => v_4_reg_657(7),
      I3 => max_val_reg_651(7),
      O => icmp_ln55_1_fu_469_p2_carry_i_13_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(4),
      I1 => max_val_reg_651(4),
      I2 => v_4_reg_657(5),
      I3 => max_val_reg_651(5),
      O => icmp_ln55_1_fu_469_p2_carry_i_14_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(2),
      I1 => max_val_reg_651(2),
      I2 => v_4_reg_657(3),
      I3 => max_val_reg_651(3),
      O => icmp_ln55_1_fu_469_p2_carry_i_15_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(0),
      I1 => max_val_reg_651(0),
      I2 => v_4_reg_657(1),
      I3 => max_val_reg_651(1),
      O => icmp_ln55_1_fu_469_p2_carry_i_16_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(12),
      I1 => max_val_reg_651(12),
      I2 => max_val_reg_651(13),
      I3 => v_4_reg_657(13),
      O => icmp_ln55_1_fu_469_p2_carry_i_2_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(10),
      I1 => max_val_reg_651(10),
      I2 => max_val_reg_651(11),
      I3 => v_4_reg_657(11),
      O => icmp_ln55_1_fu_469_p2_carry_i_3_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(8),
      I1 => max_val_reg_651(8),
      I2 => max_val_reg_651(9),
      I3 => v_4_reg_657(9),
      O => icmp_ln55_1_fu_469_p2_carry_i_4_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(6),
      I1 => max_val_reg_651(6),
      I2 => max_val_reg_651(7),
      I3 => v_4_reg_657(7),
      O => icmp_ln55_1_fu_469_p2_carry_i_5_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(4),
      I1 => max_val_reg_651(4),
      I2 => max_val_reg_651(5),
      I3 => v_4_reg_657(5),
      O => icmp_ln55_1_fu_469_p2_carry_i_6_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(2),
      I1 => max_val_reg_651(2),
      I2 => max_val_reg_651(3),
      I3 => v_4_reg_657(3),
      O => icmp_ln55_1_fu_469_p2_carry_i_7_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_4_reg_657(0),
      I1 => max_val_reg_651(0),
      I2 => max_val_reg_651(1),
      I3 => v_4_reg_657(1),
      O => icmp_ln55_1_fu_469_p2_carry_i_8_n_5
    );
icmp_ln55_1_fu_469_p2_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_4_reg_657(14),
      I1 => max_val_reg_651(14),
      I2 => max_val_reg_651(15),
      I3 => v_4_reg_657(15),
      O => icmp_ln55_1_fu_469_p2_carry_i_9_n_5
    );
icmp_ln55_2_fu_479_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => icmp_ln55_2_fu_479_p2_carry_n_5,
      CO(6) => icmp_ln55_2_fu_479_p2_carry_n_6,
      CO(5) => icmp_ln55_2_fu_479_p2_carry_n_7,
      CO(4) => icmp_ln55_2_fu_479_p2_carry_n_8,
      CO(3) => icmp_ln55_2_fu_479_p2_carry_n_9,
      CO(2) => icmp_ln55_2_fu_479_p2_carry_n_10,
      CO(1) => icmp_ln55_2_fu_479_p2_carry_n_11,
      CO(0) => icmp_ln55_2_fu_479_p2_carry_n_12,
      DI(7) => icmp_ln55_2_fu_479_p2_carry_i_1_n_5,
      DI(6) => icmp_ln55_2_fu_479_p2_carry_i_2_n_5,
      DI(5) => icmp_ln55_2_fu_479_p2_carry_i_3_n_5,
      DI(4) => icmp_ln55_2_fu_479_p2_carry_i_4_n_5,
      DI(3) => icmp_ln55_2_fu_479_p2_carry_i_5_n_5,
      DI(2) => icmp_ln55_2_fu_479_p2_carry_i_6_n_5,
      DI(1) => icmp_ln55_2_fu_479_p2_carry_i_7_n_5,
      DI(0) => icmp_ln55_2_fu_479_p2_carry_i_8_n_5,
      O(7 downto 0) => NLW_icmp_ln55_2_fu_479_p2_carry_O_UNCONNECTED(7 downto 0),
      S(7) => icmp_ln55_2_fu_479_p2_carry_i_9_n_5,
      S(6) => icmp_ln55_2_fu_479_p2_carry_i_10_n_5,
      S(5) => icmp_ln55_2_fu_479_p2_carry_i_11_n_5,
      S(4) => icmp_ln55_2_fu_479_p2_carry_i_12_n_5,
      S(3) => icmp_ln55_2_fu_479_p2_carry_i_13_n_5,
      S(2) => icmp_ln55_2_fu_479_p2_carry_i_14_n_5,
      S(1) => icmp_ln55_2_fu_479_p2_carry_i_15_n_5,
      S(0) => icmp_ln55_2_fu_479_p2_carry_i_16_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(14),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(14),
      I3 => v_4_reg_657(14),
      I4 => v_3_reg_663(15),
      I5 => max_val_3_fu_473_p3(15),
      O => icmp_ln55_2_fu_479_p2_carry_i_1_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(12),
      I1 => v_4_reg_657(12),
      I2 => max_val_reg_651(12),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => v_3_reg_663(13),
      I5 => max_val_3_fu_473_p3(13),
      O => icmp_ln55_2_fu_479_p2_carry_i_10_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(10),
      I1 => v_4_reg_657(10),
      I2 => max_val_reg_651(10),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => v_3_reg_663(11),
      I5 => max_val_3_fu_473_p3(11),
      O => icmp_ln55_2_fu_479_p2_carry_i_11_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(8),
      I1 => v_4_reg_657(8),
      I2 => max_val_reg_651(8),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => v_3_reg_663(9),
      I5 => max_val_3_fu_473_p3(9),
      O => icmp_ln55_2_fu_479_p2_carry_i_12_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(6),
      I1 => v_4_reg_657(6),
      I2 => max_val_reg_651(6),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => v_3_reg_663(7),
      I5 => max_val_3_fu_473_p3(7),
      O => icmp_ln55_2_fu_479_p2_carry_i_13_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(4),
      I1 => v_4_reg_657(4),
      I2 => max_val_reg_651(4),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => v_3_reg_663(5),
      I5 => max_val_3_fu_473_p3(5),
      O => icmp_ln55_2_fu_479_p2_carry_i_14_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(2),
      I1 => v_4_reg_657(2),
      I2 => max_val_reg_651(2),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => v_3_reg_663(3),
      I5 => max_val_3_fu_473_p3(3),
      O => icmp_ln55_2_fu_479_p2_carry_i_15_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(0),
      I1 => v_4_reg_657(0),
      I2 => max_val_reg_651(0),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => v_3_reg_663(1),
      I5 => max_val_3_fu_473_p3(1),
      O => icmp_ln55_2_fu_479_p2_carry_i_16_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(15),
      I1 => max_val_reg_651(15),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(15)
    );
icmp_ln55_2_fu_479_p2_carry_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(13),
      I1 => max_val_reg_651(13),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(13)
    );
icmp_ln55_2_fu_479_p2_carry_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(11),
      I1 => max_val_reg_651(11),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(11)
    );
icmp_ln55_2_fu_479_p2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(12),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(12),
      I3 => v_4_reg_657(12),
      I4 => max_val_3_fu_473_p3(13),
      I5 => v_3_reg_663(13),
      O => icmp_ln55_2_fu_479_p2_carry_i_2_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(9),
      I1 => max_val_reg_651(9),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(9)
    );
icmp_ln55_2_fu_479_p2_carry_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(7),
      I1 => max_val_reg_651(7),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(7)
    );
icmp_ln55_2_fu_479_p2_carry_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(5),
      I1 => max_val_reg_651(5),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(5)
    );
icmp_ln55_2_fu_479_p2_carry_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(3),
      I1 => max_val_reg_651(3),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(3)
    );
icmp_ln55_2_fu_479_p2_carry_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_4_reg_657(1),
      I1 => max_val_reg_651(1),
      I2 => icmp_ln55_1_fu_469_p2_carry_n_5,
      O => max_val_3_fu_473_p3(1)
    );
icmp_ln55_2_fu_479_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(10),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(10),
      I3 => v_4_reg_657(10),
      I4 => max_val_3_fu_473_p3(11),
      I5 => v_3_reg_663(11),
      O => icmp_ln55_2_fu_479_p2_carry_i_3_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(8),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(8),
      I3 => v_4_reg_657(8),
      I4 => max_val_3_fu_473_p3(9),
      I5 => v_3_reg_663(9),
      O => icmp_ln55_2_fu_479_p2_carry_i_4_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(6),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(6),
      I3 => v_4_reg_657(6),
      I4 => max_val_3_fu_473_p3(7),
      I5 => v_3_reg_663(7),
      O => icmp_ln55_2_fu_479_p2_carry_i_5_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(4),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(4),
      I3 => v_4_reg_657(4),
      I4 => max_val_3_fu_473_p3(5),
      I5 => v_3_reg_663(5),
      O => icmp_ln55_2_fu_479_p2_carry_i_6_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(2),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(2),
      I3 => v_4_reg_657(2),
      I4 => max_val_3_fu_473_p3(3),
      I5 => v_3_reg_663(3),
      O => icmp_ln55_2_fu_479_p2_carry_i_7_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"028AFFFF0000028A"
    )
        port map (
      I0 => v_3_reg_663(0),
      I1 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I2 => max_val_reg_651(0),
      I3 => v_4_reg_657(0),
      I4 => max_val_3_fu_473_p3(1),
      I5 => v_3_reg_663(1),
      O => icmp_ln55_2_fu_479_p2_carry_i_8_n_5
    );
icmp_ln55_2_fu_479_p2_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99A50000000099A5"
    )
        port map (
      I0 => v_3_reg_663(14),
      I1 => v_4_reg_657(14),
      I2 => max_val_reg_651(14),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => max_val_3_fu_473_p3(15),
      I5 => v_3_reg_663(15),
      O => icmp_ln55_2_fu_479_p2_carry_i_9_n_5
    );
icmp_ln55_fu_372_p2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => CO(0),
      CO(6) => icmp_ln55_fu_372_p2_carry_n_6,
      CO(5) => icmp_ln55_fu_372_p2_carry_n_7,
      CO(4) => icmp_ln55_fu_372_p2_carry_n_8,
      CO(3) => icmp_ln55_fu_372_p2_carry_n_9,
      CO(2) => icmp_ln55_fu_372_p2_carry_n_10,
      CO(1) => icmp_ln55_fu_372_p2_carry_n_11,
      CO(0) => icmp_ln55_fu_372_p2_carry_n_12,
      DI(7 downto 0) => DI(7 downto 0),
      O(7 downto 0) => NLW_icmp_ln55_fu_372_p2_carry_O_UNCONNECTED(7 downto 0),
      S(7 downto 0) => S(7 downto 0)
    );
\icmp_ln58_reg_643_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_5,
      Q => \icmp_ln58_reg_643_reg_n_5_[0]\,
      R => '0'
    );
\indvar_flatten_fu_100_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1000,
      D => add_ln45_fu_252_p2(0),
      Q => \indvar_flatten_fu_100_reg_n_5_[0]\,
      R => '0'
    );
\indvar_flatten_fu_100_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1000,
      D => add_ln45_fu_252_p2(1),
      Q => \indvar_flatten_fu_100_reg_n_5_[1]\,
      R => '0'
    );
\indvar_flatten_fu_100_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1000,
      D => add_ln45_fu_252_p2(2),
      Q => \indvar_flatten_fu_100_reg_n_5_[2]\,
      R => '0'
    );
\max_val_reg_651_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(0),
      Q => max_val_reg_651(0),
      R => '0'
    );
\max_val_reg_651_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(10),
      Q => max_val_reg_651(10),
      R => '0'
    );
\max_val_reg_651_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(11),
      Q => max_val_reg_651(11),
      R => '0'
    );
\max_val_reg_651_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(12),
      Q => max_val_reg_651(12),
      R => '0'
    );
\max_val_reg_651_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(13),
      Q => max_val_reg_651(13),
      R => '0'
    );
\max_val_reg_651_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(14),
      Q => max_val_reg_651(14),
      R => '0'
    );
\max_val_reg_651_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(15),
      Q => max_val_reg_651(15),
      R => '0'
    );
\max_val_reg_651_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(1),
      Q => max_val_reg_651(1),
      R => '0'
    );
\max_val_reg_651_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(2),
      Q => max_val_reg_651(2),
      R => '0'
    );
\max_val_reg_651_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(3),
      Q => max_val_reg_651(3),
      R => '0'
    );
\max_val_reg_651_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(4),
      Q => max_val_reg_651(4),
      R => '0'
    );
\max_val_reg_651_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(5),
      Q => max_val_reg_651(5),
      R => '0'
    );
\max_val_reg_651_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(6),
      Q => max_val_reg_651(6),
      R => '0'
    );
\max_val_reg_651_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(7),
      Q => max_val_reg_651(7),
      R => '0'
    );
\max_val_reg_651_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(8),
      Q => max_val_reg_651(8),
      R => '0'
    );
\max_val_reg_651_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => max_val_fu_378_p3(9),
      Q => max_val_reg_651(9),
      R => '0'
    );
\oc_s_fu_76_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_9,
      D => \^first_iter_0_fu_306_p2\(0),
      Q => \oc_s_fu_76_reg_n_5_[0]\,
      R => '0'
    );
\oc_s_fu_76_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_9,
      D => p_0_in,
      Q => \oc_s_fu_76_reg_n_5_[1]\,
      R => '0'
    );
\or_s_fu_96_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_9,
      D => select_ln45_fu_292_p3(0),
      Q => \or_s_fu_96_reg_n_5_[0]\,
      R => '0'
    );
\or_s_fu_96_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_9,
      D => select_ln45_fu_292_p3(1),
      Q => \or_s_fu_96_reg_n_5_[1]\,
      R => '0'
    );
\output_1_fu_84[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => first_iter_0_reg_635(0),
      I2 => \icmp_ln58_reg_643_reg_n_5_[0]\,
      O => output_1_fu_84_3(0)
    );
\output_1_fu_84_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(0),
      Q => output_1_fu_84(0),
      R => '0'
    );
\output_1_fu_84_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(10),
      Q => output_1_fu_84(10),
      R => '0'
    );
\output_1_fu_84_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(11),
      Q => output_1_fu_84(11),
      R => '0'
    );
\output_1_fu_84_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(12),
      Q => output_1_fu_84(12),
      R => '0'
    );
\output_1_fu_84_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(13),
      Q => output_1_fu_84(13),
      R => '0'
    );
\output_1_fu_84_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(14),
      Q => output_1_fu_84(14),
      R => '0'
    );
\output_1_fu_84_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(15),
      Q => output_1_fu_84(15),
      R => '0'
    );
\output_1_fu_84_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(1),
      Q => output_1_fu_84(1),
      R => '0'
    );
\output_1_fu_84_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(2),
      Q => output_1_fu_84(2),
      R => '0'
    );
\output_1_fu_84_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(3),
      Q => output_1_fu_84(3),
      R => '0'
    );
\output_1_fu_84_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(4),
      Q => output_1_fu_84(4),
      R => '0'
    );
\output_1_fu_84_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(5),
      Q => output_1_fu_84(5),
      R => '0'
    );
\output_1_fu_84_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(6),
      Q => output_1_fu_84(6),
      R => '0'
    );
\output_1_fu_84_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(7),
      Q => output_1_fu_84(7),
      R => '0'
    );
\output_1_fu_84_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(8),
      Q => output_1_fu_84(8),
      R => '0'
    );
\output_1_fu_84_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_84_3(0),
      D => max_val_4_fu_484_p3(9),
      Q => output_1_fu_84(9),
      R => '0'
    );
\output_2_fu_88[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \icmp_ln58_reg_643_reg_n_5_[0]\,
      I2 => first_iter_0_reg_635(0),
      O => output_2_fu_88_2(0)
    );
\output_2_fu_88_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(0),
      Q => output_2_fu_88(0),
      R => '0'
    );
\output_2_fu_88_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(10),
      Q => output_2_fu_88(10),
      R => '0'
    );
\output_2_fu_88_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(11),
      Q => output_2_fu_88(11),
      R => '0'
    );
\output_2_fu_88_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(12),
      Q => output_2_fu_88(12),
      R => '0'
    );
\output_2_fu_88_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(13),
      Q => output_2_fu_88(13),
      R => '0'
    );
\output_2_fu_88_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(14),
      Q => output_2_fu_88(14),
      R => '0'
    );
\output_2_fu_88_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(15),
      Q => output_2_fu_88(15),
      R => '0'
    );
\output_2_fu_88_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(1),
      Q => output_2_fu_88(1),
      R => '0'
    );
\output_2_fu_88_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(2),
      Q => output_2_fu_88(2),
      R => '0'
    );
\output_2_fu_88_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(3),
      Q => output_2_fu_88(3),
      R => '0'
    );
\output_2_fu_88_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(4),
      Q => output_2_fu_88(4),
      R => '0'
    );
\output_2_fu_88_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(5),
      Q => output_2_fu_88(5),
      R => '0'
    );
\output_2_fu_88_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(6),
      Q => output_2_fu_88(6),
      R => '0'
    );
\output_2_fu_88_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(7),
      Q => output_2_fu_88(7),
      R => '0'
    );
\output_2_fu_88_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(8),
      Q => output_2_fu_88(8),
      R => '0'
    );
\output_2_fu_88_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_88_2(0),
      D => max_val_4_fu_484_p3(9),
      Q => output_2_fu_88(9),
      R => '0'
    );
\output_3_fu_92[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => first_iter_0_reg_635(0),
      I2 => \icmp_ln58_reg_643_reg_n_5_[0]\,
      O => output_3_fu_92_1(0)
    );
\output_3_fu_92_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(0),
      Q => output_3_fu_92(0),
      R => '0'
    );
\output_3_fu_92_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(10),
      Q => output_3_fu_92(10),
      R => '0'
    );
\output_3_fu_92_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(11),
      Q => output_3_fu_92(11),
      R => '0'
    );
\output_3_fu_92_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(12),
      Q => output_3_fu_92(12),
      R => '0'
    );
\output_3_fu_92_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(13),
      Q => output_3_fu_92(13),
      R => '0'
    );
\output_3_fu_92_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(14),
      Q => output_3_fu_92(14),
      R => '0'
    );
\output_3_fu_92_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(15),
      Q => output_3_fu_92(15),
      R => '0'
    );
\output_3_fu_92_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(1),
      Q => output_3_fu_92(1),
      R => '0'
    );
\output_3_fu_92_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(2),
      Q => output_3_fu_92(2),
      R => '0'
    );
\output_3_fu_92_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(3),
      Q => output_3_fu_92(3),
      R => '0'
    );
\output_3_fu_92_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(4),
      Q => output_3_fu_92(4),
      R => '0'
    );
\output_3_fu_92_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(5),
      Q => output_3_fu_92(5),
      R => '0'
    );
\output_3_fu_92_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(6),
      Q => output_3_fu_92(6),
      R => '0'
    );
\output_3_fu_92_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(7),
      Q => output_3_fu_92(7),
      R => '0'
    );
\output_3_fu_92_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(8),
      Q => output_3_fu_92(8),
      R => '0'
    );
\output_3_fu_92_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_92_1(0),
      D => max_val_4_fu_484_p3(9),
      Q => output_3_fu_92(9),
      R => '0'
    );
\output_fu_80[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(0),
      I1 => v_4_reg_657(0),
      I2 => max_val_reg_651(0),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(0)
    );
\output_fu_80[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(10),
      I1 => v_4_reg_657(10),
      I2 => max_val_reg_651(10),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(10)
    );
\output_fu_80[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(11),
      I1 => v_4_reg_657(11),
      I2 => max_val_reg_651(11),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(11)
    );
\output_fu_80[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(12),
      I1 => v_4_reg_657(12),
      I2 => max_val_reg_651(12),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(12)
    );
\output_fu_80[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(13),
      I1 => v_4_reg_657(13),
      I2 => max_val_reg_651(13),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(13)
    );
\output_fu_80[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(14),
      I1 => v_4_reg_657(14),
      I2 => max_val_reg_651(14),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(14)
    );
\output_fu_80[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(15),
      I1 => v_4_reg_657(15),
      I2 => max_val_reg_651(15),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(15)
    );
\output_fu_80[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(1),
      I1 => v_4_reg_657(1),
      I2 => max_val_reg_651(1),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(1)
    );
\output_fu_80[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(2),
      I1 => v_4_reg_657(2),
      I2 => max_val_reg_651(2),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(2)
    );
\output_fu_80[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(3),
      I1 => v_4_reg_657(3),
      I2 => max_val_reg_651(3),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(3)
    );
\output_fu_80[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(4),
      I1 => v_4_reg_657(4),
      I2 => max_val_reg_651(4),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(4)
    );
\output_fu_80[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(5),
      I1 => v_4_reg_657(5),
      I2 => max_val_reg_651(5),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(5)
    );
\output_fu_80[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(6),
      I1 => v_4_reg_657(6),
      I2 => max_val_reg_651(6),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(6)
    );
\output_fu_80[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(7),
      I1 => v_4_reg_657(7),
      I2 => max_val_reg_651(7),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(7)
    );
\output_fu_80[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(8),
      I1 => v_4_reg_657(8),
      I2 => max_val_reg_651(8),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(8)
    );
\output_fu_80[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACCF0"
    )
        port map (
      I0 => v_3_reg_663(9),
      I1 => v_4_reg_657(9),
      I2 => max_val_reg_651(9),
      I3 => icmp_ln55_1_fu_469_p2_carry_n_5,
      I4 => icmp_ln55_2_fu_479_p2_carry_n_5,
      O => max_val_4_fu_484_p3(9)
    );
\output_fu_80_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(0),
      Q => output_fu_80(0),
      R => '0'
    );
\output_fu_80_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(10),
      Q => output_fu_80(10),
      R => '0'
    );
\output_fu_80_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(11),
      Q => output_fu_80(11),
      R => '0'
    );
\output_fu_80_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(12),
      Q => output_fu_80(12),
      R => '0'
    );
\output_fu_80_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(13),
      Q => output_fu_80(13),
      R => '0'
    );
\output_fu_80_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(14),
      Q => output_fu_80(14),
      R => '0'
    );
\output_fu_80_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(15),
      Q => output_fu_80(15),
      R => '0'
    );
\output_fu_80_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(1),
      Q => output_fu_80(1),
      R => '0'
    );
\output_fu_80_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(2),
      Q => output_fu_80(2),
      R => '0'
    );
\output_fu_80_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(3),
      Q => output_fu_80(3),
      R => '0'
    );
\output_fu_80_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(4),
      Q => output_fu_80(4),
      R => '0'
    );
\output_fu_80_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(5),
      Q => output_fu_80(5),
      R => '0'
    );
\output_fu_80_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(6),
      Q => output_fu_80(6),
      R => '0'
    );
\output_fu_80_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(7),
      Q => output_fu_80(7),
      R => '0'
    );
\output_fu_80_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(8),
      Q => output_fu_80(8),
      R => '0'
    );
\output_fu_80_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_80_0(0),
      D => max_val_4_fu_484_p3(9),
      Q => output_fu_80(9),
      R => '0'
    );
\select_ln68_2_reg_185[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(0),
      I1 => output_2_fu_88(0),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(0),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(0),
      O => \output_3_fu_92_reg[15]_0\(0)
    );
\select_ln68_2_reg_185[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(10),
      I1 => output_2_fu_88(10),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(10),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(10),
      O => \output_3_fu_92_reg[15]_0\(10)
    );
\select_ln68_2_reg_185[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(11),
      I1 => output_2_fu_88(11),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(11),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(11),
      O => \output_3_fu_92_reg[15]_0\(11)
    );
\select_ln68_2_reg_185[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(12),
      I1 => output_2_fu_88(12),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(12),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(12),
      O => \output_3_fu_92_reg[15]_0\(12)
    );
\select_ln68_2_reg_185[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(13),
      I1 => output_2_fu_88(13),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(13),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(13),
      O => \output_3_fu_92_reg[15]_0\(13)
    );
\select_ln68_2_reg_185[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(14),
      I1 => output_2_fu_88(14),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(14),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(14),
      O => \output_3_fu_92_reg[15]_0\(14)
    );
\select_ln68_2_reg_185[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(15),
      I1 => output_2_fu_88(15),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(15),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(15),
      O => \output_3_fu_92_reg[15]_0\(15)
    );
\select_ln68_2_reg_185[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(1),
      I1 => output_2_fu_88(1),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(1),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(1),
      O => \output_3_fu_92_reg[15]_0\(1)
    );
\select_ln68_2_reg_185[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(2),
      I1 => output_2_fu_88(2),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(2),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(2),
      O => \output_3_fu_92_reg[15]_0\(2)
    );
\select_ln68_2_reg_185[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(3),
      I1 => output_2_fu_88(3),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(3),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(3),
      O => \output_3_fu_92_reg[15]_0\(3)
    );
\select_ln68_2_reg_185[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(4),
      I1 => output_2_fu_88(4),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(4),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(4),
      O => \output_3_fu_92_reg[15]_0\(4)
    );
\select_ln68_2_reg_185[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(5),
      I1 => output_2_fu_88(5),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(5),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(5),
      O => \output_3_fu_92_reg[15]_0\(5)
    );
\select_ln68_2_reg_185[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(6),
      I1 => output_2_fu_88(6),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(6),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(6),
      O => \output_3_fu_92_reg[15]_0\(6)
    );
\select_ln68_2_reg_185[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(7),
      I1 => output_2_fu_88(7),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(7),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(7),
      O => \output_3_fu_92_reg[15]_0\(7)
    );
\select_ln68_2_reg_185[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(8),
      I1 => output_2_fu_88(8),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(8),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(8),
      O => \output_3_fu_92_reg[15]_0\(8)
    );
\select_ln68_2_reg_185[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => output_3_fu_92(9),
      I1 => output_2_fu_88(9),
      I2 => ap_sig_allocacmp_i_1(1),
      I3 => output_1_fu_84(9),
      I4 => ap_sig_allocacmp_i_1(0),
      I5 => output_fu_80(9),
      O => \output_3_fu_92_reg[15]_0\(9)
    );
\v_3_reg_663_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(0),
      Q => v_3_reg_663(0),
      R => '0'
    );
\v_3_reg_663_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(10),
      Q => v_3_reg_663(10),
      R => '0'
    );
\v_3_reg_663_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(11),
      Q => v_3_reg_663(11),
      R => '0'
    );
\v_3_reg_663_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(12),
      Q => v_3_reg_663(12),
      R => '0'
    );
\v_3_reg_663_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(13),
      Q => v_3_reg_663(13),
      R => '0'
    );
\v_3_reg_663_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(14),
      Q => v_3_reg_663(14),
      R => '0'
    );
\v_3_reg_663_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(15),
      Q => v_3_reg_663(15),
      R => '0'
    );
\v_3_reg_663_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(1),
      Q => v_3_reg_663(1),
      R => '0'
    );
\v_3_reg_663_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(2),
      Q => v_3_reg_663(2),
      R => '0'
    );
\v_3_reg_663_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(3),
      Q => v_3_reg_663(3),
      R => '0'
    );
\v_3_reg_663_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(4),
      Q => v_3_reg_663(4),
      R => '0'
    );
\v_3_reg_663_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(5),
      Q => v_3_reg_663(5),
      R => '0'
    );
\v_3_reg_663_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(6),
      Q => v_3_reg_663(6),
      R => '0'
    );
\v_3_reg_663_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(7),
      Q => v_3_reg_663(7),
      R => '0'
    );
\v_3_reg_663_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(8),
      Q => v_3_reg_663(8),
      R => '0'
    );
\v_3_reg_663_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_3_fu_426_p3(9),
      Q => v_3_reg_663(9),
      R => '0'
    );
\v_4_reg_657_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(0),
      Q => v_4_reg_657(0),
      R => '0'
    );
\v_4_reg_657_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(10),
      Q => v_4_reg_657(10),
      R => '0'
    );
\v_4_reg_657_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(11),
      Q => v_4_reg_657(11),
      R => '0'
    );
\v_4_reg_657_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(12),
      Q => v_4_reg_657(12),
      R => '0'
    );
\v_4_reg_657_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(13),
      Q => v_4_reg_657(13),
      R => '0'
    );
\v_4_reg_657_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(14),
      Q => v_4_reg_657(14),
      R => '0'
    );
\v_4_reg_657_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(15),
      Q => v_4_reg_657(15),
      R => '0'
    );
\v_4_reg_657_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(1),
      Q => v_4_reg_657(1),
      R => '0'
    );
\v_4_reg_657_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(2),
      Q => v_4_reg_657(2),
      R => '0'
    );
\v_4_reg_657_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(3),
      Q => v_4_reg_657(3),
      R => '0'
    );
\v_4_reg_657_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(4),
      Q => v_4_reg_657(4),
      R => '0'
    );
\v_4_reg_657_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(5),
      Q => v_4_reg_657(5),
      R => '0'
    );
\v_4_reg_657_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(6),
      Q => v_4_reg_657(6),
      R => '0'
    );
\v_4_reg_657_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(7),
      Q => v_4_reg_657(7),
      R => '0'
    );
\v_4_reg_657_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(8),
      Q => v_4_reg_657(8),
      R => '0'
    );
\v_4_reg_657_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => v_4_fu_402_p3(9),
      Q => v_4_reg_657(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_READ_INPUT is
  port (
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TREADY_int_regslice : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 7 downto 0 );
    max_val_fu_378_p3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v_4_fu_402_p3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    v_3_fu_426_p3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v_4_reg_657_reg[15]\ : in STD_LOGIC;
    first_iter_0_fu_306_p2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_block_pp0_stage0_subdone : in STD_LOGIC;
    \input_15_fu_156_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_READ_INPUT : entity is "maxpool_maxpool_Pipeline_READ_INPUT";
end cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_READ_INPUT;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_READ_INPUT is
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_12 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_13 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_14 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_15 : STD_LOGIC;
  signal i_4_fu_307_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \i_fu_92_reg_n_5_[0]\ : STD_LOGIC;
  signal \i_fu_92_reg_n_5_[1]\ : STD_LOGIC;
  signal \i_fu_92_reg_n_5_[2]\ : STD_LOGIC;
  signal \i_fu_92_reg_n_5_[3]\ : STD_LOGIC;
  signal \i_fu_92_reg_n_5_[4]\ : STD_LOGIC;
  signal input_10_fu_136 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_10_fu_1360 : STD_LOGIC;
  signal input_11_fu_140 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_11_fu_1400 : STD_LOGIC;
  signal input_12_fu_144 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_12_fu_1440 : STD_LOGIC;
  signal input_13_fu_148 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_13_fu_1480 : STD_LOGIC;
  signal input_14_fu_152 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_14_fu_1520 : STD_LOGIC;
  signal input_15_fu_156 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_15_fu_1560 : STD_LOGIC;
  signal input_1_fu_100 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_1_fu_1000 : STD_LOGIC;
  signal input_2_fu_104 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_2_fu_1040 : STD_LOGIC;
  signal input_3_fu_108 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_3_fu_1080 : STD_LOGIC;
  signal input_4_fu_112 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_4_fu_1120 : STD_LOGIC;
  signal input_5_fu_116 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_5_fu_1160 : STD_LOGIC;
  signal input_6_fu_120 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_6_fu_1200 : STD_LOGIC;
  signal input_7_fu_124 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_7_fu_1240 : STD_LOGIC;
  signal input_8_fu_128 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_8_fu_1280 : STD_LOGIC;
  signal input_9_fu_132 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_9_fu_1320 : STD_LOGIC;
  signal input_fu_96 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal input_fu_960 : STD_LOGIC;
  signal max_val_5_fu_340_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal trunc_ln34_reg_597 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trunc_ln_reg_601 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal v_fu_364_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \max_val_reg_651[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \max_val_reg_651[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \max_val_reg_651[11]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \max_val_reg_651[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \max_val_reg_651[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \max_val_reg_651[14]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \max_val_reg_651[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \max_val_reg_651[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \max_val_reg_651[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \max_val_reg_651[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \max_val_reg_651[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \max_val_reg_651[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \max_val_reg_651[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \max_val_reg_651[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \max_val_reg_651[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \max_val_reg_651[9]_i_1\ : label is "soft_lutpair23";
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
ack_in_t_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(0),
      O => in_stream_TREADY_int_regslice
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_15,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_2
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => flow_control_loop_pipe_sequential_init_U_n_13,
      Q(0) => Q(0),
      SR(0) => flow_control_loop_pipe_sequential_init_U_n_14,
      \ap_CS_fsm_reg[3]\(1 downto 0) => \ap_CS_fsm_reg[3]\(1 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_12,
      grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0 => flow_control_loop_pipe_sequential_init_U_n_15,
      grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1 => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg,
      grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2 => \^ap_enable_reg_pp0_iter1\,
      \i_fu_92_reg[2]\(4 downto 0) => i_4_fu_307_p2(4 downto 0),
      \i_fu_92_reg[4]\(4) => \i_fu_92_reg_n_5_[4]\,
      \i_fu_92_reg[4]\(3) => \i_fu_92_reg_n_5_[3]\,
      \i_fu_92_reg[4]\(2) => \i_fu_92_reg_n_5_[2]\,
      \i_fu_92_reg[4]\(1) => \i_fu_92_reg_n_5_[1]\,
      \i_fu_92_reg[4]\(0) => \i_fu_92_reg_n_5_[0]\
    );
\i_fu_92_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      D => i_4_fu_307_p2(0),
      Q => \i_fu_92_reg_n_5_[0]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\i_fu_92_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      D => i_4_fu_307_p2(1),
      Q => \i_fu_92_reg_n_5_[1]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\i_fu_92_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      D => i_4_fu_307_p2(2),
      Q => \i_fu_92_reg_n_5_[2]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\i_fu_92_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      D => i_4_fu_307_p2(3),
      Q => \i_fu_92_reg_n_5_[3]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
\i_fu_92_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_13,
      D => i_4_fu_307_p2(4),
      Q => \i_fu_92_reg_n_5_[4]\,
      R => flow_control_loop_pipe_sequential_init_U_n_14
    );
icmp_ln55_fu_372_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(14),
      I1 => max_val_5_fu_340_p3(14),
      I2 => v_fu_364_p3(15),
      I3 => max_val_5_fu_340_p3(15),
      O => DI(7)
    );
icmp_ln55_fu_372_p2_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(12),
      I1 => max_val_5_fu_340_p3(12),
      I2 => v_fu_364_p3(13),
      I3 => max_val_5_fu_340_p3(13),
      O => S(6)
    );
icmp_ln55_fu_372_p2_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(10),
      I1 => max_val_5_fu_340_p3(10),
      I2 => v_fu_364_p3(11),
      I3 => max_val_5_fu_340_p3(11),
      O => S(5)
    );
icmp_ln55_fu_372_p2_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(8),
      I1 => max_val_5_fu_340_p3(8),
      I2 => v_fu_364_p3(9),
      I3 => max_val_5_fu_340_p3(9),
      O => S(4)
    );
icmp_ln55_fu_372_p2_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(6),
      I1 => max_val_5_fu_340_p3(6),
      I2 => v_fu_364_p3(7),
      I3 => max_val_5_fu_340_p3(7),
      O => S(3)
    );
icmp_ln55_fu_372_p2_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(4),
      I1 => max_val_5_fu_340_p3(4),
      I2 => v_fu_364_p3(5),
      I3 => max_val_5_fu_340_p3(5),
      O => S(2)
    );
icmp_ln55_fu_372_p2_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(2),
      I1 => max_val_5_fu_340_p3(2),
      I2 => v_fu_364_p3(3),
      I3 => max_val_5_fu_340_p3(3),
      O => S(1)
    );
icmp_ln55_fu_372_p2_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(0),
      I1 => max_val_5_fu_340_p3(0),
      I2 => v_fu_364_p3(1),
      I3 => max_val_5_fu_340_p3(1),
      O => S(0)
    );
icmp_ln55_fu_372_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(12),
      I1 => max_val_5_fu_340_p3(12),
      I2 => max_val_5_fu_340_p3(13),
      I3 => v_fu_364_p3(13),
      O => DI(6)
    );
icmp_ln55_fu_372_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(10),
      I1 => max_val_5_fu_340_p3(10),
      I2 => max_val_5_fu_340_p3(11),
      I3 => v_fu_364_p3(11),
      O => DI(5)
    );
icmp_ln55_fu_372_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(8),
      I1 => max_val_5_fu_340_p3(8),
      I2 => max_val_5_fu_340_p3(9),
      I3 => v_fu_364_p3(9),
      O => DI(4)
    );
icmp_ln55_fu_372_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(6),
      I1 => max_val_5_fu_340_p3(6),
      I2 => max_val_5_fu_340_p3(7),
      I3 => v_fu_364_p3(7),
      O => DI(3)
    );
icmp_ln55_fu_372_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(4),
      I1 => max_val_5_fu_340_p3(4),
      I2 => max_val_5_fu_340_p3(5),
      I3 => v_fu_364_p3(5),
      O => DI(2)
    );
icmp_ln55_fu_372_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(2),
      I1 => max_val_5_fu_340_p3(2),
      I2 => max_val_5_fu_340_p3(3),
      I3 => v_fu_364_p3(3),
      O => DI(1)
    );
icmp_ln55_fu_372_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => v_fu_364_p3(0),
      I1 => max_val_5_fu_340_p3(0),
      I2 => max_val_5_fu_340_p3(1),
      I3 => v_fu_364_p3(1),
      O => DI(0)
    );
icmp_ln55_fu_372_p2_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => v_fu_364_p3(14),
      I1 => max_val_5_fu_340_p3(14),
      I2 => max_val_5_fu_340_p3(15),
      I3 => v_fu_364_p3(15),
      O => S(7)
    );
\input_10_fu_136[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => trunc_ln_reg_601(1),
      I1 => trunc_ln_reg_601(0),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(1),
      I5 => trunc_ln34_reg_597(0),
      O => input_10_fu_1360
    );
\input_10_fu_136_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_10_fu_136(0),
      R => '0'
    );
\input_10_fu_136_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_10_fu_136(10),
      R => '0'
    );
\input_10_fu_136_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_10_fu_136(11),
      R => '0'
    );
\input_10_fu_136_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_10_fu_136(12),
      R => '0'
    );
\input_10_fu_136_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_10_fu_136(13),
      R => '0'
    );
\input_10_fu_136_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_10_fu_136(14),
      R => '0'
    );
\input_10_fu_136_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_10_fu_136(15),
      R => '0'
    );
\input_10_fu_136_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_10_fu_136(1),
      R => '0'
    );
\input_10_fu_136_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_10_fu_136(2),
      R => '0'
    );
\input_10_fu_136_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_10_fu_136(3),
      R => '0'
    );
\input_10_fu_136_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_10_fu_136(4),
      R => '0'
    );
\input_10_fu_136_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_10_fu_136(5),
      R => '0'
    );
\input_10_fu_136_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_10_fu_136(6),
      R => '0'
    );
\input_10_fu_136_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_10_fu_136(7),
      R => '0'
    );
\input_10_fu_136_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_10_fu_136(8),
      R => '0'
    );
\input_10_fu_136_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1360,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_10_fu_136(9),
      R => '0'
    );
\input_11_fu_140[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => trunc_ln_reg_601(1),
      I1 => trunc_ln_reg_601(0),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_11_fu_1400
    );
\input_11_fu_140_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_11_fu_140(0),
      R => '0'
    );
\input_11_fu_140_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_11_fu_140(10),
      R => '0'
    );
\input_11_fu_140_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_11_fu_140(11),
      R => '0'
    );
\input_11_fu_140_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_11_fu_140(12),
      R => '0'
    );
\input_11_fu_140_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_11_fu_140(13),
      R => '0'
    );
\input_11_fu_140_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_11_fu_140(14),
      R => '0'
    );
\input_11_fu_140_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_11_fu_140(15),
      R => '0'
    );
\input_11_fu_140_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_11_fu_140(1),
      R => '0'
    );
\input_11_fu_140_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_11_fu_140(2),
      R => '0'
    );
\input_11_fu_140_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_11_fu_140(3),
      R => '0'
    );
\input_11_fu_140_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_11_fu_140(4),
      R => '0'
    );
\input_11_fu_140_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_11_fu_140(5),
      R => '0'
    );
\input_11_fu_140_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_11_fu_140(6),
      R => '0'
    );
\input_11_fu_140_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_11_fu_140(7),
      R => '0'
    );
\input_11_fu_140_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_11_fu_140(8),
      R => '0'
    );
\input_11_fu_140_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1400,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_11_fu_140(9),
      R => '0'
    );
\input_12_fu_144[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_12_fu_1440
    );
\input_12_fu_144_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_12_fu_144(0),
      R => '0'
    );
\input_12_fu_144_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_12_fu_144(10),
      R => '0'
    );
\input_12_fu_144_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_12_fu_144(11),
      R => '0'
    );
\input_12_fu_144_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_12_fu_144(12),
      R => '0'
    );
\input_12_fu_144_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_12_fu_144(13),
      R => '0'
    );
\input_12_fu_144_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_12_fu_144(14),
      R => '0'
    );
\input_12_fu_144_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_12_fu_144(15),
      R => '0'
    );
\input_12_fu_144_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_12_fu_144(1),
      R => '0'
    );
\input_12_fu_144_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_12_fu_144(2),
      R => '0'
    );
\input_12_fu_144_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_12_fu_144(3),
      R => '0'
    );
\input_12_fu_144_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_12_fu_144(4),
      R => '0'
    );
\input_12_fu_144_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_12_fu_144(5),
      R => '0'
    );
\input_12_fu_144_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_12_fu_144(6),
      R => '0'
    );
\input_12_fu_144_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_12_fu_144(7),
      R => '0'
    );
\input_12_fu_144_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_12_fu_144(8),
      R => '0'
    );
\input_12_fu_144_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1440,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_12_fu_144(9),
      R => '0'
    );
\input_13_fu_148[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_13_fu_1480
    );
\input_13_fu_148_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_13_fu_148(0),
      R => '0'
    );
\input_13_fu_148_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_13_fu_148(10),
      R => '0'
    );
\input_13_fu_148_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_13_fu_148(11),
      R => '0'
    );
\input_13_fu_148_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_13_fu_148(12),
      R => '0'
    );
\input_13_fu_148_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_13_fu_148(13),
      R => '0'
    );
\input_13_fu_148_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_13_fu_148(14),
      R => '0'
    );
\input_13_fu_148_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_13_fu_148(15),
      R => '0'
    );
\input_13_fu_148_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_13_fu_148(1),
      R => '0'
    );
\input_13_fu_148_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_13_fu_148(2),
      R => '0'
    );
\input_13_fu_148_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_13_fu_148(3),
      R => '0'
    );
\input_13_fu_148_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_13_fu_148(4),
      R => '0'
    );
\input_13_fu_148_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_13_fu_148(5),
      R => '0'
    );
\input_13_fu_148_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_13_fu_148(6),
      R => '0'
    );
\input_13_fu_148_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_13_fu_148(7),
      R => '0'
    );
\input_13_fu_148_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_13_fu_148(8),
      R => '0'
    );
\input_13_fu_148_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1480,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_13_fu_148(9),
      R => '0'
    );
\input_14_fu_152[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(1),
      I5 => trunc_ln34_reg_597(0),
      O => input_14_fu_1520
    );
\input_14_fu_152_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_14_fu_152(0),
      R => '0'
    );
\input_14_fu_152_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_14_fu_152(10),
      R => '0'
    );
\input_14_fu_152_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_14_fu_152(11),
      R => '0'
    );
\input_14_fu_152_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_14_fu_152(12),
      R => '0'
    );
\input_14_fu_152_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_14_fu_152(13),
      R => '0'
    );
\input_14_fu_152_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_14_fu_152(14),
      R => '0'
    );
\input_14_fu_152_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_14_fu_152(15),
      R => '0'
    );
\input_14_fu_152_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_14_fu_152(1),
      R => '0'
    );
\input_14_fu_152_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_14_fu_152(2),
      R => '0'
    );
\input_14_fu_152_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_14_fu_152(3),
      R => '0'
    );
\input_14_fu_152_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_14_fu_152(4),
      R => '0'
    );
\input_14_fu_152_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_14_fu_152(5),
      R => '0'
    );
\input_14_fu_152_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_14_fu_152(6),
      R => '0'
    );
\input_14_fu_152_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_14_fu_152(7),
      R => '0'
    );
\input_14_fu_152_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_14_fu_152(8),
      R => '0'
    );
\input_14_fu_152_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1520,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_14_fu_152(9),
      R => '0'
    );
\input_15_fu_156[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_15_fu_1560
    );
\input_15_fu_156_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_15_fu_156(0),
      R => '0'
    );
\input_15_fu_156_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_15_fu_156(10),
      R => '0'
    );
\input_15_fu_156_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_15_fu_156(11),
      R => '0'
    );
\input_15_fu_156_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_15_fu_156(12),
      R => '0'
    );
\input_15_fu_156_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_15_fu_156(13),
      R => '0'
    );
\input_15_fu_156_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_15_fu_156(14),
      R => '0'
    );
\input_15_fu_156_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_15_fu_156(15),
      R => '0'
    );
\input_15_fu_156_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_15_fu_156(1),
      R => '0'
    );
\input_15_fu_156_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_15_fu_156(2),
      R => '0'
    );
\input_15_fu_156_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_15_fu_156(3),
      R => '0'
    );
\input_15_fu_156_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_15_fu_156(4),
      R => '0'
    );
\input_15_fu_156_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_15_fu_156(5),
      R => '0'
    );
\input_15_fu_156_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_15_fu_156(6),
      R => '0'
    );
\input_15_fu_156_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_15_fu_156(7),
      R => '0'
    );
\input_15_fu_156_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_15_fu_156(8),
      R => '0'
    );
\input_15_fu_156_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_15_fu_1560,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_15_fu_156(9),
      R => '0'
    );
\input_1_fu_100[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_1_fu_1000
    );
\input_1_fu_100_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_1_fu_100(0),
      R => '0'
    );
\input_1_fu_100_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_1_fu_100(10),
      R => '0'
    );
\input_1_fu_100_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_1_fu_100(11),
      R => '0'
    );
\input_1_fu_100_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_1_fu_100(12),
      R => '0'
    );
\input_1_fu_100_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_1_fu_100(13),
      R => '0'
    );
\input_1_fu_100_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_1_fu_100(14),
      R => '0'
    );
\input_1_fu_100_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_1_fu_100(15),
      R => '0'
    );
\input_1_fu_100_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_1_fu_100(1),
      R => '0'
    );
\input_1_fu_100_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_1_fu_100(2),
      R => '0'
    );
\input_1_fu_100_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_1_fu_100(3),
      R => '0'
    );
\input_1_fu_100_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_1_fu_100(4),
      R => '0'
    );
\input_1_fu_100_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_1_fu_100(5),
      R => '0'
    );
\input_1_fu_100_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_1_fu_100(6),
      R => '0'
    );
\input_1_fu_100_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_1_fu_100(7),
      R => '0'
    );
\input_1_fu_100_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_1_fu_100(8),
      R => '0'
    );
\input_1_fu_100_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1000,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_1_fu_100(9),
      R => '0'
    );
\input_2_fu_104[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(1),
      I5 => trunc_ln34_reg_597(0),
      O => input_2_fu_1040
    );
\input_2_fu_104_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_2_fu_104(0),
      R => '0'
    );
\input_2_fu_104_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_2_fu_104(10),
      R => '0'
    );
\input_2_fu_104_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_2_fu_104(11),
      R => '0'
    );
\input_2_fu_104_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_2_fu_104(12),
      R => '0'
    );
\input_2_fu_104_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_2_fu_104(13),
      R => '0'
    );
\input_2_fu_104_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_2_fu_104(14),
      R => '0'
    );
\input_2_fu_104_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_2_fu_104(15),
      R => '0'
    );
\input_2_fu_104_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_2_fu_104(1),
      R => '0'
    );
\input_2_fu_104_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_2_fu_104(2),
      R => '0'
    );
\input_2_fu_104_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_2_fu_104(3),
      R => '0'
    );
\input_2_fu_104_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_2_fu_104(4),
      R => '0'
    );
\input_2_fu_104_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_2_fu_104(5),
      R => '0'
    );
\input_2_fu_104_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_2_fu_104(6),
      R => '0'
    );
\input_2_fu_104_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_2_fu_104(7),
      R => '0'
    );
\input_2_fu_104_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_2_fu_104(8),
      R => '0'
    );
\input_2_fu_104_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1040,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_2_fu_104(9),
      R => '0'
    );
\input_3_fu_108[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_3_fu_1080
    );
\input_3_fu_108_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_3_fu_108(0),
      R => '0'
    );
\input_3_fu_108_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_3_fu_108(10),
      R => '0'
    );
\input_3_fu_108_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_3_fu_108(11),
      R => '0'
    );
\input_3_fu_108_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_3_fu_108(12),
      R => '0'
    );
\input_3_fu_108_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_3_fu_108(13),
      R => '0'
    );
\input_3_fu_108_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_3_fu_108(14),
      R => '0'
    );
\input_3_fu_108_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_3_fu_108(15),
      R => '0'
    );
\input_3_fu_108_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_3_fu_108(1),
      R => '0'
    );
\input_3_fu_108_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_3_fu_108(2),
      R => '0'
    );
\input_3_fu_108_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_3_fu_108(3),
      R => '0'
    );
\input_3_fu_108_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_3_fu_108(4),
      R => '0'
    );
\input_3_fu_108_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_3_fu_108(5),
      R => '0'
    );
\input_3_fu_108_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_3_fu_108(6),
      R => '0'
    );
\input_3_fu_108_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_3_fu_108(7),
      R => '0'
    );
\input_3_fu_108_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_3_fu_108(8),
      R => '0'
    );
\input_3_fu_108_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1080,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_3_fu_108(9),
      R => '0'
    );
\input_4_fu_112[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_4_fu_1120
    );
\input_4_fu_112_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_4_fu_112(0),
      R => '0'
    );
\input_4_fu_112_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_4_fu_112(10),
      R => '0'
    );
\input_4_fu_112_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_4_fu_112(11),
      R => '0'
    );
\input_4_fu_112_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_4_fu_112(12),
      R => '0'
    );
\input_4_fu_112_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_4_fu_112(13),
      R => '0'
    );
\input_4_fu_112_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_4_fu_112(14),
      R => '0'
    );
\input_4_fu_112_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_4_fu_112(15),
      R => '0'
    );
\input_4_fu_112_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_4_fu_112(1),
      R => '0'
    );
\input_4_fu_112_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_4_fu_112(2),
      R => '0'
    );
\input_4_fu_112_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_4_fu_112(3),
      R => '0'
    );
\input_4_fu_112_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_4_fu_112(4),
      R => '0'
    );
\input_4_fu_112_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_4_fu_112(5),
      R => '0'
    );
\input_4_fu_112_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_4_fu_112(6),
      R => '0'
    );
\input_4_fu_112_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_4_fu_112(7),
      R => '0'
    );
\input_4_fu_112_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_4_fu_112(8),
      R => '0'
    );
\input_4_fu_112_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1120,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_4_fu_112(9),
      R => '0'
    );
\input_5_fu_116[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_5_fu_1160
    );
\input_5_fu_116_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_5_fu_116(0),
      R => '0'
    );
\input_5_fu_116_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_5_fu_116(10),
      R => '0'
    );
\input_5_fu_116_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_5_fu_116(11),
      R => '0'
    );
\input_5_fu_116_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_5_fu_116(12),
      R => '0'
    );
\input_5_fu_116_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_5_fu_116(13),
      R => '0'
    );
\input_5_fu_116_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_5_fu_116(14),
      R => '0'
    );
\input_5_fu_116_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_5_fu_116(15),
      R => '0'
    );
\input_5_fu_116_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_5_fu_116(1),
      R => '0'
    );
\input_5_fu_116_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_5_fu_116(2),
      R => '0'
    );
\input_5_fu_116_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_5_fu_116(3),
      R => '0'
    );
\input_5_fu_116_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_5_fu_116(4),
      R => '0'
    );
\input_5_fu_116_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_5_fu_116(5),
      R => '0'
    );
\input_5_fu_116_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_5_fu_116(6),
      R => '0'
    );
\input_5_fu_116_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_5_fu_116(7),
      R => '0'
    );
\input_5_fu_116_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_5_fu_116(8),
      R => '0'
    );
\input_5_fu_116_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1160,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_5_fu_116(9),
      R => '0'
    );
\input_6_fu_120[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(1),
      I5 => trunc_ln34_reg_597(0),
      O => input_6_fu_1200
    );
\input_6_fu_120_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_6_fu_120(0),
      R => '0'
    );
\input_6_fu_120_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_6_fu_120(10),
      R => '0'
    );
\input_6_fu_120_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_6_fu_120(11),
      R => '0'
    );
\input_6_fu_120_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_6_fu_120(12),
      R => '0'
    );
\input_6_fu_120_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_6_fu_120(13),
      R => '0'
    );
\input_6_fu_120_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_6_fu_120(14),
      R => '0'
    );
\input_6_fu_120_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_6_fu_120(15),
      R => '0'
    );
\input_6_fu_120_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_6_fu_120(1),
      R => '0'
    );
\input_6_fu_120_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_6_fu_120(2),
      R => '0'
    );
\input_6_fu_120_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_6_fu_120(3),
      R => '0'
    );
\input_6_fu_120_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_6_fu_120(4),
      R => '0'
    );
\input_6_fu_120_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_6_fu_120(5),
      R => '0'
    );
\input_6_fu_120_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_6_fu_120(6),
      R => '0'
    );
\input_6_fu_120_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_6_fu_120(7),
      R => '0'
    );
\input_6_fu_120_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_6_fu_120(8),
      R => '0'
    );
\input_6_fu_120_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1200,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_6_fu_120(9),
      R => '0'
    );
\input_7_fu_124[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_7_fu_1240
    );
\input_7_fu_124_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_7_fu_124(0),
      R => '0'
    );
\input_7_fu_124_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_7_fu_124(10),
      R => '0'
    );
\input_7_fu_124_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_7_fu_124(11),
      R => '0'
    );
\input_7_fu_124_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_7_fu_124(12),
      R => '0'
    );
\input_7_fu_124_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_7_fu_124(13),
      R => '0'
    );
\input_7_fu_124_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_7_fu_124(14),
      R => '0'
    );
\input_7_fu_124_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_7_fu_124(15),
      R => '0'
    );
\input_7_fu_124_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_7_fu_124(1),
      R => '0'
    );
\input_7_fu_124_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_7_fu_124(2),
      R => '0'
    );
\input_7_fu_124_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_7_fu_124(3),
      R => '0'
    );
\input_7_fu_124_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_7_fu_124(4),
      R => '0'
    );
\input_7_fu_124_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_7_fu_124(5),
      R => '0'
    );
\input_7_fu_124_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_7_fu_124(6),
      R => '0'
    );
\input_7_fu_124_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_7_fu_124(7),
      R => '0'
    );
\input_7_fu_124_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_7_fu_124(8),
      R => '0'
    );
\input_7_fu_124_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1240,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_7_fu_124(9),
      R => '0'
    );
\input_8_fu_128[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => trunc_ln_reg_601(1),
      I1 => trunc_ln_reg_601(0),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_8_fu_1280
    );
\input_8_fu_128_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_8_fu_128(0),
      R => '0'
    );
\input_8_fu_128_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_8_fu_128(10),
      R => '0'
    );
\input_8_fu_128_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_8_fu_128(11),
      R => '0'
    );
\input_8_fu_128_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_8_fu_128(12),
      R => '0'
    );
\input_8_fu_128_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_8_fu_128(13),
      R => '0'
    );
\input_8_fu_128_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_8_fu_128(14),
      R => '0'
    );
\input_8_fu_128_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_8_fu_128(15),
      R => '0'
    );
\input_8_fu_128_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_8_fu_128(1),
      R => '0'
    );
\input_8_fu_128_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_8_fu_128(2),
      R => '0'
    );
\input_8_fu_128_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_8_fu_128(3),
      R => '0'
    );
\input_8_fu_128_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_8_fu_128(4),
      R => '0'
    );
\input_8_fu_128_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_8_fu_128(5),
      R => '0'
    );
\input_8_fu_128_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_8_fu_128(6),
      R => '0'
    );
\input_8_fu_128_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_8_fu_128(7),
      R => '0'
    );
\input_8_fu_128_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_8_fu_128(8),
      R => '0'
    );
\input_8_fu_128_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1280,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_8_fu_128(9),
      R => '0'
    );
\input_9_fu_132[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => trunc_ln_reg_601(1),
      I1 => trunc_ln_reg_601(0),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_9_fu_1320
    );
\input_9_fu_132_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_9_fu_132(0),
      R => '0'
    );
\input_9_fu_132_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_9_fu_132(10),
      R => '0'
    );
\input_9_fu_132_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_9_fu_132(11),
      R => '0'
    );
\input_9_fu_132_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_9_fu_132(12),
      R => '0'
    );
\input_9_fu_132_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_9_fu_132(13),
      R => '0'
    );
\input_9_fu_132_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_9_fu_132(14),
      R => '0'
    );
\input_9_fu_132_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_9_fu_132(15),
      R => '0'
    );
\input_9_fu_132_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_9_fu_132(1),
      R => '0'
    );
\input_9_fu_132_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_9_fu_132(2),
      R => '0'
    );
\input_9_fu_132_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_9_fu_132(3),
      R => '0'
    );
\input_9_fu_132_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_9_fu_132(4),
      R => '0'
    );
\input_9_fu_132_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_9_fu_132(5),
      R => '0'
    );
\input_9_fu_132_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_9_fu_132(6),
      R => '0'
    );
\input_9_fu_132_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_9_fu_132(7),
      R => '0'
    );
\input_9_fu_132_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_9_fu_132(8),
      R => '0'
    );
\input_9_fu_132_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1320,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_9_fu_132(9),
      R => '0'
    );
\input_fu_96[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => trunc_ln_reg_601(0),
      I1 => trunc_ln_reg_601(1),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => Q(0),
      I4 => trunc_ln34_reg_597(0),
      I5 => trunc_ln34_reg_597(1),
      O => input_fu_960
    );
\input_fu_96_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(0),
      Q => input_fu_96(0),
      R => '0'
    );
\input_fu_96_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(10),
      Q => input_fu_96(10),
      R => '0'
    );
\input_fu_96_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(11),
      Q => input_fu_96(11),
      R => '0'
    );
\input_fu_96_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(12),
      Q => input_fu_96(12),
      R => '0'
    );
\input_fu_96_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(13),
      Q => input_fu_96(13),
      R => '0'
    );
\input_fu_96_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(14),
      Q => input_fu_96(14),
      R => '0'
    );
\input_fu_96_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(15),
      Q => input_fu_96(15),
      R => '0'
    );
\input_fu_96_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(1),
      Q => input_fu_96(1),
      R => '0'
    );
\input_fu_96_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(2),
      Q => input_fu_96(2),
      R => '0'
    );
\input_fu_96_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(3),
      Q => input_fu_96(3),
      R => '0'
    );
\input_fu_96_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(4),
      Q => input_fu_96(4),
      R => '0'
    );
\input_fu_96_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(5),
      Q => input_fu_96(5),
      R => '0'
    );
\input_fu_96_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(6),
      Q => input_fu_96(6),
      R => '0'
    );
\input_fu_96_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(7),
      Q => input_fu_96(7),
      R => '0'
    );
\input_fu_96_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(8),
      Q => input_fu_96(8),
      R => '0'
    );
\input_fu_96_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_960,
      D => \input_15_fu_156_reg[15]_0\(9),
      Q => input_fu_96(9),
      R => '0'
    );
\max_val_reg_651[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(0),
      I1 => max_val_5_fu_340_p3(0),
      I2 => CO(0),
      O => max_val_fu_378_p3(0)
    );
\max_val_reg_651[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(0),
      I1 => input_11_fu_140(0),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(0),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(0),
      O => v_fu_364_p3(0)
    );
\max_val_reg_651[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(0),
      I1 => input_10_fu_136(0),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(0),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(0),
      O => max_val_5_fu_340_p3(0)
    );
\max_val_reg_651[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(10),
      I1 => max_val_5_fu_340_p3(10),
      I2 => CO(0),
      O => max_val_fu_378_p3(10)
    );
\max_val_reg_651[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(10),
      I1 => input_11_fu_140(10),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(10),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(10),
      O => v_fu_364_p3(10)
    );
\max_val_reg_651[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(10),
      I1 => input_10_fu_136(10),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(10),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(10),
      O => max_val_5_fu_340_p3(10)
    );
\max_val_reg_651[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(11),
      I1 => max_val_5_fu_340_p3(11),
      I2 => CO(0),
      O => max_val_fu_378_p3(11)
    );
\max_val_reg_651[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(11),
      I1 => input_11_fu_140(11),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(11),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(11),
      O => v_fu_364_p3(11)
    );
\max_val_reg_651[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(11),
      I1 => input_10_fu_136(11),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(11),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(11),
      O => max_val_5_fu_340_p3(11)
    );
\max_val_reg_651[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(12),
      I1 => max_val_5_fu_340_p3(12),
      I2 => CO(0),
      O => max_val_fu_378_p3(12)
    );
\max_val_reg_651[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(12),
      I1 => input_11_fu_140(12),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(12),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(12),
      O => v_fu_364_p3(12)
    );
\max_val_reg_651[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(12),
      I1 => input_10_fu_136(12),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(12),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(12),
      O => max_val_5_fu_340_p3(12)
    );
\max_val_reg_651[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(13),
      I1 => max_val_5_fu_340_p3(13),
      I2 => CO(0),
      O => max_val_fu_378_p3(13)
    );
\max_val_reg_651[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(13),
      I1 => input_11_fu_140(13),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(13),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(13),
      O => v_fu_364_p3(13)
    );
\max_val_reg_651[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(13),
      I1 => input_10_fu_136(13),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(13),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(13),
      O => max_val_5_fu_340_p3(13)
    );
\max_val_reg_651[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(14),
      I1 => max_val_5_fu_340_p3(14),
      I2 => CO(0),
      O => max_val_fu_378_p3(14)
    );
\max_val_reg_651[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(14),
      I1 => input_11_fu_140(14),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(14),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(14),
      O => v_fu_364_p3(14)
    );
\max_val_reg_651[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(14),
      I1 => input_10_fu_136(14),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(14),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(14),
      O => max_val_5_fu_340_p3(14)
    );
\max_val_reg_651[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(15),
      I1 => max_val_5_fu_340_p3(15),
      I2 => CO(0),
      O => max_val_fu_378_p3(15)
    );
\max_val_reg_651[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(15),
      I1 => input_11_fu_140(15),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(15),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(15),
      O => v_fu_364_p3(15)
    );
\max_val_reg_651[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(15),
      I1 => input_10_fu_136(15),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(15),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(15),
      O => max_val_5_fu_340_p3(15)
    );
\max_val_reg_651[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(1),
      I1 => max_val_5_fu_340_p3(1),
      I2 => CO(0),
      O => max_val_fu_378_p3(1)
    );
\max_val_reg_651[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(1),
      I1 => input_11_fu_140(1),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(1),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(1),
      O => v_fu_364_p3(1)
    );
\max_val_reg_651[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(1),
      I1 => input_10_fu_136(1),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(1),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(1),
      O => max_val_5_fu_340_p3(1)
    );
\max_val_reg_651[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(2),
      I1 => max_val_5_fu_340_p3(2),
      I2 => CO(0),
      O => max_val_fu_378_p3(2)
    );
\max_val_reg_651[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(2),
      I1 => input_11_fu_140(2),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(2),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(2),
      O => v_fu_364_p3(2)
    );
\max_val_reg_651[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(2),
      I1 => input_10_fu_136(2),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(2),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(2),
      O => max_val_5_fu_340_p3(2)
    );
\max_val_reg_651[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(3),
      I1 => max_val_5_fu_340_p3(3),
      I2 => CO(0),
      O => max_val_fu_378_p3(3)
    );
\max_val_reg_651[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(3),
      I1 => input_11_fu_140(3),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(3),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(3),
      O => v_fu_364_p3(3)
    );
\max_val_reg_651[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(3),
      I1 => input_10_fu_136(3),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(3),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(3),
      O => max_val_5_fu_340_p3(3)
    );
\max_val_reg_651[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(4),
      I1 => max_val_5_fu_340_p3(4),
      I2 => CO(0),
      O => max_val_fu_378_p3(4)
    );
\max_val_reg_651[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(4),
      I1 => input_11_fu_140(4),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(4),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(4),
      O => v_fu_364_p3(4)
    );
\max_val_reg_651[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(4),
      I1 => input_10_fu_136(4),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(4),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(4),
      O => max_val_5_fu_340_p3(4)
    );
\max_val_reg_651[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(5),
      I1 => max_val_5_fu_340_p3(5),
      I2 => CO(0),
      O => max_val_fu_378_p3(5)
    );
\max_val_reg_651[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(5),
      I1 => input_11_fu_140(5),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(5),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(5),
      O => v_fu_364_p3(5)
    );
\max_val_reg_651[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(5),
      I1 => input_10_fu_136(5),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(5),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(5),
      O => max_val_5_fu_340_p3(5)
    );
\max_val_reg_651[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(6),
      I1 => max_val_5_fu_340_p3(6),
      I2 => CO(0),
      O => max_val_fu_378_p3(6)
    );
\max_val_reg_651[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(6),
      I1 => input_11_fu_140(6),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(6),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(6),
      O => v_fu_364_p3(6)
    );
\max_val_reg_651[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(6),
      I1 => input_10_fu_136(6),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(6),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(6),
      O => max_val_5_fu_340_p3(6)
    );
\max_val_reg_651[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(7),
      I1 => max_val_5_fu_340_p3(7),
      I2 => CO(0),
      O => max_val_fu_378_p3(7)
    );
\max_val_reg_651[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(7),
      I1 => input_11_fu_140(7),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(7),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(7),
      O => v_fu_364_p3(7)
    );
\max_val_reg_651[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(7),
      I1 => input_10_fu_136(7),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(7),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(7),
      O => max_val_5_fu_340_p3(7)
    );
\max_val_reg_651[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(8),
      I1 => max_val_5_fu_340_p3(8),
      I2 => CO(0),
      O => max_val_fu_378_p3(8)
    );
\max_val_reg_651[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(8),
      I1 => input_11_fu_140(8),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(8),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(8),
      O => v_fu_364_p3(8)
    );
\max_val_reg_651[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(8),
      I1 => input_10_fu_136(8),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(8),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(8),
      O => max_val_5_fu_340_p3(8)
    );
\max_val_reg_651[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => v_fu_364_p3(9),
      I1 => max_val_5_fu_340_p3(9),
      I2 => CO(0),
      O => max_val_fu_378_p3(9)
    );
\max_val_reg_651[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_9_fu_132(9),
      I1 => input_11_fu_140(9),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_1_fu_100(9),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_3_fu_108(9),
      O => v_fu_364_p3(9)
    );
\max_val_reg_651[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_8_fu_128(9),
      I1 => input_10_fu_136(9),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_fu_96(9),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_2_fu_104(9),
      O => max_val_5_fu_340_p3(9)
    );
\trunc_ln34_reg_597_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \i_fu_92_reg_n_5_[0]\,
      Q => trunc_ln34_reg_597(0),
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\trunc_ln34_reg_597_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \i_fu_92_reg_n_5_[1]\,
      Q => trunc_ln34_reg_597(1),
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\trunc_ln_reg_601_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \i_fu_92_reg_n_5_[2]\,
      Q => trunc_ln_reg_601(0),
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\trunc_ln_reg_601_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_block_pp0_stage0_subdone,
      D => \i_fu_92_reg_n_5_[3]\,
      Q => trunc_ln_reg_601(1),
      R => flow_control_loop_pipe_sequential_init_U_n_12
    );
\v_3_reg_663[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(0),
      I1 => input_15_fu_156(0),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(0),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(0),
      O => v_3_fu_426_p3(0)
    );
\v_3_reg_663[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(10),
      I1 => input_15_fu_156(10),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(10),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(10),
      O => v_3_fu_426_p3(10)
    );
\v_3_reg_663[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(11),
      I1 => input_15_fu_156(11),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(11),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(11),
      O => v_3_fu_426_p3(11)
    );
\v_3_reg_663[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(12),
      I1 => input_15_fu_156(12),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(12),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(12),
      O => v_3_fu_426_p3(12)
    );
\v_3_reg_663[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(13),
      I1 => input_15_fu_156(13),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(13),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(13),
      O => v_3_fu_426_p3(13)
    );
\v_3_reg_663[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(14),
      I1 => input_15_fu_156(14),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(14),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(14),
      O => v_3_fu_426_p3(14)
    );
\v_3_reg_663[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(15),
      I1 => input_15_fu_156(15),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(15),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(15),
      O => v_3_fu_426_p3(15)
    );
\v_3_reg_663[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(1),
      I1 => input_15_fu_156(1),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(1),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(1),
      O => v_3_fu_426_p3(1)
    );
\v_3_reg_663[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(2),
      I1 => input_15_fu_156(2),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(2),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(2),
      O => v_3_fu_426_p3(2)
    );
\v_3_reg_663[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(3),
      I1 => input_15_fu_156(3),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(3),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(3),
      O => v_3_fu_426_p3(3)
    );
\v_3_reg_663[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(4),
      I1 => input_15_fu_156(4),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(4),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(4),
      O => v_3_fu_426_p3(4)
    );
\v_3_reg_663[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(5),
      I1 => input_15_fu_156(5),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(5),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(5),
      O => v_3_fu_426_p3(5)
    );
\v_3_reg_663[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(6),
      I1 => input_15_fu_156(6),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(6),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(6),
      O => v_3_fu_426_p3(6)
    );
\v_3_reg_663[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(7),
      I1 => input_15_fu_156(7),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(7),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(7),
      O => v_3_fu_426_p3(7)
    );
\v_3_reg_663[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(8),
      I1 => input_15_fu_156(8),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(8),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(8),
      O => v_3_fu_426_p3(8)
    );
\v_3_reg_663[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_13_fu_148(9),
      I1 => input_15_fu_156(9),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_5_fu_116(9),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_7_fu_124(9),
      O => v_3_fu_426_p3(9)
    );
\v_4_reg_657[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(0),
      I1 => input_14_fu_152(0),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(0),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(0),
      O => v_4_fu_402_p3(0)
    );
\v_4_reg_657[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(10),
      I1 => input_14_fu_152(10),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(10),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(10),
      O => v_4_fu_402_p3(10)
    );
\v_4_reg_657[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(11),
      I1 => input_14_fu_152(11),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(11),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(11),
      O => v_4_fu_402_p3(11)
    );
\v_4_reg_657[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(12),
      I1 => input_14_fu_152(12),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(12),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(12),
      O => v_4_fu_402_p3(12)
    );
\v_4_reg_657[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(13),
      I1 => input_14_fu_152(13),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(13),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(13),
      O => v_4_fu_402_p3(13)
    );
\v_4_reg_657[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(14),
      I1 => input_14_fu_152(14),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(14),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(14),
      O => v_4_fu_402_p3(14)
    );
\v_4_reg_657[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(15),
      I1 => input_14_fu_152(15),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(15),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(15),
      O => v_4_fu_402_p3(15)
    );
\v_4_reg_657[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(1),
      I1 => input_14_fu_152(1),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(1),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(1),
      O => v_4_fu_402_p3(1)
    );
\v_4_reg_657[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(2),
      I1 => input_14_fu_152(2),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(2),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(2),
      O => v_4_fu_402_p3(2)
    );
\v_4_reg_657[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(3),
      I1 => input_14_fu_152(3),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(3),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(3),
      O => v_4_fu_402_p3(3)
    );
\v_4_reg_657[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(4),
      I1 => input_14_fu_152(4),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(4),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(4),
      O => v_4_fu_402_p3(4)
    );
\v_4_reg_657[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(5),
      I1 => input_14_fu_152(5),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(5),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(5),
      O => v_4_fu_402_p3(5)
    );
\v_4_reg_657[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(6),
      I1 => input_14_fu_152(6),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(6),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(6),
      O => v_4_fu_402_p3(6)
    );
\v_4_reg_657[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(7),
      I1 => input_14_fu_152(7),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(7),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(7),
      O => v_4_fu_402_p3(7)
    );
\v_4_reg_657[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(8),
      I1 => input_14_fu_152(8),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(8),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(8),
      O => v_4_fu_402_p3(8)
    );
\v_4_reg_657[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => input_12_fu_144(9),
      I1 => input_14_fu_152(9),
      I2 => \v_4_reg_657_reg[15]\,
      I3 => input_4_fu_112(9),
      I4 => first_iter_0_fu_306_p2(0),
      I5 => input_6_fu_120(9),
      O => v_4_fu_402_p3(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_WRITE_OUTPUT is
  port (
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_sig_allocacmp_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    load_p2 : out STD_LOGIC;
    load_p2_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    \select_ln68_2_reg_185_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_ready : in STD_LOGIC;
    \data_p2_reg[1]\ : in STD_LOGIC;
    \data_p2_reg[1]_0\ : in STD_LOGIC;
    \select_ln68_2_reg_185_reg[15]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \select_ln68_2_reg_185_reg[15]_2\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_WRITE_OUTPUT : entity is "maxpool_maxpool_Pipeline_WRITE_OUTPUT";
end cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_WRITE_OUTPUT;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_WRITE_OUTPUT is
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_15 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_5 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_8 : STD_LOGIC;
  signal \^grp_maxpool_pipeline_write_output_fu_184_out_stream_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_2_fu_122_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i_fu_62_reg_n_5_[0]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_5_[1]\ : STD_LOGIC;
  signal \i_fu_62_reg_n_5_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_p2[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \out_stream_TDATA_reg[15]_i_1\ : label is "soft_lutpair33";
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
  grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0) <= \^grp_maxpool_pipeline_write_output_fu_184_out_stream_tlast\(0);
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_5,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
\data_p2[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(1),
      I2 => out_stream_TREADY_int_regslice,
      I3 => \data_p2_reg[1]\,
      O => load_p2
    );
\data_p2[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(1),
      I2 => out_stream_TREADY_int_regslice,
      I3 => \data_p2_reg[1]_0\,
      O => load_p2_0
    );
flow_control_loop_pipe_sequential_init_U: entity work.cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      \ap_CS_fsm_reg[5]\ => \ap_CS_fsm_reg[5]\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1_reg => \^ap_enable_reg_pp0_iter1\,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_sig_allocacmp_i_1(1 downto 0) => ap_sig_allocacmp_i_1(1 downto 0),
      grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_5,
      grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0) => \^grp_maxpool_pipeline_write_output_fu_184_out_stream_tlast\(0),
      i_2_fu_122_p2(2 downto 0) => i_2_fu_122_p2(2 downto 0),
      \i_fu_62_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_15,
      \i_fu_62_reg[2]\ => \i_fu_62_reg_n_5_[0]\,
      \i_fu_62_reg[2]_0\ => \i_fu_62_reg_n_5_[2]\,
      \i_fu_62_reg[2]_1\ => \i_fu_62_reg_n_5_[1]\,
      \icmp_ln70_reg_190_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_8,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice
    );
\i_fu_62_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_15,
      D => i_2_fu_122_p2(0),
      Q => \i_fu_62_reg_n_5_[0]\,
      R => '0'
    );
\i_fu_62_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_15,
      D => i_2_fu_122_p2(1),
      Q => \i_fu_62_reg_n_5_[1]\,
      R => '0'
    );
\i_fu_62_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_15,
      D => i_2_fu_122_p2(2),
      Q => \i_fu_62_reg_n_5_[2]\,
      R => '0'
    );
\icmp_ln70_reg_190_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_8,
      Q => \^grp_maxpool_pipeline_write_output_fu_184_out_stream_tlast\(0),
      R => '0'
    );
\out_stream_TDATA_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(1),
      I2 => out_stream_TREADY_int_regslice,
      O => E(0)
    );
\select_ln68_2_reg_185_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(0),
      Q => \select_ln68_2_reg_185_reg[15]_0\(0),
      R => '0'
    );
\select_ln68_2_reg_185_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(10),
      Q => \select_ln68_2_reg_185_reg[15]_0\(10),
      R => '0'
    );
\select_ln68_2_reg_185_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(11),
      Q => \select_ln68_2_reg_185_reg[15]_0\(11),
      R => '0'
    );
\select_ln68_2_reg_185_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(12),
      Q => \select_ln68_2_reg_185_reg[15]_0\(12),
      R => '0'
    );
\select_ln68_2_reg_185_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(13),
      Q => \select_ln68_2_reg_185_reg[15]_0\(13),
      R => '0'
    );
\select_ln68_2_reg_185_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(14),
      Q => \select_ln68_2_reg_185_reg[15]_0\(14),
      R => '0'
    );
\select_ln68_2_reg_185_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(15),
      Q => \select_ln68_2_reg_185_reg[15]_0\(15),
      R => '0'
    );
\select_ln68_2_reg_185_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(1),
      Q => \select_ln68_2_reg_185_reg[15]_0\(1),
      R => '0'
    );
\select_ln68_2_reg_185_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(2),
      Q => \select_ln68_2_reg_185_reg[15]_0\(2),
      R => '0'
    );
\select_ln68_2_reg_185_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(3),
      Q => \select_ln68_2_reg_185_reg[15]_0\(3),
      R => '0'
    );
\select_ln68_2_reg_185_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(4),
      Q => \select_ln68_2_reg_185_reg[15]_0\(4),
      R => '0'
    );
\select_ln68_2_reg_185_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(5),
      Q => \select_ln68_2_reg_185_reg[15]_0\(5),
      R => '0'
    );
\select_ln68_2_reg_185_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(6),
      Q => \select_ln68_2_reg_185_reg[15]_0\(6),
      R => '0'
    );
\select_ln68_2_reg_185_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(7),
      Q => \select_ln68_2_reg_185_reg[15]_0\(7),
      R => '0'
    );
\select_ln68_2_reg_185_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(8),
      Q => \select_ln68_2_reg_185_reg[15]_0\(8),
      R => '0'
    );
\select_ln68_2_reg_185_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \select_ln68_2_reg_185_reg[15]_1\(0),
      D => \select_ln68_2_reg_185_reg[15]_2\(9),
      Q => \select_ln68_2_reg_185_reg[15]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1_maxpool is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cnn_pipeline_maxpool_0_1_maxpool : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_maxpool_0_1_maxpool : entity is "maxpool";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b00000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b00000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b00000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b00001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b00010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b00100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b01000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of cnn_pipeline_maxpool_0_1_maxpool : entity is "8'b10000000";
  attribute hls_module : string;
  attribute hls_module of cnn_pipeline_maxpool_0_1_maxpool : entity is "yes";
end cnn_pipeline_maxpool_0_1_maxpool;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1_maxpool is
  signal \ap_CS_fsm_reg_n_5_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_1 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_iter_0_fu_306_p2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg : STD_LOGIC;
  signal grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_25 : STD_LOGIC;
  signal grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_26 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_10 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_11 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_12 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_13 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_14 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_15 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_16 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_33 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_34 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_35 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_36 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_37 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_38 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_39 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_40 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_73 : STD_LOGIC;
  signal grp_maxpool_Pipeline_READ_INPUT_fu_132_n_9 : STD_LOGIC;
  signal grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg : STD_LOGIC;
  signal grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_n_14 : STD_LOGIC;
  signal grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_fu_6211_out : STD_LOGIC;
  signal in_stream_TREADY_int_regslice : STD_LOGIC;
  signal in_stream_TVALID_int_regslice : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal load_p2_0 : STD_LOGIC;
  signal max_val_fu_378_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal out_stream_TDATA_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal out_stream_TDATA_reg1 : STD_LOGIC;
  signal \^out_stream_tkeep\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal out_stream_TLAST_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal out_stream_TREADY_int_regslice : STD_LOGIC;
  signal \^out_stream_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_15 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_16 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_17 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_18 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_19 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_20 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_21 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_22 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_23 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_9 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_out_stream_V_keep_V_U_n_6 : STD_LOGIC;
  signal regslice_both_out_stream_V_strb_V_U_n_6 : STD_LOGIC;
  signal select_ln68_2_fu_156_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal select_ln68_2_reg_185 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal v_3_fu_426_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal v_4_fu_402_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair40";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair40";
begin
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
  out_stream_TKEEP(1) <= \^out_stream_tkeep\(0);
  out_stream_TKEEP(0) <= \^out_stream_tkeep\(0);
  out_stream_TSTRB(1) <= \^out_stream_tstrb\(0);
  out_stream_TSTRB(0) <= \^out_stream_tstrb\(0);
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_5_[0]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_5_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state8,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_5_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160: entity work.cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_POOL_OR_POOL_OC
     port map (
      CO(0) => p_0_in,
      D(1 downto 0) => ap_NS_fsm(5 downto 4),
      DI(7) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_9,
      DI(6) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_10,
      DI(5) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_11,
      DI(4) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_12,
      DI(3) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_13,
      DI(2) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_14,
      DI(1) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_15,
      DI(0) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_16,
      Q(1) => ap_CS_fsm_state5,
      Q(0) => ap_CS_fsm_state4,
      S(7) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_33,
      S(6) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_34,
      S(5) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_35,
      S(4) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_36,
      S(3) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_37,
      S(2) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_38,
      S(1) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_39,
      S(0) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_40,
      \ap_CS_fsm_reg[3]\ => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_25,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_sig_allocacmp_i_1(1 downto 0) => ap_sig_allocacmp_i_1(1 downto 0),
      first_iter_0_fu_306_p2(0) => first_iter_0_fu_306_p2(0),
      grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      max_val_fu_378_p3(15 downto 0) => max_val_fu_378_p3(15 downto 0),
      \or_s_fu_96_reg[1]_0\ => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_26,
      \output_3_fu_92_reg[15]_0\(15 downto 0) => select_ln68_2_fu_156_p3(15 downto 0),
      v_3_fu_426_p3(15 downto 0) => v_3_fu_426_p3(15 downto 0),
      v_4_fu_402_p3(15 downto 0) => v_4_fu_402_p3(15 downto 0)
    );
grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_25,
      Q => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_maxpool_Pipeline_READ_INPUT_fu_132: entity work.cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_READ_INPUT
     port map (
      CO(0) => p_0_in,
      D(1 downto 0) => ap_NS_fsm(3 downto 2),
      DI(7) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_9,
      DI(6) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_10,
      DI(5) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_11,
      DI(4) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_12,
      DI(3) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_13,
      DI(2) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_14,
      DI(1) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_15,
      DI(0) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_16,
      Q(0) => in_stream_TVALID_int_regslice,
      S(7) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_33,
      S(6) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_34,
      S(5) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_35,
      S(4) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_36,
      S(3) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_37,
      S(2) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_38,
      S(1) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_39,
      S(0) => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_40,
      \ap_CS_fsm_reg[3]\(1) => ap_CS_fsm_state3,
      \ap_CS_fsm_reg[3]\(0) => ap_CS_fsm_state2,
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      first_iter_0_fu_306_p2(0) => first_iter_0_fu_306_p2(0),
      grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_73,
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      \input_15_fu_156_reg[15]_0\(15) => regslice_both_in_stream_V_data_V_U_n_8,
      \input_15_fu_156_reg[15]_0\(14) => regslice_both_in_stream_V_data_V_U_n_9,
      \input_15_fu_156_reg[15]_0\(13) => regslice_both_in_stream_V_data_V_U_n_10,
      \input_15_fu_156_reg[15]_0\(12) => regslice_both_in_stream_V_data_V_U_n_11,
      \input_15_fu_156_reg[15]_0\(11) => regslice_both_in_stream_V_data_V_U_n_12,
      \input_15_fu_156_reg[15]_0\(10) => regslice_both_in_stream_V_data_V_U_n_13,
      \input_15_fu_156_reg[15]_0\(9) => regslice_both_in_stream_V_data_V_U_n_14,
      \input_15_fu_156_reg[15]_0\(8) => regslice_both_in_stream_V_data_V_U_n_15,
      \input_15_fu_156_reg[15]_0\(7) => regslice_both_in_stream_V_data_V_U_n_16,
      \input_15_fu_156_reg[15]_0\(6) => regslice_both_in_stream_V_data_V_U_n_17,
      \input_15_fu_156_reg[15]_0\(5) => regslice_both_in_stream_V_data_V_U_n_18,
      \input_15_fu_156_reg[15]_0\(4) => regslice_both_in_stream_V_data_V_U_n_19,
      \input_15_fu_156_reg[15]_0\(3) => regslice_both_in_stream_V_data_V_U_n_20,
      \input_15_fu_156_reg[15]_0\(2) => regslice_both_in_stream_V_data_V_U_n_21,
      \input_15_fu_156_reg[15]_0\(1) => regslice_both_in_stream_V_data_V_U_n_22,
      \input_15_fu_156_reg[15]_0\(0) => regslice_both_in_stream_V_data_V_U_n_23,
      max_val_fu_378_p3(15 downto 0) => max_val_fu_378_p3(15 downto 0),
      v_3_fu_426_p3(15 downto 0) => v_3_fu_426_p3(15 downto 0),
      v_4_fu_402_p3(15 downto 0) => v_4_fu_402_p3(15 downto 0),
      \v_4_reg_657_reg[15]\ => grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_26
    );
grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_maxpool_Pipeline_READ_INPUT_fu_132_n_73,
      Q => grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184: entity work.cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_WRITE_OUTPUT
     port map (
      D(1 downto 0) => ap_NS_fsm(7 downto 6),
      E(0) => out_stream_TDATA_reg1,
      Q(2) => ap_CS_fsm_state8,
      Q(1) => ap_CS_fsm_state7,
      Q(0) => ap_CS_fsm_state6,
      \ap_CS_fsm_reg[5]\ => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_n_14,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_1,
      ap_ready => \^ap_ready\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_sig_allocacmp_i_1(1 downto 0) => ap_sig_allocacmp_i_1(1 downto 0),
      \data_p2_reg[1]\ => regslice_both_out_stream_V_keep_V_U_n_6,
      \data_p2_reg[1]_0\ => regslice_both_out_stream_V_strb_V_U_n_6,
      grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0) => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0),
      load_p2 => load_p2_0,
      load_p2_0 => load_p2,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      \select_ln68_2_reg_185_reg[15]_0\(15 downto 0) => select_ln68_2_reg_185(15 downto 0),
      \select_ln68_2_reg_185_reg[15]_1\(0) => i_fu_6211_out,
      \select_ln68_2_reg_185_reg[15]_2\(15 downto 0) => select_ln68_2_fu_156_p3(15 downto 0)
    );
grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_n_14,
      Q => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
      R => ap_rst_n_inv
    );
\out_stream_TDATA_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(0),
      Q => out_stream_TDATA_reg(0),
      R => '0'
    );
\out_stream_TDATA_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(10),
      Q => out_stream_TDATA_reg(10),
      R => '0'
    );
\out_stream_TDATA_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(11),
      Q => out_stream_TDATA_reg(11),
      R => '0'
    );
\out_stream_TDATA_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(12),
      Q => out_stream_TDATA_reg(12),
      R => '0'
    );
\out_stream_TDATA_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(13),
      Q => out_stream_TDATA_reg(13),
      R => '0'
    );
\out_stream_TDATA_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(14),
      Q => out_stream_TDATA_reg(14),
      R => '0'
    );
\out_stream_TDATA_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(15),
      Q => out_stream_TDATA_reg(15),
      R => '0'
    );
\out_stream_TDATA_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(1),
      Q => out_stream_TDATA_reg(1),
      R => '0'
    );
\out_stream_TDATA_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(2),
      Q => out_stream_TDATA_reg(2),
      R => '0'
    );
\out_stream_TDATA_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(3),
      Q => out_stream_TDATA_reg(3),
      R => '0'
    );
\out_stream_TDATA_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(4),
      Q => out_stream_TDATA_reg(4),
      R => '0'
    );
\out_stream_TDATA_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(5),
      Q => out_stream_TDATA_reg(5),
      R => '0'
    );
\out_stream_TDATA_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(6),
      Q => out_stream_TDATA_reg(6),
      R => '0'
    );
\out_stream_TDATA_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(7),
      Q => out_stream_TDATA_reg(7),
      R => '0'
    );
\out_stream_TDATA_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(8),
      Q => out_stream_TDATA_reg(8),
      R => '0'
    );
\out_stream_TDATA_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => select_ln68_2_reg_185(9),
      Q => out_stream_TDATA_reg(9),
      R => '0'
    );
\out_stream_TLAST_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_stream_TDATA_reg1,
      D => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0),
      Q => out_stream_TLAST_reg(0),
      R => '0'
    );
regslice_both_in_stream_V_data_V_U: entity work.cnn_pipeline_maxpool_0_1_maxpool_regslice_both
     port map (
      Q(0) => ap_CS_fsm_state3,
      ack_in_t_reg_0 => in_stream_TREADY,
      ap_block_pp0_stage0_subdone => ap_block_pp0_stage0_subdone,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[15]_0\(15) => regslice_both_in_stream_V_data_V_U_n_8,
      \data_p1_reg[15]_0\(14) => regslice_both_in_stream_V_data_V_U_n_9,
      \data_p1_reg[15]_0\(13) => regslice_both_in_stream_V_data_V_U_n_10,
      \data_p1_reg[15]_0\(12) => regslice_both_in_stream_V_data_V_U_n_11,
      \data_p1_reg[15]_0\(11) => regslice_both_in_stream_V_data_V_U_n_12,
      \data_p1_reg[15]_0\(10) => regslice_both_in_stream_V_data_V_U_n_13,
      \data_p1_reg[15]_0\(9) => regslice_both_in_stream_V_data_V_U_n_14,
      \data_p1_reg[15]_0\(8) => regslice_both_in_stream_V_data_V_U_n_15,
      \data_p1_reg[15]_0\(7) => regslice_both_in_stream_V_data_V_U_n_16,
      \data_p1_reg[15]_0\(6) => regslice_both_in_stream_V_data_V_U_n_17,
      \data_p1_reg[15]_0\(5) => regslice_both_in_stream_V_data_V_U_n_18,
      \data_p1_reg[15]_0\(4) => regslice_both_in_stream_V_data_V_U_n_19,
      \data_p1_reg[15]_0\(3) => regslice_both_in_stream_V_data_V_U_n_20,
      \data_p1_reg[15]_0\(2) => regslice_both_in_stream_V_data_V_U_n_21,
      \data_p1_reg[15]_0\(1) => regslice_both_in_stream_V_data_V_U_n_22,
      \data_p1_reg[15]_0\(0) => regslice_both_in_stream_V_data_V_U_n_23,
      in_stream_TDATA(15 downto 0) => in_stream_TDATA(15 downto 0),
      in_stream_TREADY_int_regslice => in_stream_TREADY_int_regslice,
      in_stream_TVALID => in_stream_TVALID,
      \state_reg[0]_0\(0) => in_stream_TVALID_int_regslice
    );
regslice_both_out_stream_V_data_V_U: entity work.cnn_pipeline_maxpool_0_1_maxpool_regslice_both_0
     port map (
      D(15 downto 0) => select_ln68_2_reg_185(15 downto 0),
      E(0) => out_stream_TDATA_reg1,
      Q(2) => ap_CS_fsm_state8,
      Q(1) => ap_CS_fsm_state7,
      Q(0) => \ap_CS_fsm_reg_n_5_[0]\,
      ack_in_t_reg_0(0) => i_fu_6211_out,
      ack_in_t_reg_1 => regslice_both_out_stream_V_data_V_U_n_11,
      \ap_CS_fsm_reg[0]\(0) => ap_NS_fsm(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_1,
      ap_ready => \^ap_ready\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      out_stream_TDATA(15 downto 0) => out_stream_TDATA(15 downto 0),
      out_stream_TDATA_reg(15 downto 0) => out_stream_TDATA_reg(15 downto 0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      out_stream_TVALID => out_stream_TVALID
    );
regslice_both_out_stream_V_keep_V_U: entity work.\cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0\
     port map (
      Q(0) => ap_CS_fsm_state7,
      ack_in_t_reg_0 => regslice_both_out_stream_V_keep_V_U_n_6,
      ack_in_t_reg_1 => regslice_both_out_stream_V_data_V_U_n_11,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_1,
      ap_rst_n_inv => ap_rst_n_inv,
      load_p2 => load_p2_0,
      out_stream_TKEEP(0) => \^out_stream_tkeep\(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice
    );
regslice_both_out_stream_V_last_V_U: entity work.\cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized1\
     port map (
      E(0) => out_stream_TDATA_reg1,
      Q(0) => ap_CS_fsm_state7,
      ack_in_t_reg_0 => regslice_both_out_stream_V_data_V_U_n_11,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_1,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0) => grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(0),
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TLAST_reg(0) => out_stream_TLAST_reg(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice
    );
regslice_both_out_stream_V_strb_V_U: entity work.\cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0_1\
     port map (
      Q(0) => ap_CS_fsm_state7,
      ack_in_t_reg_0 => regslice_both_out_stream_V_strb_V_U_n_6,
      ack_in_t_reg_1 => regslice_both_out_stream_V_data_V_U_n_11,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_1,
      ap_rst_n_inv => ap_rst_n_inv,
      load_p2 => load_p2,
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      out_stream_TSTRB(0) => \^out_stream_tstrb\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_maxpool_0_1 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TVALID : in STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cnn_pipeline_maxpool_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cnn_pipeline_maxpool_0_1 : entity is "cnn_pipeline_maxpool_0_1,maxpool,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cnn_pipeline_maxpool_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cnn_pipeline_maxpool_0_1 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cnn_pipeline_maxpool_0_1 : entity is "maxpool,Vivado 2025.2";
  attribute hls_module : string;
  attribute hls_module of cnn_pipeline_maxpool_0_1 : entity is "yes";
end cnn_pipeline_maxpool_0_1;

architecture STRUCTURE of cnn_pipeline_maxpool_0_1 is
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "8'b00000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "8'b00000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "8'b00000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "8'b00001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "8'b00010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "8'b00100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "8'b01000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "8'b10000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 199998001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_MODE of ap_done : signal is "slave";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of in_stream_TREADY : signal is "xilinx.com:interface:axis:1.0 in_stream TREADY";
  attribute X_INTERFACE_INFO of in_stream_TVALID : signal is "xilinx.com:interface:axis:1.0 in_stream TVALID";
  attribute X_INTERFACE_INFO of out_stream_TREADY : signal is "xilinx.com:interface:axis:1.0 out_stream TREADY";
  attribute X_INTERFACE_INFO of out_stream_TVALID : signal is "xilinx.com:interface:axis:1.0 out_stream TVALID";
  attribute X_INTERFACE_INFO of in_stream_TDATA : signal is "xilinx.com:interface:axis:1.0 in_stream TDATA";
  attribute X_INTERFACE_MODE of in_stream_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of in_stream_TDATA : signal is "XIL_INTERFACENAME in_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 199998001, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of in_stream_TKEEP : signal is "xilinx.com:interface:axis:1.0 in_stream TKEEP";
  attribute X_INTERFACE_INFO of in_stream_TLAST : signal is "xilinx.com:interface:axis:1.0 in_stream TLAST";
  attribute X_INTERFACE_INFO of in_stream_TSTRB : signal is "xilinx.com:interface:axis:1.0 in_stream TSTRB";
  attribute X_INTERFACE_INFO of out_stream_TDATA : signal is "xilinx.com:interface:axis:1.0 out_stream TDATA";
  attribute X_INTERFACE_MODE of out_stream_TDATA : signal is "master";
  attribute X_INTERFACE_PARAMETER of out_stream_TDATA : signal is "XIL_INTERFACENAME out_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 199998001, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of out_stream_TKEEP : signal is "xilinx.com:interface:axis:1.0 out_stream TKEEP";
  attribute X_INTERFACE_INFO of out_stream_TLAST : signal is "xilinx.com:interface:axis:1.0 out_stream TLAST";
  attribute X_INTERFACE_INFO of out_stream_TSTRB : signal is "xilinx.com:interface:axis:1.0 out_stream TSTRB";
begin
inst: entity work.cnn_pipeline_maxpool_0_1_maxpool
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      in_stream_TDATA(15 downto 0) => in_stream_TDATA(15 downto 0),
      in_stream_TKEEP(1 downto 0) => B"00",
      in_stream_TLAST(0) => '0',
      in_stream_TREADY => in_stream_TREADY,
      in_stream_TSTRB(1 downto 0) => B"00",
      in_stream_TVALID => in_stream_TVALID,
      out_stream_TDATA(15 downto 0) => out_stream_TDATA(15 downto 0),
      out_stream_TKEEP(1 downto 0) => out_stream_TKEEP(1 downto 0),
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TSTRB(1 downto 0) => out_stream_TSTRB(1 downto 0),
      out_stream_TVALID => out_stream_TVALID
    );
end STRUCTURE;

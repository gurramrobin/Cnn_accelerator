-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Jun 12 17:37:26 2026
-- Host        : DESKTOP-1HEQ2M2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/CHINNA/Vivado_workspace/cnn_accelerator/cnn_accelerator.gen/sources_1/bd/cnn_pipeline/ip/cnn_pipeline_conv2d_0_1/cnn_pipeline_conv2d_0_1_sim_netlist.vhdl
-- Design      : cnn_pipeline_conv2d_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init is
  port (
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0 : out STD_LOGIC;
    \icmp_ln118_reg_382_reg[0]\ : out STD_LOGIC;
    add_ln113_fu_232_p2 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    i_fu_200_p2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    select_ln110_fu_224_p3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \phi_urem24_fu_92_reg[1]\ : out STD_LOGIC;
    ap_loop_init_int_reg_0 : out STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    \rem_fu_100_reg[2]\ : out STD_LOGIC;
    \rem_fu_100_reg[3]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[7]_0\ : in STD_LOGIC;
    rem_fu_100 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rem_fu_100_reg[3]_0\ : in STD_LOGIC;
    \icmp_ln118_reg_382_reg[0]_0\ : in STD_LOGIC;
    \phi_mul22_fu_96_reg[3]\ : in STD_LOGIC;
    \phi_mul22_fu_96_reg[3]_0\ : in STD_LOGIC;
    \phi_mul22_fu_96_reg[3]_1\ : in STD_LOGIC;
    \phi_mul22_fu_96_reg[6]\ : in STD_LOGIC;
    \phi_mul22_fu_96_reg[7]\ : in STD_LOGIC;
    \phi_mul22_fu_96_reg[7]_0\ : in STD_LOGIC;
    \phi_mul22_fu_96_reg[4]\ : in STD_LOGIC;
    phi_urem24_fu_92 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init : entity is "conv2d_flow_control_loop_pipe_sequential_init";
end cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__2_n_0\ : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__2_n_0\ : STD_LOGIC;
  signal ap_loop_init_int_i_2_n_0 : STD_LOGIC;
  signal \^grp_conv2d_pipeline_write_output_fu_358_ap_start_reg_reg_0\ : STD_LOGIC;
  signal \icmp_ln118_reg_382[0]_i_2_n_0\ : STD_LOGIC;
  signal \phi_mul22_fu_96[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \icmp_ln118_reg_382[0]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \p_0_reg_377[15]_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \p_0_reg_377[15]_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \phi_mul22_fu_96[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \phi_mul22_fu_96[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \phi_mul22_fu_96[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \phi_urem24_fu_92[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rem_fu_100[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rem_fu_100[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rem_fu_100[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rem_fu_100[3]_i_4\ : label is "soft_lutpair30";
begin
  grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0 <= \^grp_conv2d_pipeline_write_output_fu_358_ap_start_reg_reg_0\;
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => Q(0),
      I1 => ap_done_reg1,
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I3 => ap_done_cache,
      I4 => Q(1),
      O => \ap_CS_fsm_reg[7]\(0)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F444444444"
    )
        port map (
      I0 => \ap_CS_fsm_reg[7]_0\,
      I1 => Q(2),
      I2 => ap_done_reg1,
      I3 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I4 => ap_done_cache,
      I5 => Q(1),
      O => \ap_CS_fsm_reg[7]\(1)
    );
\ap_CS_fsm[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => rem_fu_100(2),
      I1 => \^grp_conv2d_pipeline_write_output_fu_358_ap_start_reg_reg_0\,
      I2 => rem_fu_100(1),
      I3 => rem_fu_100(0),
      I4 => rem_fu_100(3),
      I5 => \rem_fu_100_reg[3]_0\,
      O => ap_done_reg1
    );
\ap_done_cache_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_done_reg1,
      I1 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I2 => ap_done_cache,
      O => \ap_done_cache_i_1__2_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__2_n_0\,
      Q => ap_done_cache,
      R => ap_rst_n_inv
    );
\ap_enable_reg_pp0_iter1_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFAA0000"
    )
        port map (
      I0 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter1_reg,
      I4 => ap_rst_n,
      I5 => ap_done_reg1,
      O => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg
    );
\ap_loop_init_int_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8AFF"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_loop_init_int_i_2_n_0,
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I3 => ap_rst_n,
      I4 => ap_done_reg1,
      O => \ap_loop_init_int_i_1__2_n_0\
    );
ap_loop_init_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg,
      I1 => Q(1),
      I2 => out_stream_TREADY_int_regslice,
      O => ap_loop_init_int_i_2_n_0
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__2_n_0\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => Q(0),
      I1 => ap_done_reg1,
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      O => \ap_CS_fsm_reg[5]\
    );
\icmp_ln118_reg_382[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAA0030"
    )
        port map (
      I0 => \icmp_ln118_reg_382_reg[0]_0\,
      I1 => \icmp_ln118_reg_382[0]_i_2_n_0\,
      I2 => rem_fu_100(3),
      I3 => \^grp_conv2d_pipeline_write_output_fu_358_ap_start_reg_reg_0\,
      I4 => ap_loop_init_int_i_2_n_0,
      I5 => rem_fu_100(0),
      O => \icmp_ln118_reg_382_reg[0]\
    );
\icmp_ln118_reg_382[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => rem_fu_100(2),
      I1 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => rem_fu_100(1),
      O => \icmp_ln118_reg_382[0]_i_2_n_0\
    );
\p_0_reg_377[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => phi_urem24_fu_92(1),
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      O => \phi_urem24_fu_92_reg[1]\
    );
\p_0_reg_377[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I2 => phi_urem24_fu_92(0),
      O => ap_loop_init_int_reg_0
    );
\phi_mul22_fu_96[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I2 => \phi_mul22_fu_96_reg[3]_0\,
      O => add_ln113_fu_232_p2(0)
    );
\phi_mul22_fu_96[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAD5"
    )
        port map (
      I0 => \phi_mul22_fu_96_reg[3]_0\,
      I1 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \phi_mul22_fu_96_reg[3]\,
      O => add_ln113_fu_232_p2(1)
    );
\phi_mul22_fu_96[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001E1E1E"
    )
        port map (
      I0 => \phi_mul22_fu_96_reg[3]\,
      I1 => \phi_mul22_fu_96_reg[3]_0\,
      I2 => \phi_mul22_fu_96_reg[3]_1\,
      I3 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I4 => ap_loop_init_int,
      O => add_ln113_fu_232_p2(2)
    );
\phi_mul22_fu_96[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAF999F555F555"
    )
        port map (
      I0 => \phi_mul22_fu_96_reg[4]\,
      I1 => \phi_mul22_fu_96_reg[3]_0\,
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \phi_mul22_fu_96_reg[3]\,
      I5 => \phi_mul22_fu_96_reg[3]_1\,
      O => add_ln113_fu_232_p2(3)
    );
\phi_mul22_fu_96[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000011150000EEEA"
    )
        port map (
      I0 => \phi_mul22_fu_96_reg[4]\,
      I1 => \phi_mul22_fu_96_reg[3]_1\,
      I2 => \phi_mul22_fu_96_reg[3]\,
      I3 => \phi_mul22_fu_96_reg[3]_0\,
      I4 => \^grp_conv2d_pipeline_write_output_fu_358_ap_start_reg_reg_0\,
      I5 => \phi_mul22_fu_96_reg[6]\,
      O => add_ln113_fu_232_p2(4)
    );
\phi_mul22_fu_96[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07770888"
    )
        port map (
      I0 => \phi_mul22_fu_96_reg[6]\,
      I1 => \phi_mul22_fu_96[7]_i_2_n_0\,
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \phi_mul22_fu_96_reg[7]\,
      O => add_ln113_fu_232_p2(5)
    );
\phi_mul22_fu_96[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06660AAA0AAA0AAA"
    )
        port map (
      I0 => \phi_mul22_fu_96_reg[7]_0\,
      I1 => \phi_mul22_fu_96[7]_i_2_n_0\,
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \phi_mul22_fu_96_reg[6]\,
      I5 => \phi_mul22_fu_96_reg[7]\,
      O => add_ln113_fu_232_p2(6)
    );
\phi_mul22_fu_96[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFE0FFE0FFE0"
    )
        port map (
      I0 => \phi_mul22_fu_96_reg[3]_0\,
      I1 => \phi_mul22_fu_96_reg[3]\,
      I2 => \phi_mul22_fu_96_reg[3]_1\,
      I3 => \phi_mul22_fu_96_reg[4]\,
      I4 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I5 => ap_loop_init_int,
      O => \phi_mul22_fu_96[7]_i_2_n_0\
    );
\phi_urem24_fu_92[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0FFEAC0C0FFFF"
    )
        port map (
      I0 => phi_urem24_fu_92(3),
      I1 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => phi_urem24_fu_92(2),
      I4 => phi_urem24_fu_92(0),
      I5 => phi_urem24_fu_92(1),
      O => select_ln110_fu_224_p3(0)
    );
\phi_urem24_fu_92[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0F00E0E0E0"
    )
        port map (
      I0 => phi_urem24_fu_92(3),
      I1 => phi_urem24_fu_92(2),
      I2 => phi_urem24_fu_92(1),
      I3 => ap_loop_init_int,
      I4 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I5 => phi_urem24_fu_92(0),
      O => select_ln110_fu_224_p3(1)
    );
\phi_urem24_fu_92[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07770888"
    )
        port map (
      I0 => phi_urem24_fu_92(0),
      I1 => phi_urem24_fu_92(1),
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => phi_urem24_fu_92(2),
      O => select_ln110_fu_224_p3(2)
    );
\phi_urem24_fu_92[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A6A6A00AAAAAA"
    )
        port map (
      I0 => phi_urem24_fu_92(3),
      I1 => phi_urem24_fu_92(1),
      I2 => phi_urem24_fu_92(0),
      I3 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => phi_urem24_fu_92(2),
      O => select_ln110_fu_224_p3(3)
    );
\rem_fu_100[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => rem_fu_100(0),
      O => i_fu_200_p2(0)
    );
\rem_fu_100[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"152A"
    )
        port map (
      I0 => rem_fu_100(0),
      I1 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => rem_fu_100(1),
      O => i_fu_200_p2(1)
    );
\rem_fu_100[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06660AAA"
    )
        port map (
      I0 => rem_fu_100(2),
      I1 => rem_fu_100(0),
      I2 => ap_loop_init_int,
      I3 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I4 => rem_fu_100(1),
      O => i_fu_200_p2(2)
    );
\rem_fu_100[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555555555555"
    )
        port map (
      I0 => \rem_fu_100_reg[3]_0\,
      I1 => rem_fu_100(2),
      I2 => \^grp_conv2d_pipeline_write_output_fu_358_ap_start_reg_reg_0\,
      I3 => rem_fu_100(1),
      I4 => rem_fu_100(0),
      I5 => rem_fu_100(3),
      O => \rem_fu_100_reg[2]\
    );
\rem_fu_100[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06660AAA0AAA0AAA"
    )
        port map (
      I0 => rem_fu_100(3),
      I1 => rem_fu_100(1),
      I2 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => rem_fu_100(0),
      I5 => rem_fu_100(2),
      O => \rem_fu_100_reg[3]\
    );
\rem_fu_100[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      I1 => ap_loop_init_int,
      O => \^grp_conv2d_pipeline_write_output_fu_358_ap_start_reg_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_3 is
  port (
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    phi_mul14_fu_86 : out STD_LOGIC_VECTOR ( 0 to 0 );
    select_ln73_fu_289_p3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    add_ln81_fu_248_p2 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \phi_mul14_fu_86_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_fu_239_p2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_loop_init_int_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    rem_fu_90 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \phi_mul14_fu_86_reg[1]\ : in STD_LOGIC;
    phi_urem16_fu_82 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \phi_mul14_fu_86_reg[3]\ : in STD_LOGIC;
    \phi_mul14_fu_86_reg[3]_0\ : in STD_LOGIC;
    \phi_mul14_fu_86_reg[3]_1\ : in STD_LOGIC;
    \phi_mul14_fu_86_reg[4]\ : in STD_LOGIC;
    \phi_mul14_fu_86_reg[5]\ : in STD_LOGIC;
    \phi_mul14_fu_86_reg[6]\ : in STD_LOGIC;
    \phi_mul14_fu_86_reg[7]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_done_reg1 : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg : in STD_LOGIC;
    ap_done_cache : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_3 : entity is "conv2d_flow_control_loop_pipe_sequential_init";
end cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_3;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_3 is
  signal \ap_CS_fsm[2]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_3_n_0\ : STD_LOGIC;
  signal ap_done_cache_0 : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_0\ : STD_LOGIC;
  signal ap_done_reg1_0 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_0\ : STD_LOGIC;
  signal \phi_mul14_fu_86[7]_i_2_n_0\ : STD_LOGIC;
  signal \rem_fu_90[3]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \phi_mul14_fu_86[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \phi_mul14_fu_86[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \phi_mul14_fu_86[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \phi_mul14_fu_86[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \phi_urem16_fu_82[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rem_fu_90[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rem_fu_90[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rem_fu_90[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rem_fu_90[3]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \trunc_ln4_reg_475[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \trunc_ln83_reg_479[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \trunc_ln83_reg_479[1]_i_2\ : label is "soft_lutpair24";
begin
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F400F4FF"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int_reg_0,
      I2 => \ap_CS_fsm[2]_i_3_n_0\,
      I3 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I4 => ap_done_cache_0,
      O => \state_reg[0]\
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7F7F7"
    )
        port map (
      I0 => rem_fu_90(0),
      I1 => rem_fu_90(3),
      I2 => rem_fu_90(1),
      I3 => ap_loop_init_int,
      I4 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I5 => rem_fu_90(2),
      O => \ap_CS_fsm[2]_i_3_n_0\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EEE0E000000000"
    )
        port map (
      I0 => ap_done_reg1_0,
      I1 => \ap_CS_fsm[3]_i_3_n_0\,
      I2 => ap_done_reg1,
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I4 => ap_done_cache,
      I5 => \ap_CS_fsm_reg[3]\(1),
      O => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg(0)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => rem_fu_90(2),
      I1 => \rem_fu_90[3]_i_3_n_0\,
      I2 => rem_fu_90(1),
      I3 => rem_fu_90(3),
      I4 => rem_fu_90(0),
      I5 => \phi_mul14_fu_86_reg[1]\,
      O => ap_done_reg1_0
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_done_cache_0,
      I1 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      O => \ap_CS_fsm[3]_i_3_n_0\
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ap_done_reg1_0,
      I1 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I2 => ap_done_cache_0,
      O => \ap_done_cache_i_1__0_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_0\,
      Q => ap_done_cache_0,
      R => ap_rst_n_inv
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA00"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I1 => Q(0),
      I2 => ap_loop_init_int_reg_0,
      I3 => ap_rst_n,
      I4 => ap_done_reg1_0,
      O => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20AAFFFF"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => Q(0),
      I2 => ap_loop_init_int_reg_0,
      I3 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I4 => ap_rst_n,
      I5 => ap_done_reg1_0,
      O => \ap_loop_init_int_i_1__0_n_0\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_0\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(0),
      I1 => ap_done_reg1_0,
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      O => \ap_CS_fsm_reg[1]\
    );
\phi_mul14_fu_86[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I2 => \phi_mul14_fu_86_reg[3]_0\,
      O => add_ln81_fu_248_p2(0)
    );
\phi_mul14_fu_86[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAD5"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[3]_0\,
      I1 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => \phi_mul14_fu_86_reg[3]\,
      O => add_ln81_fu_248_p2(1)
    );
\phi_mul14_fu_86[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001E1E1E"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[3]\,
      I1 => \phi_mul14_fu_86_reg[3]_0\,
      I2 => \phi_mul14_fu_86_reg[3]_1\,
      I3 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I4 => ap_loop_init_int,
      O => add_ln81_fu_248_p2(2)
    );
\phi_mul14_fu_86[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAF999F555F555"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[4]\,
      I1 => \phi_mul14_fu_86_reg[3]_0\,
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \phi_mul14_fu_86_reg[3]\,
      I5 => \phi_mul14_fu_86_reg[3]_1\,
      O => add_ln81_fu_248_p2(3)
    );
\phi_mul14_fu_86[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000011150000EEEA"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[4]\,
      I1 => \phi_mul14_fu_86_reg[3]_1\,
      I2 => \phi_mul14_fu_86_reg[3]\,
      I3 => \phi_mul14_fu_86_reg[3]_0\,
      I4 => \rem_fu_90[3]_i_3_n_0\,
      I5 => \phi_mul14_fu_86_reg[5]\,
      O => add_ln81_fu_248_p2(4)
    );
\phi_mul14_fu_86[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06660AAA"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[6]\,
      I1 => \phi_mul14_fu_86_reg[5]\,
      I2 => ap_loop_init_int,
      I3 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I4 => \phi_mul14_fu_86[7]_i_2_n_0\,
      O => add_ln81_fu_248_p2(5)
    );
\phi_mul14_fu_86[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06660AAA0AAA0AAA"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[7]_0\,
      I1 => \phi_mul14_fu_86[7]_i_2_n_0\,
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \phi_mul14_fu_86_reg[5]\,
      I5 => \phi_mul14_fu_86_reg[6]\,
      O => add_ln81_fu_248_p2(6)
    );
\phi_mul14_fu_86[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFE0FFE0FFE0"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[3]_0\,
      I1 => \phi_mul14_fu_86_reg[3]\,
      I2 => \phi_mul14_fu_86_reg[3]_1\,
      I3 => \phi_mul14_fu_86_reg[4]\,
      I4 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I5 => ap_loop_init_int,
      O => \phi_mul14_fu_86[7]_i_2_n_0\
    );
\phi_urem16_fu_82[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F555F555F555F111"
    )
        port map (
      I0 => phi_urem16_fu_82(0),
      I1 => phi_urem16_fu_82(1),
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => phi_urem16_fu_82(2),
      I5 => phi_urem16_fu_82(3),
      O => select_ln73_fu_289_p3(0)
    );
\phi_urem16_fu_82[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0666066606660222"
    )
        port map (
      I0 => phi_urem16_fu_82(0),
      I1 => phi_urem16_fu_82(1),
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => phi_urem16_fu_82(2),
      I5 => phi_urem16_fu_82(3),
      O => select_ln73_fu_289_p3(1)
    );
\phi_urem16_fu_82[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07770888"
    )
        port map (
      I0 => phi_urem16_fu_82(1),
      I1 => phi_urem16_fu_82(0),
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => phi_urem16_fu_82(2),
      O => select_ln73_fu_289_p3(2)
    );
\phi_urem16_fu_82[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F7F00808080"
    )
        port map (
      I0 => phi_urem16_fu_82(0),
      I1 => phi_urem16_fu_82(1),
      I2 => phi_urem16_fu_82(2),
      I3 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => phi_urem16_fu_82(3),
      O => select_ln73_fu_289_p3(3)
    );
\rem_fu_90[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => rem_fu_90(0),
      O => i_fu_239_p2(0)
    );
\rem_fu_90[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"152A"
    )
        port map (
      I0 => rem_fu_90(0),
      I1 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => rem_fu_90(1),
      O => i_fu_239_p2(1)
    );
\rem_fu_90[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06660AAA"
    )
        port map (
      I0 => rem_fu_90(2),
      I1 => rem_fu_90(0),
      I2 => ap_loop_init_int,
      I3 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I4 => rem_fu_90(1),
      O => i_fu_239_p2(2)
    );
\rem_fu_90[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFFFFF"
    )
        port map (
      I0 => rem_fu_90(2),
      I1 => \rem_fu_90[3]_i_3_n_0\,
      I2 => rem_fu_90(1),
      I3 => rem_fu_90(3),
      I4 => rem_fu_90(0),
      I5 => \phi_mul14_fu_86_reg[1]\,
      O => phi_mul14_fu_86(0)
    );
\rem_fu_90[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06660AAA0AAA0AAA"
    )
        port map (
      I0 => rem_fu_90(3),
      I1 => rem_fu_90(1),
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => rem_fu_90(0),
      I5 => rem_fu_90(2),
      O => i_fu_239_p2(3)
    );
\rem_fu_90[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I1 => ap_loop_init_int,
      O => \rem_fu_90[3]_i_3_n_0\
    );
\trunc_ln4_reg_475[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[6]\,
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      O => \phi_mul14_fu_86_reg[7]\(0)
    );
\trunc_ln4_reg_475[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \phi_mul14_fu_86_reg[7]_0\,
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      O => \phi_mul14_fu_86_reg[7]\(1)
    );
\trunc_ln83_reg_479[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => phi_urem16_fu_82(0),
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      O => D(0)
    );
\trunc_ln83_reg_479[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => phi_urem16_fu_82(1),
      I1 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      I2 => ap_loop_init_int,
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_4 is
  port (
    ap_done_cache : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_reg1 : out STD_LOGIC;
    add_ln66_fu_464_p2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_fu_455_p2 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    select_ln47_fu_509_p3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \phi_urem_fu_118_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \phi_mul_fu_122_reg[10]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg : out STD_LOGIC;
    \rem_fu_126_reg[2]\ : out STD_LOGIC;
    \rem_fu_126_reg[0]\ : out STD_LOGIC;
    \phi_mul_fu_122_reg[3]\ : out STD_LOGIC;
    \phi_urem_fu_118_reg[1]\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg : in STD_LOGIC;
    \rem_fu_126_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    rem_fu_126 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ap_CS_fsm_reg[2]_1\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[6]\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[6]_0\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[6]_1\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[6]_2\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[6]_3\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[10]_0\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[10]_1\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[10]_2\ : in STD_LOGIC;
    \phi_mul_fu_122_reg[10]_3\ : in STD_LOGIC;
    phi_urem_fu_118 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_4 : entity is "conv2d_flow_control_loop_pipe_sequential_init";
end cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_4;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_4 is
  signal \ap_CS_fsm[3]_i_5_n_0\ : STD_LOGIC;
  signal \^ap_done_cache\ : STD_LOGIC;
  signal ap_done_cache_i_1_n_0 : STD_LOGIC;
  signal \^ap_done_reg1\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_0 : STD_LOGIC;
  signal \phi_mul_fu_122[10]_i_2_n_0\ : STD_LOGIC;
  signal \phi_mul_fu_122[7]_i_2_n_0\ : STD_LOGIC;
  signal \rem_fu_126[4]_i_3_n_0\ : STD_LOGIC;
  signal \rem_fu_126[4]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_done_cache_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \phi_mul_fu_122[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phi_mul_fu_122[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phi_mul_fu_122[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \phi_mul_fu_122[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \phi_mul_fu_122[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \phi_mul_fu_122[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \phi_urem_fu_118[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \phi_urem_fu_118[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rem_fu_126[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rem_fu_126[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rem_fu_126[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rem_fu_126[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rem_fu_126[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rem_fu_126[4]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \trunc_ln1_reg_935[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \trunc_ln1_reg_935[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \trunc_ln1_reg_935[2]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \trunc_ln68_reg_939[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \trunc_ln68_reg_939[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \trunc_ln68_reg_939[2]_i_1\ : label is "soft_lutpair17";
begin
  ap_done_cache <= \^ap_done_cache\;
  ap_done_reg1 <= \^ap_done_reg1\;
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFBAAAAAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\(0),
      I1 => \^ap_done_cache\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I3 => \^ap_done_reg1\,
      I4 => \ap_CS_fsm_reg[2]_0\,
      I5 => \ap_CS_fsm_reg[2]\(1),
      O => D(0)
    );
\ap_CS_fsm[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000002A0000"
    )
        port map (
      I0 => rem_fu_126(4),
      I1 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I2 => ap_loop_init_int,
      I3 => rem_fu_126(1),
      I4 => \ap_CS_fsm[3]_i_5_n_0\,
      I5 => \ap_CS_fsm_reg[2]_1\,
      O => \^ap_done_reg1\
    );
\ap_CS_fsm[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F000000"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I1 => ap_loop_init_int,
      I2 => rem_fu_126(2),
      I3 => rem_fu_126(3),
      I4 => rem_fu_126(0),
      O => \ap_CS_fsm[3]_i_5_n_0\
    );
ap_done_cache_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2FFA200"
    )
        port map (
      I0 => \rem_fu_126[4]_i_3_n_0\,
      I1 => \rem_fu_126_reg[4]\,
      I2 => Q(0),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I4 => \^ap_done_cache\,
      O => ap_done_cache_i_1_n_0
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_0,
      Q => \^ap_done_cache\,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020AA20"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \rem_fu_126[4]_i_3_n_0\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I3 => \rem_fu_126_reg[4]\,
      I4 => Q(0),
      O => ap_rst_n_0
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3BBF3BBBBBBF3BB"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => ap_rst_n,
      I2 => \rem_fu_126[4]_i_3_n_0\,
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I4 => \rem_fu_126_reg[4]\,
      I5 => Q(0),
      O => ap_loop_init_int_i_1_n_0
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_0,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAFFAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\(0),
      I1 => Q(0),
      I2 => \rem_fu_126_reg[4]\,
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I4 => \rem_fu_126[4]_i_3_n_0\,
      O => \ap_CS_fsm_reg[1]\
    );
\phi_mul_fu_122[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1222222222222222"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[10]_0\,
      I1 => \rem_fu_126[4]_i_4_n_0\,
      I2 => \phi_mul_fu_122_reg[10]_1\,
      I3 => \phi_mul_fu_122[10]_i_2_n_0\,
      I4 => \phi_mul_fu_122_reg[10]_2\,
      I5 => \phi_mul_fu_122_reg[10]_3\,
      O => add_ln66_fu_464_p2(7)
    );
\phi_mul_fu_122[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEEE0000"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[6]_2\,
      I1 => \phi_mul_fu_122_reg[6]_1\,
      I2 => \phi_mul_fu_122_reg[6]_0\,
      I3 => \phi_mul_fu_122_reg[6]\,
      I4 => \phi_mul_fu_122_reg[6]_3\,
      I5 => \rem_fu_126[4]_i_4_n_0\,
      O => \phi_mul_fu_122[10]_i_2_n_0\
    );
\phi_mul_fu_122[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \phi_mul_fu_122_reg[6]\,
      O => add_ln66_fu_464_p2(0)
    );
\phi_mul_fu_122[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[6]_0\,
      I1 => ap_loop_init_int,
      I2 => \phi_mul_fu_122_reg[6]\,
      O => \phi_mul_fu_122_reg[3]\
    );
\phi_mul_fu_122[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8F7"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[6]\,
      I1 => \phi_mul_fu_122_reg[6]_0\,
      I2 => ap_loop_init_int,
      I3 => \phi_mul_fu_122_reg[6]_1\,
      O => add_ln66_fu_464_p2(1)
    );
\phi_mul_fu_122[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAFF95"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[6]_2\,
      I1 => \phi_mul_fu_122_reg[6]\,
      I2 => \phi_mul_fu_122_reg[6]_0\,
      I3 => ap_loop_init_int,
      I4 => \phi_mul_fu_122_reg[6]_1\,
      O => add_ln66_fu_464_p2(2)
    );
\phi_mul_fu_122[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000070000FFF8"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[6]\,
      I1 => \phi_mul_fu_122_reg[6]_0\,
      I2 => \phi_mul_fu_122_reg[6]_1\,
      I3 => \phi_mul_fu_122_reg[6]_2\,
      I4 => \rem_fu_126[4]_i_4_n_0\,
      I5 => \phi_mul_fu_122_reg[6]_3\,
      O => add_ln66_fu_464_p2(3)
    );
\phi_mul_fu_122[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005700A8"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[6]_3\,
      I1 => \phi_mul_fu_122[7]_i_2_n_0\,
      I2 => \phi_mul_fu_122_reg[6]_2\,
      I3 => ap_loop_init_int,
      I4 => \phi_mul_fu_122_reg[10]_2\,
      O => add_ln66_fu_464_p2(4)
    );
\phi_mul_fu_122[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F2A2A2A"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[6]_1\,
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I3 => \phi_mul_fu_122_reg[6]_0\,
      I4 => \phi_mul_fu_122_reg[6]\,
      O => \phi_mul_fu_122[7]_i_2_n_0\
    );
\phi_mul_fu_122[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B444"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \phi_mul_fu_122_reg[10]_1\,
      I2 => \phi_mul_fu_122[10]_i_2_n_0\,
      I3 => \phi_mul_fu_122_reg[10]_2\,
      O => add_ln66_fu_464_p2(5)
    );
\phi_mul_fu_122[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[10]_3\,
      I1 => \phi_mul_fu_122_reg[10]_2\,
      I2 => \phi_mul_fu_122[10]_i_2_n_0\,
      I3 => \phi_mul_fu_122_reg[10]_1\,
      I4 => ap_loop_init_int,
      O => add_ln66_fu_464_p2(6)
    );
\phi_urem_fu_118[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFAAAAFFFB"
    )
        port map (
      I0 => \rem_fu_126[4]_i_4_n_0\,
      I1 => phi_urem_fu_118(2),
      I2 => phi_urem_fu_118(4),
      I3 => phi_urem_fu_118(3),
      I4 => phi_urem_fu_118(0),
      I5 => phi_urem_fu_118(1),
      O => select_ln47_fu_509_p3(0)
    );
\phi_urem_fu_118[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => phi_urem_fu_118(1),
      I1 => phi_urem_fu_118(0),
      I2 => ap_loop_init_int,
      O => \phi_urem_fu_118_reg[1]\
    );
\phi_urem_fu_118[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F00FE00F00000"
    )
        port map (
      I0 => phi_urem_fu_118(4),
      I1 => phi_urem_fu_118(3),
      I2 => phi_urem_fu_118(0),
      I3 => \rem_fu_126[4]_i_4_n_0\,
      I4 => phi_urem_fu_118(1),
      I5 => phi_urem_fu_118(2),
      O => select_ln47_fu_509_p3(1)
    );
\phi_urem_fu_118[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13332000"
    )
        port map (
      I0 => phi_urem_fu_118(1),
      I1 => ap_loop_init_int,
      I2 => phi_urem_fu_118(0),
      I3 => phi_urem_fu_118(2),
      I4 => phi_urem_fu_118(3),
      O => select_ln47_fu_509_p3(2)
    );
\phi_urem_fu_118[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => phi_urem_fu_118(1),
      I1 => phi_urem_fu_118(0),
      I2 => phi_urem_fu_118(2),
      I3 => phi_urem_fu_118(3),
      I4 => \rem_fu_126[4]_i_4_n_0\,
      I5 => phi_urem_fu_118(4),
      O => select_ln47_fu_509_p3(3)
    );
\rem_fu_126[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => rem_fu_126(0),
      O => i_fu_455_p2(0)
    );
\rem_fu_126[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => rem_fu_126(0),
      I1 => ap_loop_init_int,
      I2 => rem_fu_126(1),
      O => \rem_fu_126_reg[0]\
    );
\rem_fu_126[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"060A"
    )
        port map (
      I0 => rem_fu_126(2),
      I1 => rem_fu_126(1),
      I2 => ap_loop_init_int,
      I3 => rem_fu_126(0),
      O => \rem_fu_126_reg[2]\
    );
\rem_fu_126[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"12222222"
    )
        port map (
      I0 => rem_fu_126(3),
      I1 => ap_loop_init_int,
      I2 => rem_fu_126(1),
      I3 => rem_fu_126(0),
      I4 => rem_fu_126(2),
      O => i_fu_455_p2(1)
    );
\rem_fu_126[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I1 => \rem_fu_126_reg[4]\,
      I2 => Q(0),
      I3 => \rem_fu_126[4]_i_3_n_0\,
      O => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg
    );
\rem_fu_126[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060A0A0A0A0A0A0A"
    )
        port map (
      I0 => rem_fu_126(4),
      I1 => rem_fu_126(3),
      I2 => \rem_fu_126[4]_i_4_n_0\,
      I3 => rem_fu_126(1),
      I4 => rem_fu_126(0),
      I5 => rem_fu_126(2),
      O => i_fu_455_p2(2)
    );
\rem_fu_126[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => rem_fu_126(0),
      I1 => rem_fu_126(3),
      I2 => rem_fu_126(2),
      I3 => rem_fu_126(1),
      I4 => \rem_fu_126[4]_i_4_n_0\,
      I5 => rem_fu_126(4),
      O => \rem_fu_126[4]_i_3_n_0\
    );
\rem_fu_126[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I1 => ap_loop_init_int,
      O => \rem_fu_126[4]_i_4_n_0\
    );
\trunc_ln1_reg_935[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[10]_1\,
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      O => \phi_mul_fu_122_reg[10]\(0)
    );
\trunc_ln1_reg_935[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[10]_3\,
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      O => \phi_mul_fu_122_reg[10]\(1)
    );
\trunc_ln1_reg_935[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \phi_mul_fu_122_reg[10]_0\,
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      O => \phi_mul_fu_122_reg[10]\(2)
    );
\trunc_ln68_reg_939[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => phi_urem_fu_118(0),
      I1 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      I2 => ap_loop_init_int,
      O => \phi_urem_fu_118_reg[2]\(0)
    );
\trunc_ln68_reg_939[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => phi_urem_fu_118(1),
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      O => \phi_urem_fu_118_reg[2]\(1)
    );
\trunc_ln68_reg_939[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => phi_urem_fu_118(2),
      I1 => ap_loop_init_int,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      O => \phi_urem_fu_118_reg[2]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_5 is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    select_ln49_fu_546_p3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \oc_s_fu_140_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    select_ln89_fu_561_p3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    add_ln89_fu_528_p2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    add_ln96_2_fu_653_p2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    \oc_s_fu_140_reg[0]\ : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg : in STD_LOGIC;
    oc_s_fu_140 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \or_s_fu_144_reg[1]\ : in STD_LOGIC;
    \or_s_fu_144_reg[1]_0\ : in STD_LOGIC;
    \or_s_fu_144_reg[1]_1\ : in STD_LOGIC;
    \or_s_fu_144_reg[1]_2\ : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter10_reg : in STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_5 : entity is "conv2d_flow_control_loop_pipe_sequential_init";
end cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_5;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_5 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__1_n_0\ : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__1_n_0\ : STD_LOGIC;
  signal \^ap_rst_n_0\ : STD_LOGIC;
  signal \^grp_conv2d_pipeline_conv_or_conv_oc2_fu_310_ap_ready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ap_enable_reg_pp0_iter1_i_1__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_148[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_148[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_148[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \indvar_flatten_fu_148[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \oc_s_fu_140[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \oc_s_fu_140[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \or_s_fu_144[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \select_ln49_reg_1599[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \select_ln49_reg_1599[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \select_ln89_reg_1613[0]_i_1\ : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
  ap_rst_n_0 <= \^ap_rst_n_0\;
  grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready <= \^grp_conv2d_pipeline_conv_or_conv_oc2_fu_310_ap_ready\;
ack_in_t_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^ap_rst_n_0\
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABBAAAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[5]\(0),
      I1 => ap_loop_exit_ready_pp0_iter10_reg,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I3 => ap_done_cache,
      I4 => \ap_CS_fsm_reg[5]\(1),
      O => \ap_CS_fsm_reg[4]\(0)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \ap_CS_fsm_reg[5]\(1),
      I1 => ap_done_cache,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I3 => ap_loop_exit_ready_pp0_iter10_reg,
      O => \ap_CS_fsm_reg[4]\(1)
    );
\ap_done_cache_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I1 => ap_loop_exit_ready_pp0_iter10_reg,
      I2 => ap_done_cache,
      O => \ap_done_cache_i_1__1_n_0\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__1_n_0\,
      Q => ap_done_cache,
      R => \^ap_rst_n_0\
    );
\ap_enable_reg_pp0_iter1_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^e\(0),
      I1 => ap_rst_n,
      O => ap_rst_n_1
    );
ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \or_s_fu_144_reg[1]\,
      I1 => \or_s_fu_144_reg[1]_0\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \or_s_fu_144_reg[1]_1\,
      I5 => \or_s_fu_144_reg[1]_2\,
      O => \^grp_conv2d_pipeline_conv_or_conv_oc2_fu_310_ap_ready\
    );
\ap_loop_init_int_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter10_reg,
      I1 => ap_rst_n,
      I2 => ap_loop_init_int,
      I3 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      O => \ap_loop_init_int_i_1__1_n_0\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__1_n_0\,
      Q => ap_loop_init_int,
      R => '0'
    );
grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[5]\(0),
      I1 => \^grp_conv2d_pipeline_conv_or_conv_oc2_fu_310_ap_ready\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      O => \ap_CS_fsm_reg[3]\
    );
\indvar_flatten_fu_148[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \or_s_fu_144_reg[1]_2\,
      O => add_ln89_fu_528_p2(0)
    );
\indvar_flatten_fu_148[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \or_s_fu_144_reg[1]_2\,
      I1 => \or_s_fu_144_reg[1]_1\,
      I2 => ap_loop_init_int,
      O => add_ln89_fu_528_p2(1)
    );
\indvar_flatten_fu_148[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1222"
    )
        port map (
      I0 => \or_s_fu_144_reg[1]\,
      I1 => ap_loop_init_int,
      I2 => \or_s_fu_144_reg[1]_2\,
      I3 => \or_s_fu_144_reg[1]_1\,
      O => add_ln89_fu_528_p2(2)
    );
\indvar_flatten_fu_148[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0B0F0F0F0F0"
    )
        port map (
      I0 => \or_s_fu_144_reg[1]\,
      I1 => \or_s_fu_144_reg[1]_0\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => \or_s_fu_144_reg[1]_1\,
      I5 => \or_s_fu_144_reg[1]_2\,
      O => \^e\(0)
    );
\indvar_flatten_fu_148[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006A00AA"
    )
        port map (
      I0 => \or_s_fu_144_reg[1]_0\,
      I1 => \or_s_fu_144_reg[1]_1\,
      I2 => \or_s_fu_144_reg[1]_2\,
      I3 => ap_loop_init_int,
      I4 => \or_s_fu_144_reg[1]\,
      O => add_ln89_fu_528_p2(3)
    );
\oc_s_fu_140[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => oc_s_fu_140(1),
      I1 => oc_s_fu_140(0),
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I3 => ap_loop_init_int,
      O => \oc_s_fu_140_reg[1]\(0)
    );
\oc_s_fu_140[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => oc_s_fu_140(1),
      I1 => oc_s_fu_140(0),
      I2 => ap_loop_init_int,
      O => add_ln96_2_fu_653_p2(0)
    );
\or_s_fu_144[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1222"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init_int,
      I2 => oc_s_fu_140(1),
      I3 => oc_s_fu_140(0),
      O => D(0)
    );
\or_s_fu_144[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A6A6A00AAAAAA"
    )
        port map (
      I0 => Q(1),
      I1 => oc_s_fu_140(1),
      I2 => oc_s_fu_140(0),
      I3 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I4 => ap_loop_init_int,
      I5 => Q(0),
      O => select_ln89_fu_561_p3(1)
    );
\select_ln49_reg_1599[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I2 => oc_s_fu_140(0),
      I3 => oc_s_fu_140(1),
      O => select_ln49_fu_546_p3(0)
    );
\select_ln49_reg_1599[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => oc_s_fu_140(0),
      I1 => oc_s_fu_140(1),
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I3 => ap_loop_init_int,
      O => \oc_s_fu_140_reg[0]\
    );
\select_ln89_reg_1613[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07770888"
    )
        port map (
      I0 => oc_s_fu_140(0),
      I1 => oc_s_fu_140(1),
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      I3 => ap_loop_init_int,
      I4 => Q(0),
      O => select_ln89_fu_561_p3(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(15),
      C(46) => P(15),
      C(45) => P(15),
      C(44) => P(15),
      C(43) => P(15),
      C(42) => P(15),
      C(41) => P(15),
      C(40) => P(15),
      C(39) => P(15),
      C(38) => P(15),
      C(37) => P(15),
      C(36) => P(15),
      C(35) => P(15),
      C(34) => P(15),
      C(33) => P(15),
      C(32) => P(15),
      C(31) => P(15),
      C(30) => P(15),
      C(29) => P(15),
      C(28) => P(15),
      C(27) => P(15),
      C(26) => P(15),
      C(25) => P(15),
      C(24) => P(15),
      C(23 downto 8) => P(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => D(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_14 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_14 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_14;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_14 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => DSP_ALU_INST_0(15),
      C(46) => DSP_ALU_INST_0(15),
      C(45) => DSP_ALU_INST_0(15),
      C(44) => DSP_ALU_INST_0(15),
      C(43) => DSP_ALU_INST_0(15),
      C(42) => DSP_ALU_INST_0(15),
      C(41) => DSP_ALU_INST_0(15),
      C(40) => DSP_ALU_INST_0(15),
      C(39) => DSP_ALU_INST_0(15),
      C(38) => DSP_ALU_INST_0(15),
      C(37) => DSP_ALU_INST_0(15),
      C(36) => DSP_ALU_INST_0(15),
      C(35) => DSP_ALU_INST_0(15),
      C(34) => DSP_ALU_INST_0(15),
      C(33) => DSP_ALU_INST_0(15),
      C(32) => DSP_ALU_INST_0(15),
      C(31) => DSP_ALU_INST_0(15),
      C(30) => DSP_ALU_INST_0(15),
      C(29) => DSP_ALU_INST_0(15),
      C(28) => DSP_ALU_INST_0(15),
      C(27) => DSP_ALU_INST_0(15),
      C(26) => DSP_ALU_INST_0(15),
      C(25) => DSP_ALU_INST_0(15),
      C(24) => DSP_ALU_INST_0(15),
      C(23 downto 8) => DSP_ALU_INST_0(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_15 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_15 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_15;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_15 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => DSP_ALU_INST_0(15),
      C(46) => DSP_ALU_INST_0(15),
      C(45) => DSP_ALU_INST_0(15),
      C(44) => DSP_ALU_INST_0(15),
      C(43) => DSP_ALU_INST_0(15),
      C(42) => DSP_ALU_INST_0(15),
      C(41) => DSP_ALU_INST_0(15),
      C(40) => DSP_ALU_INST_0(15),
      C(39) => DSP_ALU_INST_0(15),
      C(38) => DSP_ALU_INST_0(15),
      C(37) => DSP_ALU_INST_0(15),
      C(36) => DSP_ALU_INST_0(15),
      C(35) => DSP_ALU_INST_0(15),
      C(34) => DSP_ALU_INST_0(15),
      C(33) => DSP_ALU_INST_0(15),
      C(32) => DSP_ALU_INST_0(15),
      C(31) => DSP_ALU_INST_0(15),
      C(30) => DSP_ALU_INST_0(15),
      C(29) => DSP_ALU_INST_0(15),
      C(28) => DSP_ALU_INST_0(15),
      C(27) => DSP_ALU_INST_0(15),
      C(26) => DSP_ALU_INST_0(15),
      C(25) => DSP_ALU_INST_0(15),
      C(24) => DSP_ALU_INST_0(15),
      C(23 downto 8) => DSP_ALU_INST_0(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_16 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_16 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_16;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_16 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => Q(15),
      A(28) => Q(15),
      A(27) => Q(15),
      A(26) => Q(15),
      A(25) => Q(15),
      A(24) => Q(15),
      A(23) => Q(15),
      A(22) => Q(15),
      A(21) => Q(15),
      A(20) => Q(15),
      A(19) => Q(15),
      A(18) => Q(15),
      A(17) => Q(15),
      A(16) => Q(15),
      A(15 downto 0) => Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => DSP_ALU_INST_0(15),
      C(46) => DSP_ALU_INST_0(15),
      C(45) => DSP_ALU_INST_0(15),
      C(44) => DSP_ALU_INST_0(15),
      C(43) => DSP_ALU_INST_0(15),
      C(42) => DSP_ALU_INST_0(15),
      C(41) => DSP_ALU_INST_0(15),
      C(40) => DSP_ALU_INST_0(15),
      C(39) => DSP_ALU_INST_0(15),
      C(38) => DSP_ALU_INST_0(15),
      C(37) => DSP_ALU_INST_0(15),
      C(36) => DSP_ALU_INST_0(15),
      C(35) => DSP_ALU_INST_0(15),
      C(34) => DSP_ALU_INST_0(15),
      C(33) => DSP_ALU_INST_0(15),
      C(32) => DSP_ALU_INST_0(15),
      C(31) => DSP_ALU_INST_0(15),
      C(30) => DSP_ALU_INST_0(15),
      C(29) => DSP_ALU_INST_0(15),
      C(28) => DSP_ALU_INST_0(15),
      C(27) => DSP_ALU_INST_0(15),
      C(26) => DSP_ALU_INST_0(15),
      C(25) => DSP_ALU_INST_0(15),
      C(24) => DSP_ALU_INST_0(15),
      C(23 downto 8) => DSP_ALU_INST_0(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_17 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_17 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_17;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_17 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => Q(15),
      A(28) => Q(15),
      A(27) => Q(15),
      A(26) => Q(15),
      A(25) => Q(15),
      A(24) => Q(15),
      A(23) => Q(15),
      A(22) => Q(15),
      A(21) => Q(15),
      A(20) => Q(15),
      A(19) => Q(15),
      A(18) => Q(15),
      A(17) => Q(15),
      A(16) => Q(15),
      A(15 downto 0) => Q(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => DSP_ALU_INST_0(15),
      C(46) => DSP_ALU_INST_0(15),
      C(45) => DSP_ALU_INST_0(15),
      C(44) => DSP_ALU_INST_0(15),
      C(43) => DSP_ALU_INST_0(15),
      C(42) => DSP_ALU_INST_0(15),
      C(41) => DSP_ALU_INST_0(15),
      C(40) => DSP_ALU_INST_0(15),
      C(39) => DSP_ALU_INST_0(15),
      C(38) => DSP_ALU_INST_0(15),
      C(37) => DSP_ALU_INST_0(15),
      C(36) => DSP_ALU_INST_0(15),
      C(35) => DSP_ALU_INST_0(15),
      C(34) => DSP_ALU_INST_0(15),
      C(33) => DSP_ALU_INST_0(15),
      C(32) => DSP_ALU_INST_0(15),
      C(31) => DSP_ALU_INST_0(15),
      C(30) => DSP_ALU_INST_0(15),
      C(29) => DSP_ALU_INST_0(15),
      C(28) => DSP_ALU_INST_0(15),
      C(27) => DSP_ALU_INST_0(15),
      C(26) => DSP_ALU_INST_0(15),
      C(25) => DSP_ALU_INST_0(15),
      C(24) => DSP_ALU_INST_0(15),
      C(23 downto 8) => DSP_ALU_INST_0(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_18 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_18 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_18;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_18 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => DSP_ALU_INST_0(15),
      C(46) => DSP_ALU_INST_0(15),
      C(45) => DSP_ALU_INST_0(15),
      C(44) => DSP_ALU_INST_0(15),
      C(43) => DSP_ALU_INST_0(15),
      C(42) => DSP_ALU_INST_0(15),
      C(41) => DSP_ALU_INST_0(15),
      C(40) => DSP_ALU_INST_0(15),
      C(39) => DSP_ALU_INST_0(15),
      C(38) => DSP_ALU_INST_0(15),
      C(37) => DSP_ALU_INST_0(15),
      C(36) => DSP_ALU_INST_0(15),
      C(35) => DSP_ALU_INST_0(15),
      C(34) => DSP_ALU_INST_0(15),
      C(33) => DSP_ALU_INST_0(15),
      C(32) => DSP_ALU_INST_0(15),
      C(31) => DSP_ALU_INST_0(15),
      C(30) => DSP_ALU_INST_0(15),
      C(29) => DSP_ALU_INST_0(15),
      C(28) => DSP_ALU_INST_0(15),
      C(27) => DSP_ALU_INST_0(15),
      C(26) => DSP_ALU_INST_0(15),
      C(25) => DSP_ALU_INST_0(15),
      C(24) => DSP_ALU_INST_0(15),
      C(23 downto 8) => DSP_ALU_INST_0(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_19 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_19 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_19;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_19 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => DSP_ALU_INST_0(15),
      A(28) => DSP_ALU_INST_0(15),
      A(27) => DSP_ALU_INST_0(15),
      A(26) => DSP_ALU_INST_0(15),
      A(25) => DSP_ALU_INST_0(15),
      A(24) => DSP_ALU_INST_0(15),
      A(23) => DSP_ALU_INST_0(15),
      A(22) => DSP_ALU_INST_0(15),
      A(21) => DSP_ALU_INST_0(15),
      A(20) => DSP_ALU_INST_0(15),
      A(19) => DSP_ALU_INST_0(15),
      A(18) => DSP_ALU_INST_0(15),
      A(17) => DSP_ALU_INST_0(15),
      A(16) => DSP_ALU_INST_0(15),
      A(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => DSP_ALU_INST_1(15),
      C(46) => DSP_ALU_INST_1(15),
      C(45) => DSP_ALU_INST_1(15),
      C(44) => DSP_ALU_INST_1(15),
      C(43) => DSP_ALU_INST_1(15),
      C(42) => DSP_ALU_INST_1(15),
      C(41) => DSP_ALU_INST_1(15),
      C(40) => DSP_ALU_INST_1(15),
      C(39) => DSP_ALU_INST_1(15),
      C(38) => DSP_ALU_INST_1(15),
      C(37) => DSP_ALU_INST_1(15),
      C(36) => DSP_ALU_INST_1(15),
      C(35) => DSP_ALU_INST_1(15),
      C(34) => DSP_ALU_INST_1(15),
      C(33) => DSP_ALU_INST_1(15),
      C(32) => DSP_ALU_INST_1(15),
      C(31) => DSP_ALU_INST_1(15),
      C(30) => DSP_ALU_INST_1(15),
      C(29) => DSP_ALU_INST_1(15),
      C(28) => DSP_ALU_INST_1(15),
      C(27) => DSP_ALU_INST_1(15),
      C(26) => DSP_ALU_INST_1(15),
      C(25) => DSP_ALU_INST_1(15),
      C(24) => DSP_ALU_INST_1(15),
      C(23 downto 8) => DSP_ALU_INST_1(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_20 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_20 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_20;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_20 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => DSP_ALU_INST_0(15),
      A(28) => DSP_ALU_INST_0(15),
      A(27) => DSP_ALU_INST_0(15),
      A(26) => DSP_ALU_INST_0(15),
      A(25) => DSP_ALU_INST_0(15),
      A(24) => DSP_ALU_INST_0(15),
      A(23) => DSP_ALU_INST_0(15),
      A(22) => DSP_ALU_INST_0(15),
      A(21) => DSP_ALU_INST_0(15),
      A(20) => DSP_ALU_INST_0(15),
      A(19) => DSP_ALU_INST_0(15),
      A(18) => DSP_ALU_INST_0(15),
      A(17) => DSP_ALU_INST_0(15),
      A(16) => DSP_ALU_INST_0(15),
      A(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => DSP_ALU_INST_1(15),
      C(46) => DSP_ALU_INST_1(15),
      C(45) => DSP_ALU_INST_1(15),
      C(44) => DSP_ALU_INST_1(15),
      C(43) => DSP_ALU_INST_1(15),
      C(42) => DSP_ALU_INST_1(15),
      C(41) => DSP_ALU_INST_1(15),
      C(40) => DSP_ALU_INST_1(15),
      C(39) => DSP_ALU_INST_1(15),
      C(38) => DSP_ALU_INST_1(15),
      C(37) => DSP_ALU_INST_1(15),
      C(36) => DSP_ALU_INST_1(15),
      C(35) => DSP_ALU_INST_1(15),
      C(34) => DSP_ALU_INST_1(15),
      C(33) => DSP_ALU_INST_1(15),
      C(32) => DSP_ALU_INST_1(15),
      C(31) => DSP_ALU_INST_1(15),
      C(30) => DSP_ALU_INST_1(15),
      C(29) => DSP_ALU_INST_1(15),
      C(28) => DSP_ALU_INST_1(15),
      C(27) => DSP_ALU_INST_1(15),
      C(26) => DSP_ALU_INST_1(15),
      C(25) => DSP_ALU_INST_1(15),
      C(24) => DSP_ALU_INST_1(15),
      C(23 downto 8) => DSP_ALU_INST_1(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_21 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CEB1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bias : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_21 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_21;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_21 is
  signal p_reg_reg_n_100 : STD_LOGIC;
  signal p_reg_reg_n_101 : STD_LOGIC;
  signal p_reg_reg_n_102 : STD_LOGIC;
  signal p_reg_reg_n_103 : STD_LOGIC;
  signal p_reg_reg_n_104 : STD_LOGIC;
  signal p_reg_reg_n_105 : STD_LOGIC;
  signal p_reg_reg_n_98 : STD_LOGIC;
  signal p_reg_reg_n_99 : STD_LOGIC;
  signal NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_reg_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_reg_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_reg_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_reg_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 24 );
  signal NLW_p_reg_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_p_reg_reg_XOROUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of p_reg_reg : label is "YES";
begin
p_reg_reg: unisim.vcomponents.DSP48E2
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AMULTSEL => "A",
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      AUTORESET_PRIORITY => "RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BMULTSEL => "B",
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREADDINSEL => "A",
      PREG => 1,
      RND => X"000000000000",
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      USE_WIDEXOR => "FALSE",
      XORSIMD => "XOR24_48_96"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_reg_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => DSP_ALU_INST(15),
      B(16) => DSP_ALU_INST(15),
      B(15 downto 0) => DSP_ALU_INST(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_reg_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => bias(15),
      C(46) => bias(15),
      C(45) => bias(15),
      C(44) => bias(15),
      C(43) => bias(15),
      C(42) => bias(15),
      C(41) => bias(15),
      C(40) => bias(15),
      C(39) => bias(15),
      C(38) => bias(15),
      C(37) => bias(15),
      C(36) => bias(15),
      C(35) => bias(15),
      C(34) => bias(15),
      C(33) => bias(15),
      C(32) => bias(15),
      C(31) => bias(15),
      C(30) => bias(15),
      C(29) => bias(15),
      C(28) => bias(15),
      C(27) => bias(15),
      C(26) => bias(15),
      C(25) => bias(15),
      C(24) => bias(15),
      C(23 downto 8) => bias(15 downto 0),
      C(7 downto 0) => B"00000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_reg_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => CEB1,
      CEB2 => '1',
      CEC => Q(0),
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => ap_clk,
      D(26 downto 0) => B"000000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(8 downto 0) => B"000110101",
      OVERFLOW => NLW_p_reg_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 24) => NLW_p_reg_reg_P_UNCONNECTED(47 downto 24),
      P(23 downto 8) => P(15 downto 0),
      P(7) => p_reg_reg_n_98,
      P(6) => p_reg_reg_n_99,
      P(5) => p_reg_reg_n_100,
      P(4) => p_reg_reg_n_101,
      P(3) => p_reg_reg_n_102,
      P(2) => p_reg_reg_n_103,
      P(1) => p_reg_reg_n_104,
      P(0) => p_reg_reg_n_105,
      PATTERNBDETECT => NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_reg_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_reg_reg_UNDERFLOW_UNCONNECTED,
      XOROUT(7 downto 0) => NLW_p_reg_reg_XOROUT_UNCONNECTED(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_regslice_both is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_0\ : out STD_LOGIC;
    \data_p1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg : in STD_LOGIC;
    ack_in_t_reg_1 : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_regslice_both : entity is "conv2d_regslice_both";
end cnn_pipeline_conv2d_0_1_conv2d_regslice_both;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_regslice_both is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ack_in_t_i_2__0_n_0\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair37";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_2__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \trunc_ln1_reg_935[2]_i_1\ : label is "soft_lutpair38";
begin
  Q(0) <= \^q\(0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF80FFFFFF80FF"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\(0),
      I1 => \^q\(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => in_stream_TVALID,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDC0FF00"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => in_stream_TVALID,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
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
\ack_in_t_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0CF0"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => ack_in_t_reg_1,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \^ack_in_t_reg_0\,
      O => \ack_in_t_i_2__0_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_2__0_n_0\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      O => \state_reg[0]_0\
    );
\data_p1[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(10),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(11),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(12),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(13),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(14),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B808080808080808"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \^q\(0),
      I5 => \FSM_sequential_state_reg[0]_0\(0),
      O => load_p1
    );
\data_p1[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(15),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(15),
      O => p_0_in(15)
    );
\data_p1[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(1),
      O => p_0_in(1)
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(2),
      O => p_0_in(2)
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(4),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(5),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(6),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(7),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(8),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(9),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TDATA(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
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
      D => p_0_in(10),
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
      D => p_0_in(11),
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
      D => p_0_in(12),
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
      D => p_0_in(13),
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
      D => p_0_in(14),
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
      D => p_0_in(15),
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
      D => p_0_in(1),
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
      D => p_0_in(2),
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
      D => p_0_in(3),
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
      D => p_0_in(4),
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
      D => p_0_in(5),
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
      D => p_0_in(6),
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
      D => p_0_in(7),
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
      D => p_0_in(8),
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
      D => p_0_in(9),
      Q => \data_p1_reg[15]_0\(9),
      R => '0'
    );
\data_p2[15]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => in_stream_TVALID,
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
      Q => data_p2(0),
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
      Q => data_p2(10),
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
      Q => data_p2(11),
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
      Q => data_p2(12),
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
      Q => data_p2(13),
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
      Q => data_p2(14),
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
      Q => data_p2(15),
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
      Q => data_p2(1),
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
      Q => data_p2(2),
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
      Q => data_p2(3),
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
      Q => data_p2(4),
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
      Q => data_p2(5),
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
      Q => data_p2(6),
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
      Q => data_p2(7),
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
      Q => data_p2(8),
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
      Q => data_p2(9),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FF0000000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \FSM_sequential_state_reg[0]_0\(0),
      I2 => state(1),
      I3 => in_stream_TVALID,
      I4 => \^ack_in_t_reg_0\,
      I5 => \^q\(0),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8FFFF"
    )
        port map (
      I0 => \FSM_sequential_state_reg[0]_0\(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => state(1),
      I3 => in_stream_TVALID,
      I4 => \^q\(0),
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
\trunc_ln1_reg_935[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_enable_reg_pp0_iter1,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_regslice_both_0 is
  port (
    out_stream_TREADY_int_regslice : out STD_LOGIC;
    out_stream_TVALID : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \out_stream_TSTRB_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ack_in_t_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_ready : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_1\ : out STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    out_stream_TREADY : in STD_LOGIC;
    \data_p2_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_p2_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_p1_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    load_p2 : in STD_LOGIC;
    \data_p1_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    \data_p2_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_regslice_both_0 : entity is "conv2d_regslice_both";
end cnn_pipeline_conv2d_0_1_conv2d_regslice_both_0;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_regslice_both_0 is
  signal \ack_in_t_i_1__1_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tready_int_regslice\ : STD_LOGIC;
  signal \^out_stream_tvalid\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of ap_ready_INST_0 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_p2[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_p2[0]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_p2[1]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_p2[1]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \p_0_reg_377[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rem_fu_100[3]_i_3\ : label is "soft_lutpair39";
begin
  out_stream_TREADY_int_regslice <= \^out_stream_tready_int_regslice\;
  out_stream_TVALID <= \^out_stream_tvalid\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFBFBFBFBFBFB"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(1),
      I5 => \^out_stream_tready_int_regslice\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080FF80FF00FF00"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(1),
      I2 => \^out_stream_tready_int_regslice\,
      I3 => \state__0\(1),
      I4 => out_stream_TREADY,
      I5 => \state__0\(0),
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
\ack_in_t_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AFFAAFFFFAAAA"
    )
        port map (
      I0 => \^out_stream_tready_int_regslice\,
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => out_stream_TREADY,
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \ack_in_t_i_1__1_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_0\,
      Q => \^out_stream_tready_int_regslice\,
      R => ap_rst_n_inv
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F00FFFF8F008F00"
    )
        port map (
      I0 => \state__0\(0),
      I1 => out_stream_TREADY,
      I2 => \state__0\(1),
      I3 => Q(2),
      I4 => ap_start,
      I5 => Q(0),
      O => \FSM_sequential_state_reg[0]_0\(0)
    );
\ap_CS_fsm[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \state__0\(0),
      I1 => out_stream_TREADY,
      I2 => \state__0\(1),
      O => \FSM_sequential_state_reg[0]_1\
    );
ap_ready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => Q(2),
      I1 => \state__0\(1),
      I2 => out_stream_TREADY,
      I3 => \state__0\(0),
      O => ap_ready
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(0),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(10),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(10),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(11),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(11),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(12),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(12),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(13),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(13),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(14),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(14),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2222222C0000000"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => \^out_stream_tready_int_regslice\,
      I3 => Q(1),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \state__0\(1),
      O => load_p1
    );
\data_p1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(15),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(15),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(15),
      O => p_0_in(15)
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(1),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(1),
      O => p_0_in(1)
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(2),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(2),
      O => p_0_in(2)
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(3),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(4),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(4),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(5),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(5),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(6),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(6),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(7),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(7),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(8),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(8),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => data_p2(9),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[15]_0\(9),
      I4 => load_p2,
      I5 => \data_p1_reg[15]_1\(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
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
      D => p_0_in(10),
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
      D => p_0_in(11),
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
      D => p_0_in(12),
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
      D => p_0_in(13),
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
      D => p_0_in(14),
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
      D => p_0_in(15),
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
      D => p_0_in(1),
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
      D => p_0_in(2),
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
      D => p_0_in(3),
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
      D => p_0_in(4),
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
      D => p_0_in(5),
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
      D => p_0_in(6),
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
      D => p_0_in(7),
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
      D => p_0_in(8),
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
      D => p_0_in(9),
      Q => out_stream_TDATA(9),
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \data_p2_reg[1]_0\(0),
      I1 => \^out_stream_tready_int_regslice\,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter1,
      O => D(0)
    );
\data_p2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \data_p2_reg[1]_1\(0),
      I1 => \^out_stream_tready_int_regslice\,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter1,
      O => \out_stream_TSTRB_reg_reg[1]\(0)
    );
\data_p2[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \data_p2_reg[1]_0\(1),
      I1 => \^out_stream_tready_int_regslice\,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter1,
      O => D(1)
    );
\data_p2[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \data_p2_reg[1]_1\(1),
      I1 => \^out_stream_tready_int_regslice\,
      I2 => Q(1),
      I3 => ap_enable_reg_pp0_iter1,
      O => \out_stream_TSTRB_reg_reg[1]\(1)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(10),
      Q => data_p2(10),
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(11),
      Q => data_p2(11),
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(12),
      Q => data_p2(12),
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(13),
      Q => data_p2(13),
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(14),
      Q => data_p2(14),
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(15),
      Q => data_p2(15),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(3),
      Q => data_p2(3),
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(4),
      Q => data_p2(4),
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(5),
      Q => data_p2(5),
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(6),
      Q => data_p2(6),
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(7),
      Q => data_p2(7),
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(8),
      Q => data_p2(8),
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[15]_0\(9),
      Q => data_p2(9),
      R => '0'
    );
\p_0_reg_377[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^out_stream_tready_int_regslice\,
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter1,
      O => E(0)
    );
\rem_fu_100[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"70FF"
    )
        port map (
      I0 => \^out_stream_tready_int_regslice\,
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      O => ack_in_t_reg_0
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
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2AAAFFFFFFFF"
    )
        port map (
      I0 => state(1),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(1),
      I3 => \^out_stream_tready_int_regslice\,
      I4 => out_stream_TREADY,
      I5 => \^out_stream_tvalid\,
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \^out_stream_tvalid\,
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_regslice_both_2 is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]_0\ : out STD_LOGIC;
    \data_p1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg : in STD_LOGIC;
    ack_in_t_reg_1 : in STD_LOGIC;
    weight_stream_TVALID : in STD_LOGIC;
    \state_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    weight_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_regslice_both_2 : entity is "conv2d_regslice_both";
end cnn_pipeline_conv2d_0_1_conv2d_regslice_both_2;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_regslice_both_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ack_in_t_i_1__0_n_0\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__4\ : label is "soft_lutpair46";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \state[1]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \trunc_ln83_reg_479[1]_i_1\ : label is "soft_lutpair47";
begin
  Q(0) <= \^q\(0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF80FFFFFF80FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \state_reg[0]_1\(0),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => weight_stream_TVALID,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDC0FF00"
    )
        port map (
      I0 => ack_in_t_reg_1,
      I1 => weight_stream_TVALID,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
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
\ack_in_t_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF0CF0"
    )
        port map (
      I0 => weight_stream_TVALID,
      I1 => ack_in_t_reg_1,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \^ack_in_t_reg_0\,
      O => \ack_in_t_i_1__0_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_0\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(10),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(10),
      O => p_0_in(10)
    );
\data_p1[11]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(11),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(11),
      O => p_0_in(11)
    );
\data_p1[12]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(12),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(12),
      O => p_0_in(12)
    );
\data_p1[13]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(13),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(13),
      O => p_0_in(13)
    );
\data_p1[14]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(14),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(14),
      O => p_0_in(14)
    );
\data_p1[15]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B808080808080808"
    )
        port map (
      I0 => weight_stream_TVALID,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state_reg[0]_1\(0),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \^q\(0),
      O => load_p1
    );
\data_p1[15]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(15),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(15),
      O => p_0_in(15)
    );
\data_p1[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(1),
      O => p_0_in(1)
    );
\data_p1[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(2),
      O => p_0_in(2)
    );
\data_p1[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(3),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(3),
      O => p_0_in(3)
    );
\data_p1[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(4),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(4),
      O => p_0_in(4)
    );
\data_p1[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(5),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(5),
      O => p_0_in(5)
    );
\data_p1[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(6),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(6),
      O => p_0_in(6)
    );
\data_p1[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(7),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(7),
      O => p_0_in(7)
    );
\data_p1[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(8),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(8),
      O => p_0_in(8)
    );
\data_p1[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(9),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => weight_stream_TDATA(9),
      O => p_0_in(9)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(0),
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
      D => p_0_in(10),
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
      D => p_0_in(11),
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
      D => p_0_in(12),
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
      D => p_0_in(13),
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
      D => p_0_in(14),
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
      D => p_0_in(15),
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
      D => p_0_in(1),
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
      D => p_0_in(2),
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
      D => p_0_in(3),
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
      D => p_0_in(4),
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
      D => p_0_in(5),
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
      D => p_0_in(6),
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
      D => p_0_in(7),
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
      D => p_0_in(8),
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
      D => p_0_in(9),
      Q => \data_p1_reg[15]_0\(9),
      R => '0'
    );
\data_p2[15]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => weight_stream_TVALID,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(10),
      Q => data_p2(10),
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(11),
      Q => data_p2(11),
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(12),
      Q => data_p2(12),
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(13),
      Q => data_p2(13),
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(14),
      Q => data_p2(14),
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(15),
      Q => data_p2(15),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(3),
      Q => data_p2(3),
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(4),
      Q => data_p2(4),
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(5),
      Q => data_p2(5),
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(6),
      Q => data_p2(6),
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(7),
      Q => data_p2(7),
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(8),
      Q => data_p2(8),
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => weight_stream_TDATA(9),
      Q => data_p2(9),
      R => '0'
    );
\rem_fu_90[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      O => \state_reg[0]_0\
    );
\state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FF0000000"
    )
        port map (
      I0 => \state_reg[0]_1\(0),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => state(1),
      I3 => weight_stream_TVALID,
      I4 => \^ack_in_t_reg_0\,
      I5 => \^q\(0),
      O => \state[0]_i_1__1_n_0\
    );
\state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8FFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => \state_reg[0]_1\(0),
      I2 => state(1),
      I3 => weight_stream_TVALID,
      I4 => \^q\(0),
      O => \state[1]_i_1__1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => ap_rst_n_inv
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1__1_n_0\,
      Q => state(1),
      S => ap_rst_n_inv
    );
\trunc_ln83_reg_479[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_enable_reg_pp0_iter1,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0\ is
  port (
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \data_p1_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_p2 : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0\ : entity is "conv2d_regslice_both";
end \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0\;

architecture STRUCTURE of \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0\ is
  signal \ack_in_t_i_1__2_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_2_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal load_p2_0 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair43";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair43";
begin
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F00FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(0),
      I2 => out_stream_TREADY_int_regslice,
      I3 => \state__0\(0),
      I4 => out_stream_TREADY,
      I5 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7C0F700"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => load_p2,
      I3 => \state__0\(1),
      I4 => ack_in_t_reg_n_0,
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
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => load_p2,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => out_stream_TREADY,
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__2_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[1]_0\(0),
      I4 => load_p2,
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000000088888888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => out_stream_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(0),
      I4 => out_stream_TREADY_int_regslice,
      I5 => \state__0\(0),
      O => load_p1
    );
\data_p1[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[1]_0\(1),
      I4 => load_p2,
      O => \data_p1[1]_i_2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_0\,
      Q => out_stream_TKEEP(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_2_n_0\,
      Q => out_stream_TKEEP(1),
      R => '0'
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(0),
      I3 => ap_enable_reg_pp0_iter1,
      O => load_p2_0
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2_0,
      D => D(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2_0,
      D => D(1),
      Q => data_p2(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0_1\ is
  port (
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \data_p1_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    load_p2 : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0_1\ : entity is "conv2d_regslice_both";
end \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0_1\;

architecture STRUCTURE of \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0_1\ is
  signal \ack_in_t_i_1__3_n_0\ : STD_LOGIC;
  signal ack_in_t_reg_n_0 : STD_LOGIC;
  signal \data_p1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_2__0_n_0\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal load_p2_0 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__2\ : label is "soft_lutpair45";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__3\ : label is "soft_lutpair45";
begin
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F00FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(0),
      I2 => out_stream_TREADY_int_regslice,
      I3 => \state__0\(0),
      I4 => out_stream_TREADY,
      I5 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECC0CCC"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => \state__0\(1),
      I2 => out_stream_TREADY,
      I3 => \state__0\(0),
      I4 => load_p2,
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
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => load_p2,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => out_stream_TREADY,
      I4 => ack_in_t_reg_n_0,
      O => \ack_in_t_i_1__3_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__3_n_0\,
      Q => ack_in_t_reg_n_0,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[1]_0\(0),
      I4 => load_p2,
      O => \data_p1[0]_i_1__0_n_0\
    );
\data_p1[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000000088888888"
    )
        port map (
      I0 => \state__0\(1),
      I1 => out_stream_TREADY,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => Q(0),
      I4 => out_stream_TREADY_int_regslice,
      I5 => \state__0\(0),
      O => load_p1
    );
\data_p1[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFBFB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \data_p1_reg[1]_0\(1),
      I4 => load_p2,
      O => \data_p1[1]_i_2__0_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__0_n_0\,
      Q => out_stream_TSTRB(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_2__0_n_0\,
      Q => out_stream_TSTRB(1),
      R => '0'
    );
\data_p2[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ack_in_t_reg_n_0,
      I1 => out_stream_TREADY_int_regslice,
      I2 => Q(0),
      I3 => ap_enable_reg_pp0_iter1,
      O => load_p2_0
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2_0,
      D => D(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2_0,
      D => D(1),
      Q => data_p2(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized1\ is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    data_p2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \data_p2_reg[0]_0\ : in STD_LOGIC;
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    load_p2 : in STD_LOGIC;
    out_stream_TLAST_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TREADY : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TREADY_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized1\ : entity is "conv2d_regslice_both";
end \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized1\;

architecture STRUCTURE of \cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__4_n_0\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__4_n_0\ : STD_LOGIC;
  signal \data_p1[0]_i_2_n_0\ : STD_LOGIC;
  signal \^data_p2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__3\ : label is "soft_lutpair44";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__4\ : label is "soft_lutpair44";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  data_p2(0) <= \^data_p2\(0);
  out_stream_TLAST(0) <= \^out_stream_tlast\(0);
\FSM_sequential_state[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7F00FFFFFFFF"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(0),
      I2 => out_stream_TREADY_int_regslice,
      I3 => \state__0\(0),
      I4 => out_stream_TREADY,
      I5 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECC0CCC"
    )
        port map (
      I0 => \^ack_in_t_reg_0\,
      I1 => \state__0\(1),
      I2 => out_stream_TREADY,
      I3 => \state__0\(0),
      I4 => load_p2,
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
\ack_in_t_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F3C0C"
    )
        port map (
      I0 => load_p2,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => out_stream_TREADY,
      I4 => \^ack_in_t_reg_0\,
      O => \ack_in_t_i_1__4_n_0\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__4_n_0\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFBFBFA2008080"
    )
        port map (
      I0 => \data_p1[0]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => out_stream_TREADY,
      I3 => load_p2,
      I4 => \state__0\(0),
      I5 => \^out_stream_tlast\(0),
      O => \data_p1[0]_i_1__4_n_0\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
        port map (
      I0 => \^data_p2\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(0),
      I4 => load_p2,
      I5 => out_stream_TLAST_reg(0),
      O => \data_p1[0]_i_2_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__4_n_0\,
      Q => \^out_stream_tlast\(0),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2_reg[0]_0\,
      Q => \^data_p2\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_INPUT is
  port (
    ap_done_cache : out STD_LOGIC;
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done_reg1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \input_17_fu_198_reg[15]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[15]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[14]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[14]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[13]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[13]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[12]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[12]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[11]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[11]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[10]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[10]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[9]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[9]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[8]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[8]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[7]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[7]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[6]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[6]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[5]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[5]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[4]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[4]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[3]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[3]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[2]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[2]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[1]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[1]_0\ : out STD_LOGIC;
    \input_17_fu_198_reg[0]_0\ : out STD_LOGIC;
    \input_22_fu_218_reg[0]_0\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \select_ln89_reg_1613_reg[1]_0\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_1\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_2\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_3\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_4\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_5\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_6\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_7\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_8\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_9\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_10\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_11\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_12\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_13\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_14\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_15\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_16\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_17\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_18\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_19\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_20\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_21\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_22\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_23\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_24\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_25\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_26\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_27\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_28\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_29\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_30\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[1]_31\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg_0 : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_1\ : in STD_LOGIC;
    select_ln89_fu_561_p3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp_15_reg_1628_reg[15]\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_18_reg_1643_reg[15]\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[15]_0\ : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \tmp_20_reg_1658_reg[15]\ : in STD_LOGIC;
    \tmp_20_reg_1658_reg[15]_0\ : in STD_LOGIC;
    \tmp_20_reg_1658_reg[15]_1\ : in STD_LOGIC;
    \tmp_20_reg_1658_reg[15]_2\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \input_24_fu_226_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_INPUT : entity is "conv2d_conv2d_Pipeline_READ_INPUT";
end cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_INPUT;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_INPUT is
  signal add_ln66_fu_464_p2 : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal ap_sig_allocacmp_phi_mul_load : STD_LOGIC_VECTOR ( 10 downto 8 );
  signal ap_sig_allocacmp_phi_urem_load : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal flow_control_loop_pipe_sequential_init_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_26 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_27 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_28 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_29 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_30 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i_fu_455_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal input_10_fu_1700 : STD_LOGIC;
  signal input_11_fu_1740 : STD_LOGIC;
  signal input_12_fu_1780 : STD_LOGIC;
  signal input_13_fu_1820 : STD_LOGIC;
  signal input_14_fu_1860 : STD_LOGIC;
  signal \input_15_fu_190[15]_i_1_n_0\ : STD_LOGIC;
  signal \input_15_fu_190[15]_i_2_n_0\ : STD_LOGIC;
  signal \input_16_fu_194[15]_i_1_n_0\ : STD_LOGIC;
  signal \input_16_fu_194[15]_i_2_n_0\ : STD_LOGIC;
  signal \input_17_fu_198[15]_i_1_n_0\ : STD_LOGIC;
  signal \input_17_fu_198[15]_i_2_n_0\ : STD_LOGIC;
  signal \input_18_fu_202[15]_i_1_n_0\ : STD_LOGIC;
  signal \input_18_fu_202[15]_i_2_n_0\ : STD_LOGIC;
  signal input_19_fu_2060 : STD_LOGIC;
  signal input_1_fu_1340 : STD_LOGIC;
  signal input_20_fu_2100 : STD_LOGIC;
  signal input_21_fu_2140 : STD_LOGIC;
  signal input_22_fu_2180 : STD_LOGIC;
  signal input_23_fu_2220 : STD_LOGIC;
  signal input_24_fu_2260 : STD_LOGIC;
  signal input_2_fu_1380 : STD_LOGIC;
  signal input_3_fu_1420 : STD_LOGIC;
  signal input_4_fu_1460 : STD_LOGIC;
  signal input_5_fu_1500 : STD_LOGIC;
  signal input_6_fu_1540 : STD_LOGIC;
  signal input_7_fu_1580 : STD_LOGIC;
  signal input_8_fu_1620 : STD_LOGIC;
  signal input_9_fu_1660 : STD_LOGIC;
  signal input_fu_1300 : STD_LOGIC;
  signal \p_reg_reg_i_17__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_17__1_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_18__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_18__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_18_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_19__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_19__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_19_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_20__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_20__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_20_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_21__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_21__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_21_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_22__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_22__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_22_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_23__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_23__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_23_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_24__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_24__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_24_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_25__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_25__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_25_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_26__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_26__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_26_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_27__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_27__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_27_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_28__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_28__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_28_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_29__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_29__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_29_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_30__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_30__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_30_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_31__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_31__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_31_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_32__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_32__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_32_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_33__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_33__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_33_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_34__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_34__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_34_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_35__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_35__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_35_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_36__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_36__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_36_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_37__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_37__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_37_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_38__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_38__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_38_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_39__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_39__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_39_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_40__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_40__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_40_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_41__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_41__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_41_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_42__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_42__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_42_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_43__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_43__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_43_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_44__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_44__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_44_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_45__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_45__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_45_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_46__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_46__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_46_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_47__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_47__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_47_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_48__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_48__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_48_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_49__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_49__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_49_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_50__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_50__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_50_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_51__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_51__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_51_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_52__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_52__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_52_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_53__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_53__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_53_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_54__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_54__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_54_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_55__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_55__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_55_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_56__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_56__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_56_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_57__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_57__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_57_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_58__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_58__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_58_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_59__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_59__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_59_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_60__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_60__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_60_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_61__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_61__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_61_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_62__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_62__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_62_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_63__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_63__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_63_n_0 : STD_LOGIC;
  signal \p_reg_reg_i_64__0_n_0\ : STD_LOGIC;
  signal \p_reg_reg_i_64__1_n_0\ : STD_LOGIC;
  signal p_reg_reg_i_64_n_0 : STD_LOGIC;
  signal p_reg_reg_i_65_n_0 : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[10]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[2]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[3]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[4]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[5]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[6]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[7]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[8]\ : STD_LOGIC;
  signal \phi_mul_fu_122_reg_n_0_[9]\ : STD_LOGIC;
  signal phi_urem_fu_118 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rem_fu_126 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal select_ln47_fu_509_p3 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \tmp_15_reg_1628[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[10]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[11]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[12]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[13]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[14]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[15]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[1]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[2]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[4]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[5]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[6]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[7]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[8]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_15_reg_1628[9]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[10]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[11]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[12]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[13]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[14]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[15]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[1]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[2]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[4]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[5]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[6]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[7]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[8]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_18_reg_1643[9]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[10]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[11]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[12]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[13]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[14]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[15]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[1]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[2]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[4]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[5]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[6]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[7]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[8]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_20_reg_1658[9]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2_n_0\ : STD_LOGIC;
  signal trunc_ln1_reg_935 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal trunc_ln68_reg_939 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \input_15_fu_190[15]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \input_16_fu_194[15]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \input_17_fu_198[15]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \input_18_fu_202[15]_i_2\ : label is "soft_lutpair19";
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
ack_in_t_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(0),
      I2 => \ap_CS_fsm_reg[2]\(1),
      O => ap_enable_reg_pp0_iter1_reg_0
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_1,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_4
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      add_ln66_fu_464_p2(7 downto 1) => add_ln66_fu_464_p2(10 downto 4),
      add_ln66_fu_464_p2(0) => add_ln66_fu_464_p2(2),
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_fsm_reg[2]\(1 downto 0) => \ap_CS_fsm_reg[2]\(1 downto 0),
      \ap_CS_fsm_reg[2]_0\ => \ap_CS_fsm_reg[2]_0\,
      \ap_CS_fsm_reg[2]_1\ => \ap_CS_fsm_reg[2]_1\,
      ap_clk => ap_clk,
      ap_done_cache => ap_done_cache,
      ap_done_reg1 => ap_done_reg1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => flow_control_loop_pipe_sequential_init_U_n_1,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_26,
      i_fu_455_p2(2 downto 1) => i_fu_455_p2(4 downto 3),
      i_fu_455_p2(0) => i_fu_455_p2(0),
      \phi_mul_fu_122_reg[10]\(2 downto 0) => ap_sig_allocacmp_phi_mul_load(10 downto 8),
      \phi_mul_fu_122_reg[10]_0\ => \phi_mul_fu_122_reg_n_0_[10]\,
      \phi_mul_fu_122_reg[10]_1\ => \phi_mul_fu_122_reg_n_0_[8]\,
      \phi_mul_fu_122_reg[10]_2\ => \phi_mul_fu_122_reg_n_0_[7]\,
      \phi_mul_fu_122_reg[10]_3\ => \phi_mul_fu_122_reg_n_0_[9]\,
      \phi_mul_fu_122_reg[3]\ => flow_control_loop_pipe_sequential_init_U_n_29,
      \phi_mul_fu_122_reg[6]\ => \phi_mul_fu_122_reg_n_0_[2]\,
      \phi_mul_fu_122_reg[6]_0\ => \phi_mul_fu_122_reg_n_0_[3]\,
      \phi_mul_fu_122_reg[6]_1\ => \phi_mul_fu_122_reg_n_0_[4]\,
      \phi_mul_fu_122_reg[6]_2\ => \phi_mul_fu_122_reg_n_0_[5]\,
      \phi_mul_fu_122_reg[6]_3\ => \phi_mul_fu_122_reg_n_0_[6]\,
      phi_urem_fu_118(4 downto 0) => phi_urem_fu_118(4 downto 0),
      \phi_urem_fu_118_reg[1]\ => flow_control_loop_pipe_sequential_init_U_n_30,
      \phi_urem_fu_118_reg[2]\(2 downto 0) => ap_sig_allocacmp_phi_urem_load(2 downto 0),
      rem_fu_126(4 downto 0) => rem_fu_126(4 downto 0),
      \rem_fu_126_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_28,
      \rem_fu_126_reg[2]\ => flow_control_loop_pipe_sequential_init_U_n_27,
      \rem_fu_126_reg[4]\ => \^ap_enable_reg_pp0_iter1\,
      select_ln47_fu_509_p3(3 downto 1) => select_ln47_fu_509_p3(4 downto 2),
      select_ln47_fu_509_p3(0) => select_ln47_fu_509_p3(0)
    );
\input_10_fu_170[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \input_15_fu_190[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => input_10_fu_1700
    );
\input_10_fu_170_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(0),
      R => '0'
    );
\input_10_fu_170_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(10),
      R => '0'
    );
\input_10_fu_170_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(11),
      R => '0'
    );
\input_10_fu_170_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(12),
      R => '0'
    );
\input_10_fu_170_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(13),
      R => '0'
    );
\input_10_fu_170_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(14),
      R => '0'
    );
\input_10_fu_170_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(15),
      R => '0'
    );
\input_10_fu_170_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(1),
      R => '0'
    );
\input_10_fu_170_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(2),
      R => '0'
    );
\input_10_fu_170_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(3),
      R => '0'
    );
\input_10_fu_170_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(4),
      R => '0'
    );
\input_10_fu_170_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(5),
      R => '0'
    );
\input_10_fu_170_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(6),
      R => '0'
    );
\input_10_fu_170_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(7),
      R => '0'
    );
\input_10_fu_170_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(8),
      R => '0'
    );
\input_10_fu_170_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_10_fu_1700,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(9),
      R => '0'
    );
\input_11_fu_174[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \input_16_fu_194[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => input_11_fu_1740
    );
\input_11_fu_174_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(0),
      R => '0'
    );
\input_11_fu_174_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(10),
      R => '0'
    );
\input_11_fu_174_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(11),
      R => '0'
    );
\input_11_fu_174_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(12),
      R => '0'
    );
\input_11_fu_174_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(13),
      R => '0'
    );
\input_11_fu_174_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(14),
      R => '0'
    );
\input_11_fu_174_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(15),
      R => '0'
    );
\input_11_fu_174_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(1),
      R => '0'
    );
\input_11_fu_174_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(2),
      R => '0'
    );
\input_11_fu_174_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(3),
      R => '0'
    );
\input_11_fu_174_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(4),
      R => '0'
    );
\input_11_fu_174_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(5),
      R => '0'
    );
\input_11_fu_174_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(6),
      R => '0'
    );
\input_11_fu_174_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(7),
      R => '0'
    );
\input_11_fu_174_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(8),
      R => '0'
    );
\input_11_fu_174_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_11_fu_1740,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(9),
      R => '0'
    );
\input_12_fu_178[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \input_17_fu_198[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => input_12_fu_1780
    );
\input_12_fu_178_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(0),
      R => '0'
    );
\input_12_fu_178_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(10),
      R => '0'
    );
\input_12_fu_178_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(11),
      R => '0'
    );
\input_12_fu_178_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(12),
      R => '0'
    );
\input_12_fu_178_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(13),
      R => '0'
    );
\input_12_fu_178_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(14),
      R => '0'
    );
\input_12_fu_178_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(15),
      R => '0'
    );
\input_12_fu_178_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(1),
      R => '0'
    );
\input_12_fu_178_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(2),
      R => '0'
    );
\input_12_fu_178_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(3),
      R => '0'
    );
\input_12_fu_178_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(4),
      R => '0'
    );
\input_12_fu_178_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(5),
      R => '0'
    );
\input_12_fu_178_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(6),
      R => '0'
    );
\input_12_fu_178_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(7),
      R => '0'
    );
\input_12_fu_178_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(8),
      R => '0'
    );
\input_12_fu_178_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_12_fu_1780,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(9),
      R => '0'
    );
\input_13_fu_182[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \input_18_fu_202[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => input_13_fu_1820
    );
\input_13_fu_182_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(0),
      R => '0'
    );
\input_13_fu_182_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(10),
      R => '0'
    );
\input_13_fu_182_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(11),
      R => '0'
    );
\input_13_fu_182_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(12),
      R => '0'
    );
\input_13_fu_182_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(13),
      R => '0'
    );
\input_13_fu_182_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(14),
      R => '0'
    );
\input_13_fu_182_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(15),
      R => '0'
    );
\input_13_fu_182_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(1),
      R => '0'
    );
\input_13_fu_182_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(2),
      R => '0'
    );
\input_13_fu_182_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(3),
      R => '0'
    );
\input_13_fu_182_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(4),
      R => '0'
    );
\input_13_fu_182_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(5),
      R => '0'
    );
\input_13_fu_182_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(6),
      R => '0'
    );
\input_13_fu_182_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(7),
      R => '0'
    );
\input_13_fu_182_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(8),
      R => '0'
    );
\input_13_fu_182_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_13_fu_1820,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(9),
      R => '0'
    );
\input_14_fu_186[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => trunc_ln68_reg_939(2),
      I3 => trunc_ln1_reg_935(2),
      I4 => trunc_ln1_reg_935(1),
      I5 => trunc_ln1_reg_935(0),
      O => input_14_fu_1860
    );
\input_14_fu_186_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(0),
      R => '0'
    );
\input_14_fu_186_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(10),
      R => '0'
    );
\input_14_fu_186_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(11),
      R => '0'
    );
\input_14_fu_186_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(12),
      R => '0'
    );
\input_14_fu_186_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(13),
      R => '0'
    );
\input_14_fu_186_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(14),
      R => '0'
    );
\input_14_fu_186_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(15),
      R => '0'
    );
\input_14_fu_186_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(1),
      R => '0'
    );
\input_14_fu_186_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(2),
      R => '0'
    );
\input_14_fu_186_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(3),
      R => '0'
    );
\input_14_fu_186_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(4),
      R => '0'
    );
\input_14_fu_186_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(5),
      R => '0'
    );
\input_14_fu_186_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(6),
      R => '0'
    );
\input_14_fu_186_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(7),
      R => '0'
    );
\input_14_fu_186_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(8),
      R => '0'
    );
\input_14_fu_186_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_14_fu_1860,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(9),
      R => '0'
    );
\input_15_fu_190[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \input_15_fu_190[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => \input_15_fu_190[15]_i_1_n_0\
    );
\input_15_fu_190[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(0),
      I2 => trunc_ln68_reg_939(2),
      I3 => trunc_ln68_reg_939(1),
      I4 => trunc_ln68_reg_939(0),
      O => \input_15_fu_190[15]_i_2_n_0\
    );
\input_15_fu_190_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(0),
      R => '0'
    );
\input_15_fu_190_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(10),
      R => '0'
    );
\input_15_fu_190_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(11),
      R => '0'
    );
\input_15_fu_190_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(12),
      R => '0'
    );
\input_15_fu_190_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(13),
      R => '0'
    );
\input_15_fu_190_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(14),
      R => '0'
    );
\input_15_fu_190_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(15),
      R => '0'
    );
\input_15_fu_190_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(1),
      R => '0'
    );
\input_15_fu_190_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(2),
      R => '0'
    );
\input_15_fu_190_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(3),
      R => '0'
    );
\input_15_fu_190_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(4),
      R => '0'
    );
\input_15_fu_190_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(5),
      R => '0'
    );
\input_15_fu_190_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(6),
      R => '0'
    );
\input_15_fu_190_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(7),
      R => '0'
    );
\input_15_fu_190_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(8),
      R => '0'
    );
\input_15_fu_190_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_15_fu_190[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(9),
      R => '0'
    );
\input_16_fu_194[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \input_16_fu_194[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => \input_16_fu_194[15]_i_1_n_0\
    );
\input_16_fu_194[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(0),
      I2 => trunc_ln68_reg_939(0),
      I3 => trunc_ln68_reg_939(2),
      I4 => trunc_ln68_reg_939(1),
      O => \input_16_fu_194[15]_i_2_n_0\
    );
\input_16_fu_194_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(0),
      R => '0'
    );
\input_16_fu_194_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(10),
      R => '0'
    );
\input_16_fu_194_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(11),
      R => '0'
    );
\input_16_fu_194_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(12),
      R => '0'
    );
\input_16_fu_194_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(13),
      R => '0'
    );
\input_16_fu_194_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(14),
      R => '0'
    );
\input_16_fu_194_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(15),
      R => '0'
    );
\input_16_fu_194_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(1),
      R => '0'
    );
\input_16_fu_194_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(2),
      R => '0'
    );
\input_16_fu_194_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(3),
      R => '0'
    );
\input_16_fu_194_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(4),
      R => '0'
    );
\input_16_fu_194_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(5),
      R => '0'
    );
\input_16_fu_194_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(6),
      R => '0'
    );
\input_16_fu_194_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(7),
      R => '0'
    );
\input_16_fu_194_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(8),
      R => '0'
    );
\input_16_fu_194_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_16_fu_194[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(9),
      R => '0'
    );
\input_17_fu_198[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \input_17_fu_198[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => \input_17_fu_198[15]_i_1_n_0\
    );
\input_17_fu_198[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(0),
      I2 => trunc_ln68_reg_939(2),
      I3 => trunc_ln68_reg_939(1),
      I4 => trunc_ln68_reg_939(0),
      O => \input_17_fu_198[15]_i_2_n_0\
    );
\input_17_fu_198_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(0),
      R => '0'
    );
\input_17_fu_198_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(10),
      R => '0'
    );
\input_17_fu_198_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(11),
      R => '0'
    );
\input_17_fu_198_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(12),
      R => '0'
    );
\input_17_fu_198_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(13),
      R => '0'
    );
\input_17_fu_198_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(14),
      R => '0'
    );
\input_17_fu_198_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(15),
      R => '0'
    );
\input_17_fu_198_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(1),
      R => '0'
    );
\input_17_fu_198_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(2),
      R => '0'
    );
\input_17_fu_198_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(3),
      R => '0'
    );
\input_17_fu_198_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(4),
      R => '0'
    );
\input_17_fu_198_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(5),
      R => '0'
    );
\input_17_fu_198_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(6),
      R => '0'
    );
\input_17_fu_198_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(7),
      R => '0'
    );
\input_17_fu_198_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(8),
      R => '0'
    );
\input_17_fu_198_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_17_fu_198[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(9),
      R => '0'
    );
\input_18_fu_202[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \input_18_fu_202[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(2),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(0),
      O => \input_18_fu_202[15]_i_1_n_0\
    );
\input_18_fu_202[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(0),
      I2 => trunc_ln68_reg_939(0),
      I3 => trunc_ln68_reg_939(2),
      I4 => trunc_ln68_reg_939(1),
      O => \input_18_fu_202[15]_i_2_n_0\
    );
\input_18_fu_202_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(0),
      R => '0'
    );
\input_18_fu_202_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(10),
      R => '0'
    );
\input_18_fu_202_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(11),
      R => '0'
    );
\input_18_fu_202_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(12),
      R => '0'
    );
\input_18_fu_202_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(13),
      R => '0'
    );
\input_18_fu_202_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(14),
      R => '0'
    );
\input_18_fu_202_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(15),
      R => '0'
    );
\input_18_fu_202_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(1),
      R => '0'
    );
\input_18_fu_202_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(2),
      R => '0'
    );
\input_18_fu_202_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(3),
      R => '0'
    );
\input_18_fu_202_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(4),
      R => '0'
    );
\input_18_fu_202_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(5),
      R => '0'
    );
\input_18_fu_202_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(6),
      R => '0'
    );
\input_18_fu_202_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(7),
      R => '0'
    );
\input_18_fu_202_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(8),
      R => '0'
    );
\input_18_fu_202_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \input_18_fu_202[15]_i_1_n_0\,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(9),
      R => '0'
    );
\input_19_fu_206[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => trunc_ln1_reg_935(2),
      I1 => trunc_ln1_reg_935(1),
      I2 => trunc_ln1_reg_935(0),
      I3 => Q(0),
      I4 => \^ap_enable_reg_pp0_iter1\,
      I5 => trunc_ln68_reg_939(2),
      O => input_19_fu_2060
    );
\input_19_fu_206_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(0),
      R => '0'
    );
\input_19_fu_206_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(10),
      R => '0'
    );
\input_19_fu_206_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(11),
      R => '0'
    );
\input_19_fu_206_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(12),
      R => '0'
    );
\input_19_fu_206_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(13),
      R => '0'
    );
\input_19_fu_206_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(14),
      R => '0'
    );
\input_19_fu_206_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(15),
      R => '0'
    );
\input_19_fu_206_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(1),
      R => '0'
    );
\input_19_fu_206_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(2),
      R => '0'
    );
\input_19_fu_206_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(3),
      R => '0'
    );
\input_19_fu_206_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(4),
      R => '0'
    );
\input_19_fu_206_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(5),
      R => '0'
    );
\input_19_fu_206_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(6),
      R => '0'
    );
\input_19_fu_206_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(7),
      R => '0'
    );
\input_19_fu_206_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(8),
      R => '0'
    );
\input_19_fu_206_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_19_fu_2060,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(9),
      R => '0'
    );
\input_1_fu_134[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \input_16_fu_194[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(1),
      I2 => trunc_ln1_reg_935(2),
      I3 => trunc_ln1_reg_935(0),
      O => input_1_fu_1340
    );
\input_1_fu_134_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(0),
      R => '0'
    );
\input_1_fu_134_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(10),
      R => '0'
    );
\input_1_fu_134_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(11),
      R => '0'
    );
\input_1_fu_134_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(12),
      R => '0'
    );
\input_1_fu_134_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(13),
      R => '0'
    );
\input_1_fu_134_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(14),
      R => '0'
    );
\input_1_fu_134_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(15),
      R => '0'
    );
\input_1_fu_134_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(1),
      R => '0'
    );
\input_1_fu_134_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(2),
      R => '0'
    );
\input_1_fu_134_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(3),
      R => '0'
    );
\input_1_fu_134_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(4),
      R => '0'
    );
\input_1_fu_134_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(5),
      R => '0'
    );
\input_1_fu_134_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(6),
      R => '0'
    );
\input_1_fu_134_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(7),
      R => '0'
    );
\input_1_fu_134_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(8),
      R => '0'
    );
\input_1_fu_134_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_1_fu_1340,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(9),
      R => '0'
    );
\input_20_fu_210[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => trunc_ln1_reg_935(2),
      I1 => trunc_ln68_reg_939(0),
      I2 => trunc_ln68_reg_939(1),
      I3 => trunc_ln68_reg_939(2),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => input_20_fu_2100
    );
\input_20_fu_210_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(0),
      R => '0'
    );
\input_20_fu_210_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(10),
      R => '0'
    );
\input_20_fu_210_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(11),
      R => '0'
    );
\input_20_fu_210_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(12),
      R => '0'
    );
\input_20_fu_210_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(13),
      R => '0'
    );
\input_20_fu_210_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(14),
      R => '0'
    );
\input_20_fu_210_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(15),
      R => '0'
    );
\input_20_fu_210_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(1),
      R => '0'
    );
\input_20_fu_210_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(2),
      R => '0'
    );
\input_20_fu_210_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(3),
      R => '0'
    );
\input_20_fu_210_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(4),
      R => '0'
    );
\input_20_fu_210_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(5),
      R => '0'
    );
\input_20_fu_210_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(6),
      R => '0'
    );
\input_20_fu_210_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(7),
      R => '0'
    );
\input_20_fu_210_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(8),
      R => '0'
    );
\input_20_fu_210_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_20_fu_2100,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(9),
      R => '0'
    );
\input_21_fu_214[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => trunc_ln1_reg_935(2),
      I1 => trunc_ln68_reg_939(1),
      I2 => trunc_ln68_reg_939(2),
      I3 => trunc_ln68_reg_939(0),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => input_21_fu_2140
    );
\input_21_fu_214_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(0),
      R => '0'
    );
\input_21_fu_214_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(10),
      R => '0'
    );
\input_21_fu_214_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(11),
      R => '0'
    );
\input_21_fu_214_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(12),
      R => '0'
    );
\input_21_fu_214_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(13),
      R => '0'
    );
\input_21_fu_214_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(14),
      R => '0'
    );
\input_21_fu_214_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(15),
      R => '0'
    );
\input_21_fu_214_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(1),
      R => '0'
    );
\input_21_fu_214_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(2),
      R => '0'
    );
\input_21_fu_214_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(3),
      R => '0'
    );
\input_21_fu_214_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(4),
      R => '0'
    );
\input_21_fu_214_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(5),
      R => '0'
    );
\input_21_fu_214_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(6),
      R => '0'
    );
\input_21_fu_214_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(7),
      R => '0'
    );
\input_21_fu_214_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(8),
      R => '0'
    );
\input_21_fu_214_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_21_fu_2140,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(9),
      R => '0'
    );
\input_22_fu_218[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => trunc_ln1_reg_935(2),
      I1 => trunc_ln68_reg_939(0),
      I2 => trunc_ln68_reg_939(1),
      I3 => trunc_ln68_reg_939(2),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => input_22_fu_2180
    );
\input_22_fu_218_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(0),
      R => '0'
    );
\input_22_fu_218_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(10),
      R => '0'
    );
\input_22_fu_218_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(11),
      R => '0'
    );
\input_22_fu_218_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(12),
      R => '0'
    );
\input_22_fu_218_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(13),
      R => '0'
    );
\input_22_fu_218_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(14),
      R => '0'
    );
\input_22_fu_218_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(15),
      R => '0'
    );
\input_22_fu_218_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(1),
      R => '0'
    );
\input_22_fu_218_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(2),
      R => '0'
    );
\input_22_fu_218_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(3),
      R => '0'
    );
\input_22_fu_218_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(4),
      R => '0'
    );
\input_22_fu_218_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(5),
      R => '0'
    );
\input_22_fu_218_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(6),
      R => '0'
    );
\input_22_fu_218_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(7),
      R => '0'
    );
\input_22_fu_218_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(8),
      R => '0'
    );
\input_22_fu_218_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_22_fu_2180,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(9),
      R => '0'
    );
\input_23_fu_222[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => trunc_ln1_reg_935(2),
      I1 => trunc_ln68_reg_939(1),
      I2 => trunc_ln68_reg_939(2),
      I3 => trunc_ln68_reg_939(0),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => input_23_fu_2220
    );
\input_23_fu_222_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(0),
      R => '0'
    );
\input_23_fu_222_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(10),
      R => '0'
    );
\input_23_fu_222_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(11),
      R => '0'
    );
\input_23_fu_222_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(12),
      R => '0'
    );
\input_23_fu_222_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(13),
      R => '0'
    );
\input_23_fu_222_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(14),
      R => '0'
    );
\input_23_fu_222_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(15),
      R => '0'
    );
\input_23_fu_222_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(1),
      R => '0'
    );
\input_23_fu_222_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(2),
      R => '0'
    );
\input_23_fu_222_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(3),
      R => '0'
    );
\input_23_fu_222_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(4),
      R => '0'
    );
\input_23_fu_222_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(5),
      R => '0'
    );
\input_23_fu_222_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(6),
      R => '0'
    );
\input_23_fu_222_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(7),
      R => '0'
    );
\input_23_fu_222_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(8),
      R => '0'
    );
\input_23_fu_222_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_23_fu_2220,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(9),
      R => '0'
    );
\input_24_fu_226[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => trunc_ln1_reg_935(2),
      I1 => Q(0),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => trunc_ln68_reg_939(2),
      O => input_24_fu_2260
    );
\input_24_fu_226_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(0),
      R => '0'
    );
\input_24_fu_226_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(10),
      R => '0'
    );
\input_24_fu_226_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(11),
      R => '0'
    );
\input_24_fu_226_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(12),
      R => '0'
    );
\input_24_fu_226_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(13),
      R => '0'
    );
\input_24_fu_226_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(14),
      R => '0'
    );
\input_24_fu_226_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(15),
      R => '0'
    );
\input_24_fu_226_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(1),
      R => '0'
    );
\input_24_fu_226_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(2),
      R => '0'
    );
\input_24_fu_226_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(3),
      R => '0'
    );
\input_24_fu_226_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(4),
      R => '0'
    );
\input_24_fu_226_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(5),
      R => '0'
    );
\input_24_fu_226_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(6),
      R => '0'
    );
\input_24_fu_226_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(7),
      R => '0'
    );
\input_24_fu_226_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(8),
      R => '0'
    );
\input_24_fu_226_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_24_fu_2260,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(9),
      R => '0'
    );
\input_2_fu_138[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \input_17_fu_198[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(1),
      I2 => trunc_ln1_reg_935(2),
      I3 => trunc_ln1_reg_935(0),
      O => input_2_fu_1380
    );
\input_2_fu_138_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(0),
      R => '0'
    );
\input_2_fu_138_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(10),
      R => '0'
    );
\input_2_fu_138_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(11),
      R => '0'
    );
\input_2_fu_138_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(12),
      R => '0'
    );
\input_2_fu_138_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(13),
      R => '0'
    );
\input_2_fu_138_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(14),
      R => '0'
    );
\input_2_fu_138_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(15),
      R => '0'
    );
\input_2_fu_138_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(1),
      R => '0'
    );
\input_2_fu_138_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(2),
      R => '0'
    );
\input_2_fu_138_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(3),
      R => '0'
    );
\input_2_fu_138_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(4),
      R => '0'
    );
\input_2_fu_138_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(5),
      R => '0'
    );
\input_2_fu_138_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(6),
      R => '0'
    );
\input_2_fu_138_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(7),
      R => '0'
    );
\input_2_fu_138_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(8),
      R => '0'
    );
\input_2_fu_138_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_2_fu_1380,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(9),
      R => '0'
    );
\input_3_fu_142[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \input_18_fu_202[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(1),
      I2 => trunc_ln1_reg_935(2),
      I3 => trunc_ln1_reg_935(0),
      O => input_3_fu_1420
    );
\input_3_fu_142_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(0),
      R => '0'
    );
\input_3_fu_142_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(10),
      R => '0'
    );
\input_3_fu_142_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(11),
      R => '0'
    );
\input_3_fu_142_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(12),
      R => '0'
    );
\input_3_fu_142_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(13),
      R => '0'
    );
\input_3_fu_142_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(14),
      R => '0'
    );
\input_3_fu_142_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(15),
      R => '0'
    );
\input_3_fu_142_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(1),
      R => '0'
    );
\input_3_fu_142_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(2),
      R => '0'
    );
\input_3_fu_142_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(3),
      R => '0'
    );
\input_3_fu_142_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(4),
      R => '0'
    );
\input_3_fu_142_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(5),
      R => '0'
    );
\input_3_fu_142_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(6),
      R => '0'
    );
\input_3_fu_142_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(7),
      R => '0'
    );
\input_3_fu_142_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(8),
      R => '0'
    );
\input_3_fu_142_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_3_fu_1420,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(9),
      R => '0'
    );
\input_4_fu_146[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => trunc_ln68_reg_939(2),
      I3 => trunc_ln1_reg_935(1),
      I4 => trunc_ln1_reg_935(2),
      I5 => trunc_ln1_reg_935(0),
      O => input_4_fu_1460
    );
\input_4_fu_146_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(0),
      R => '0'
    );
\input_4_fu_146_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(10),
      R => '0'
    );
\input_4_fu_146_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(11),
      R => '0'
    );
\input_4_fu_146_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(12),
      R => '0'
    );
\input_4_fu_146_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(13),
      R => '0'
    );
\input_4_fu_146_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(14),
      R => '0'
    );
\input_4_fu_146_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(15),
      R => '0'
    );
\input_4_fu_146_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(1),
      R => '0'
    );
\input_4_fu_146_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(2),
      R => '0'
    );
\input_4_fu_146_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(3),
      R => '0'
    );
\input_4_fu_146_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(4),
      R => '0'
    );
\input_4_fu_146_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(5),
      R => '0'
    );
\input_4_fu_146_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(6),
      R => '0'
    );
\input_4_fu_146_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(7),
      R => '0'
    );
\input_4_fu_146_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(8),
      R => '0'
    );
\input_4_fu_146_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_4_fu_1460,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(9),
      R => '0'
    );
\input_5_fu_150[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \input_15_fu_190[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(0),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(2),
      O => input_5_fu_1500
    );
\input_5_fu_150_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(0),
      R => '0'
    );
\input_5_fu_150_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(10),
      R => '0'
    );
\input_5_fu_150_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(11),
      R => '0'
    );
\input_5_fu_150_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(12),
      R => '0'
    );
\input_5_fu_150_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(13),
      R => '0'
    );
\input_5_fu_150_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(14),
      R => '0'
    );
\input_5_fu_150_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(15),
      R => '0'
    );
\input_5_fu_150_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(1),
      R => '0'
    );
\input_5_fu_150_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(2),
      R => '0'
    );
\input_5_fu_150_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(3),
      R => '0'
    );
\input_5_fu_150_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(4),
      R => '0'
    );
\input_5_fu_150_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(5),
      R => '0'
    );
\input_5_fu_150_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(6),
      R => '0'
    );
\input_5_fu_150_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(7),
      R => '0'
    );
\input_5_fu_150_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(8),
      R => '0'
    );
\input_5_fu_150_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_5_fu_1500,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(9),
      R => '0'
    );
\input_6_fu_154[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \input_16_fu_194[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(0),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(2),
      O => input_6_fu_1540
    );
\input_6_fu_154_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(0),
      R => '0'
    );
\input_6_fu_154_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(10),
      R => '0'
    );
\input_6_fu_154_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(11),
      R => '0'
    );
\input_6_fu_154_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(12),
      R => '0'
    );
\input_6_fu_154_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(13),
      R => '0'
    );
\input_6_fu_154_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(14),
      R => '0'
    );
\input_6_fu_154_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(15),
      R => '0'
    );
\input_6_fu_154_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(1),
      R => '0'
    );
\input_6_fu_154_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(2),
      R => '0'
    );
\input_6_fu_154_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(3),
      R => '0'
    );
\input_6_fu_154_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(4),
      R => '0'
    );
\input_6_fu_154_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(5),
      R => '0'
    );
\input_6_fu_154_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(6),
      R => '0'
    );
\input_6_fu_154_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(7),
      R => '0'
    );
\input_6_fu_154_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(8),
      R => '0'
    );
\input_6_fu_154_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_6_fu_1540,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(9),
      R => '0'
    );
\input_7_fu_158[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \input_17_fu_198[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(0),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(2),
      O => input_7_fu_1580
    );
\input_7_fu_158_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(0),
      R => '0'
    );
\input_7_fu_158_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(10),
      R => '0'
    );
\input_7_fu_158_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(11),
      R => '0'
    );
\input_7_fu_158_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(12),
      R => '0'
    );
\input_7_fu_158_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(13),
      R => '0'
    );
\input_7_fu_158_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(14),
      R => '0'
    );
\input_7_fu_158_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(15),
      R => '0'
    );
\input_7_fu_158_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(1),
      R => '0'
    );
\input_7_fu_158_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(2),
      R => '0'
    );
\input_7_fu_158_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(3),
      R => '0'
    );
\input_7_fu_158_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(4),
      R => '0'
    );
\input_7_fu_158_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(5),
      R => '0'
    );
\input_7_fu_158_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(6),
      R => '0'
    );
\input_7_fu_158_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(7),
      R => '0'
    );
\input_7_fu_158_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(8),
      R => '0'
    );
\input_7_fu_158_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_7_fu_1580,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(9),
      R => '0'
    );
\input_8_fu_162[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \input_18_fu_202[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(0),
      I2 => trunc_ln1_reg_935(1),
      I3 => trunc_ln1_reg_935(2),
      O => input_8_fu_1620
    );
\input_8_fu_162_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(0),
      R => '0'
    );
\input_8_fu_162_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(10),
      R => '0'
    );
\input_8_fu_162_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(11),
      R => '0'
    );
\input_8_fu_162_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(12),
      R => '0'
    );
\input_8_fu_162_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(13),
      R => '0'
    );
\input_8_fu_162_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(14),
      R => '0'
    );
\input_8_fu_162_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(15),
      R => '0'
    );
\input_8_fu_162_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(1),
      R => '0'
    );
\input_8_fu_162_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(2),
      R => '0'
    );
\input_8_fu_162_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(3),
      R => '0'
    );
\input_8_fu_162_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(4),
      R => '0'
    );
\input_8_fu_162_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(5),
      R => '0'
    );
\input_8_fu_162_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(6),
      R => '0'
    );
\input_8_fu_162_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(7),
      R => '0'
    );
\input_8_fu_162_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(8),
      R => '0'
    );
\input_8_fu_162_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_8_fu_1620,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(9),
      R => '0'
    );
\input_9_fu_166[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => trunc_ln68_reg_939(2),
      I3 => trunc_ln1_reg_935(0),
      I4 => trunc_ln1_reg_935(1),
      I5 => trunc_ln1_reg_935(2),
      O => input_9_fu_1660
    );
\input_9_fu_166_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(0),
      R => '0'
    );
\input_9_fu_166_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(10),
      R => '0'
    );
\input_9_fu_166_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(11),
      R => '0'
    );
\input_9_fu_166_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(12),
      R => '0'
    );
\input_9_fu_166_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(13),
      R => '0'
    );
\input_9_fu_166_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(14),
      R => '0'
    );
\input_9_fu_166_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(15),
      R => '0'
    );
\input_9_fu_166_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(1),
      R => '0'
    );
\input_9_fu_166_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(2),
      R => '0'
    );
\input_9_fu_166_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(3),
      R => '0'
    );
\input_9_fu_166_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(4),
      R => '0'
    );
\input_9_fu_166_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(5),
      R => '0'
    );
\input_9_fu_166_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(6),
      R => '0'
    );
\input_9_fu_166_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(7),
      R => '0'
    );
\input_9_fu_166_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(8),
      R => '0'
    );
\input_9_fu_166_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_9_fu_1660,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(9),
      R => '0'
    );
\input_fu_130[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \input_15_fu_190[15]_i_2_n_0\,
      I1 => trunc_ln1_reg_935(1),
      I2 => trunc_ln1_reg_935(2),
      I3 => trunc_ln1_reg_935(0),
      O => input_fu_1300
    );
\input_fu_130_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(0),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(0),
      R => '0'
    );
\input_fu_130_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(10),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(10),
      R => '0'
    );
\input_fu_130_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(11),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(11),
      R => '0'
    );
\input_fu_130_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(12),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(12),
      R => '0'
    );
\input_fu_130_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(13),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(13),
      R => '0'
    );
\input_fu_130_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(14),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(14),
      R => '0'
    );
\input_fu_130_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(15),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(15),
      R => '0'
    );
\input_fu_130_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(1),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(1),
      R => '0'
    );
\input_fu_130_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(2),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(2),
      R => '0'
    );
\input_fu_130_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(3),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(3),
      R => '0'
    );
\input_fu_130_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(4),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(4),
      R => '0'
    );
\input_fu_130_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(5),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(5),
      R => '0'
    );
\input_fu_130_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(6),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(6),
      R => '0'
    );
\input_fu_130_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(7),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(7),
      R => '0'
    );
\input_fu_130_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(8),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(8),
      R => '0'
    );
\input_fu_130_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => input_fu_1300,
      D => \input_24_fu_226_reg[15]_0\(9),
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(9),
      R => '0'
    );
p_reg_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_42_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_43_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_44_n_0,
      O => A(7)
    );
\p_reg_reg_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_44__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_45__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_46__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(6)
    );
\p_reg_reg_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_44__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_45__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_46__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(6)
    );
p_reg_reg_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_45_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_46_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_47_n_0,
      O => A(6)
    );
\p_reg_reg_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_47__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_48__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_49__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(5)
    );
\p_reg_reg_i_11__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_47__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_48__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_49__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(5)
    );
p_reg_reg_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_48_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_49_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_50_n_0,
      O => A(5)
    );
\p_reg_reg_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_50__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_51__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_52__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(4)
    );
\p_reg_reg_i_12__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_50__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_51__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_52__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(4)
    );
p_reg_reg_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_51_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_52_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_53_n_0,
      O => A(4)
    );
\p_reg_reg_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_53__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_54__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_55__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(3)
    );
\p_reg_reg_i_13__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_53__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_54__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_55__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(3)
    );
p_reg_reg_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_54_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_55_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_56_n_0,
      O => A(3)
    );
\p_reg_reg_i_14__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_56__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_57__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_58__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(2)
    );
\p_reg_reg_i_14__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_56__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_57__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_58__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(2)
    );
p_reg_reg_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_57_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_58_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_59_n_0,
      O => A(2)
    );
\p_reg_reg_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_59__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_60__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_61__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(1)
    );
\p_reg_reg_i_15__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_59__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_60__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_61__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(1)
    );
p_reg_reg_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_60_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_61_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_62_n_0,
      O => A(1)
    );
\p_reg_reg_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_62__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_63__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_64__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(0)
    );
\p_reg_reg_i_16__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_62__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_63__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_64__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(0)
    );
p_reg_reg_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_63_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_64_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_65_n_0,
      O => A(0)
    );
\p_reg_reg_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(15),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(15),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(15),
      O => \p_reg_reg_i_17__0_n_0\
    );
\p_reg_reg_i_17__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(15),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(15),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(15),
      O => \p_reg_reg_i_17__1_n_0\
    );
p_reg_reg_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(15),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(15),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(15),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_18_n_0
    );
\p_reg_reg_i_18__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(15),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(15),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(15),
      O => \p_reg_reg_i_18__0_n_0\
    );
\p_reg_reg_i_18__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(15),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(15),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(15),
      O => \p_reg_reg_i_18__1_n_0\
    );
p_reg_reg_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(15),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(15),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(15),
      O => p_reg_reg_i_19_n_0
    );
\p_reg_reg_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(15),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(15),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(15),
      O => \p_reg_reg_i_19__0_n_0\
    );
\p_reg_reg_i_19__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(15),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(15),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(15),
      O => \p_reg_reg_i_19__1_n_0\
    );
\p_reg_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_17__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_18__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_19__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(15)
    );
\p_reg_reg_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_17__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_18__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_19__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(15)
    );
p_reg_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_18_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_19_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_20_n_0,
      O => A(15)
    );
p_reg_reg_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(15),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(15),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(15),
      O => p_reg_reg_i_20_n_0
    );
\p_reg_reg_i_20__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(14),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(14),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(14),
      O => \p_reg_reg_i_20__0_n_0\
    );
\p_reg_reg_i_20__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(14),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(14),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(14),
      O => \p_reg_reg_i_20__1_n_0\
    );
p_reg_reg_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(14),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(14),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(14),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_21_n_0
    );
\p_reg_reg_i_21__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(14),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(14),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(14),
      O => \p_reg_reg_i_21__0_n_0\
    );
\p_reg_reg_i_21__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(14),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(14),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(14),
      O => \p_reg_reg_i_21__1_n_0\
    );
p_reg_reg_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(14),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(14),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(14),
      O => p_reg_reg_i_22_n_0
    );
\p_reg_reg_i_22__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(14),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(14),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(14),
      O => \p_reg_reg_i_22__0_n_0\
    );
\p_reg_reg_i_22__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(14),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(14),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(14),
      O => \p_reg_reg_i_22__1_n_0\
    );
p_reg_reg_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(14),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(14),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(14),
      O => p_reg_reg_i_23_n_0
    );
\p_reg_reg_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(13),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(13),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(13),
      O => \p_reg_reg_i_23__0_n_0\
    );
\p_reg_reg_i_23__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(13),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(13),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(13),
      O => \p_reg_reg_i_23__1_n_0\
    );
p_reg_reg_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(13),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(13),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(13),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_24_n_0
    );
\p_reg_reg_i_24__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(13),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(13),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(13),
      O => \p_reg_reg_i_24__0_n_0\
    );
\p_reg_reg_i_24__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(13),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(13),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(13),
      O => \p_reg_reg_i_24__1_n_0\
    );
p_reg_reg_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(13),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(13),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(13),
      O => p_reg_reg_i_25_n_0
    );
\p_reg_reg_i_25__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(13),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(13),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(13),
      O => \p_reg_reg_i_25__0_n_0\
    );
\p_reg_reg_i_25__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(13),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(13),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(13),
      O => \p_reg_reg_i_25__1_n_0\
    );
p_reg_reg_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(13),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(13),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(13),
      O => p_reg_reg_i_26_n_0
    );
\p_reg_reg_i_26__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(12),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(12),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(12),
      O => \p_reg_reg_i_26__0_n_0\
    );
\p_reg_reg_i_26__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(12),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(12),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(12),
      O => \p_reg_reg_i_26__1_n_0\
    );
p_reg_reg_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(12),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(12),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(12),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_27_n_0
    );
\p_reg_reg_i_27__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(12),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(12),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(12),
      O => \p_reg_reg_i_27__0_n_0\
    );
\p_reg_reg_i_27__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(12),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(12),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(12),
      O => \p_reg_reg_i_27__1_n_0\
    );
p_reg_reg_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(12),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(12),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(12),
      O => p_reg_reg_i_28_n_0
    );
\p_reg_reg_i_28__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(12),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(12),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(12),
      O => \p_reg_reg_i_28__0_n_0\
    );
\p_reg_reg_i_28__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(12),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(12),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(12),
      O => \p_reg_reg_i_28__1_n_0\
    );
p_reg_reg_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(12),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(12),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(12),
      O => p_reg_reg_i_29_n_0
    );
\p_reg_reg_i_29__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(11),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(11),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(11),
      O => \p_reg_reg_i_29__0_n_0\
    );
\p_reg_reg_i_29__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(11),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(11),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(11),
      O => \p_reg_reg_i_29__1_n_0\
    );
\p_reg_reg_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_20__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_21__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_22__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(14)
    );
\p_reg_reg_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_20__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_21__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_22__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(14)
    );
p_reg_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_21_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_22_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_23_n_0,
      O => A(14)
    );
p_reg_reg_i_30: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(11),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(11),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(11),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_30_n_0
    );
\p_reg_reg_i_30__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(11),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(11),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(11),
      O => \p_reg_reg_i_30__0_n_0\
    );
\p_reg_reg_i_30__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(11),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(11),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(11),
      O => \p_reg_reg_i_30__1_n_0\
    );
p_reg_reg_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(11),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(11),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(11),
      O => p_reg_reg_i_31_n_0
    );
\p_reg_reg_i_31__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(11),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(11),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(11),
      O => \p_reg_reg_i_31__0_n_0\
    );
\p_reg_reg_i_31__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(11),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(11),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(11),
      O => \p_reg_reg_i_31__1_n_0\
    );
p_reg_reg_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(11),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(11),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(11),
      O => p_reg_reg_i_32_n_0
    );
\p_reg_reg_i_32__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(10),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(10),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(10),
      O => \p_reg_reg_i_32__0_n_0\
    );
\p_reg_reg_i_32__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(10),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(10),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(10),
      O => \p_reg_reg_i_32__1_n_0\
    );
p_reg_reg_i_33: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(10),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(10),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(10),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_33_n_0
    );
\p_reg_reg_i_33__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(10),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(10),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(10),
      O => \p_reg_reg_i_33__0_n_0\
    );
\p_reg_reg_i_33__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(10),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(10),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(10),
      O => \p_reg_reg_i_33__1_n_0\
    );
p_reg_reg_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(10),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(10),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(10),
      O => p_reg_reg_i_34_n_0
    );
\p_reg_reg_i_34__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(10),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(10),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(10),
      O => \p_reg_reg_i_34__0_n_0\
    );
\p_reg_reg_i_34__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(10),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(10),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(10),
      O => \p_reg_reg_i_34__1_n_0\
    );
p_reg_reg_i_35: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(10),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(10),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(10),
      O => p_reg_reg_i_35_n_0
    );
\p_reg_reg_i_35__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(9),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(9),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(9),
      O => \p_reg_reg_i_35__0_n_0\
    );
\p_reg_reg_i_35__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(9),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(9),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(9),
      O => \p_reg_reg_i_35__1_n_0\
    );
p_reg_reg_i_36: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(9),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(9),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(9),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_36_n_0
    );
\p_reg_reg_i_36__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(9),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(9),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(9),
      O => \p_reg_reg_i_36__0_n_0\
    );
\p_reg_reg_i_36__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(9),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(9),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(9),
      O => \p_reg_reg_i_36__1_n_0\
    );
p_reg_reg_i_37: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(9),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(9),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(9),
      O => p_reg_reg_i_37_n_0
    );
\p_reg_reg_i_37__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(9),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(9),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(9),
      O => \p_reg_reg_i_37__0_n_0\
    );
\p_reg_reg_i_37__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(9),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(9),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(9),
      O => \p_reg_reg_i_37__1_n_0\
    );
p_reg_reg_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(9),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(9),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(9),
      O => p_reg_reg_i_38_n_0
    );
\p_reg_reg_i_38__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(8),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(8),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(8),
      O => \p_reg_reg_i_38__0_n_0\
    );
\p_reg_reg_i_38__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(8),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(8),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(8),
      O => \p_reg_reg_i_38__1_n_0\
    );
p_reg_reg_i_39: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(8),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(8),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(8),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_39_n_0
    );
\p_reg_reg_i_39__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(8),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(8),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(8),
      O => \p_reg_reg_i_39__0_n_0\
    );
\p_reg_reg_i_39__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(8),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(8),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(8),
      O => \p_reg_reg_i_39__1_n_0\
    );
\p_reg_reg_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_23__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_24__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_25__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(13)
    );
\p_reg_reg_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_23__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_24__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_25__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(13)
    );
p_reg_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_24_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_25_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_26_n_0,
      O => A(13)
    );
p_reg_reg_i_40: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(8),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(8),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(8),
      O => p_reg_reg_i_40_n_0
    );
\p_reg_reg_i_40__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(8),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(8),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(8),
      O => \p_reg_reg_i_40__0_n_0\
    );
\p_reg_reg_i_40__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(8),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(8),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(8),
      O => \p_reg_reg_i_40__1_n_0\
    );
p_reg_reg_i_41: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(8),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(8),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(8),
      O => p_reg_reg_i_41_n_0
    );
\p_reg_reg_i_41__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(7),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(7),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(7),
      O => \p_reg_reg_i_41__0_n_0\
    );
\p_reg_reg_i_41__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(7),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(7),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(7),
      O => \p_reg_reg_i_41__1_n_0\
    );
p_reg_reg_i_42: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(7),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(7),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(7),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_42_n_0
    );
\p_reg_reg_i_42__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(7),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(7),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(7),
      O => \p_reg_reg_i_42__0_n_0\
    );
\p_reg_reg_i_42__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(7),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(7),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(7),
      O => \p_reg_reg_i_42__1_n_0\
    );
p_reg_reg_i_43: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(7),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(7),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(7),
      O => p_reg_reg_i_43_n_0
    );
\p_reg_reg_i_43__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(7),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(7),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(7),
      O => \p_reg_reg_i_43__0_n_0\
    );
\p_reg_reg_i_43__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(7),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(7),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(7),
      O => \p_reg_reg_i_43__1_n_0\
    );
p_reg_reg_i_44: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(7),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(7),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(7),
      O => p_reg_reg_i_44_n_0
    );
\p_reg_reg_i_44__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(6),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(6),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(6),
      O => \p_reg_reg_i_44__0_n_0\
    );
\p_reg_reg_i_44__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(6),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(6),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(6),
      O => \p_reg_reg_i_44__1_n_0\
    );
p_reg_reg_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(6),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(6),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(6),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_45_n_0
    );
\p_reg_reg_i_45__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(6),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(6),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(6),
      O => \p_reg_reg_i_45__0_n_0\
    );
\p_reg_reg_i_45__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(6),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(6),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(6),
      O => \p_reg_reg_i_45__1_n_0\
    );
p_reg_reg_i_46: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(6),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(6),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(6),
      O => p_reg_reg_i_46_n_0
    );
\p_reg_reg_i_46__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(6),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(6),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(6),
      O => \p_reg_reg_i_46__0_n_0\
    );
\p_reg_reg_i_46__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(6),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(6),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(6),
      O => \p_reg_reg_i_46__1_n_0\
    );
p_reg_reg_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(6),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(6),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(6),
      O => p_reg_reg_i_47_n_0
    );
\p_reg_reg_i_47__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(5),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(5),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(5),
      O => \p_reg_reg_i_47__0_n_0\
    );
\p_reg_reg_i_47__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(5),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(5),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(5),
      O => \p_reg_reg_i_47__1_n_0\
    );
p_reg_reg_i_48: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(5),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(5),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(5),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_48_n_0
    );
\p_reg_reg_i_48__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(5),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(5),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(5),
      O => \p_reg_reg_i_48__0_n_0\
    );
\p_reg_reg_i_48__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(5),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(5),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(5),
      O => \p_reg_reg_i_48__1_n_0\
    );
p_reg_reg_i_49: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(5),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(5),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(5),
      O => p_reg_reg_i_49_n_0
    );
\p_reg_reg_i_49__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(5),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(5),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(5),
      O => \p_reg_reg_i_49__0_n_0\
    );
\p_reg_reg_i_49__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(5),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(5),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(5),
      O => \p_reg_reg_i_49__1_n_0\
    );
\p_reg_reg_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_26__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_27__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_28__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(12)
    );
\p_reg_reg_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_26__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_27__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_28__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(12)
    );
p_reg_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_27_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_28_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_29_n_0,
      O => A(12)
    );
p_reg_reg_i_50: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(5),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(5),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(5),
      O => p_reg_reg_i_50_n_0
    );
\p_reg_reg_i_50__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(4),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(4),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(4),
      O => \p_reg_reg_i_50__0_n_0\
    );
\p_reg_reg_i_50__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(4),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(4),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(4),
      O => \p_reg_reg_i_50__1_n_0\
    );
p_reg_reg_i_51: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(4),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(4),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(4),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_51_n_0
    );
\p_reg_reg_i_51__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(4),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(4),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(4),
      O => \p_reg_reg_i_51__0_n_0\
    );
\p_reg_reg_i_51__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(4),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(4),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(4),
      O => \p_reg_reg_i_51__1_n_0\
    );
p_reg_reg_i_52: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(4),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(4),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(4),
      O => p_reg_reg_i_52_n_0
    );
\p_reg_reg_i_52__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(4),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(4),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(4),
      O => \p_reg_reg_i_52__0_n_0\
    );
\p_reg_reg_i_52__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(4),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(4),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(4),
      O => \p_reg_reg_i_52__1_n_0\
    );
p_reg_reg_i_53: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(4),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(4),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(4),
      O => p_reg_reg_i_53_n_0
    );
\p_reg_reg_i_53__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(3),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(3),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(3),
      O => \p_reg_reg_i_53__0_n_0\
    );
\p_reg_reg_i_53__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(3),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(3),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(3),
      O => \p_reg_reg_i_53__1_n_0\
    );
p_reg_reg_i_54: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(3),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(3),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(3),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_54_n_0
    );
\p_reg_reg_i_54__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(3),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(3),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(3),
      O => \p_reg_reg_i_54__0_n_0\
    );
\p_reg_reg_i_54__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(3),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(3),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(3),
      O => \p_reg_reg_i_54__1_n_0\
    );
p_reg_reg_i_55: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(3),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(3),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(3),
      O => p_reg_reg_i_55_n_0
    );
\p_reg_reg_i_55__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(3),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(3),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(3),
      O => \p_reg_reg_i_55__0_n_0\
    );
\p_reg_reg_i_55__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(3),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(3),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(3),
      O => \p_reg_reg_i_55__1_n_0\
    );
p_reg_reg_i_56: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(3),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(3),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(3),
      O => p_reg_reg_i_56_n_0
    );
\p_reg_reg_i_56__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(2),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(2),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(2),
      O => \p_reg_reg_i_56__0_n_0\
    );
\p_reg_reg_i_56__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(2),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(2),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(2),
      O => \p_reg_reg_i_56__1_n_0\
    );
p_reg_reg_i_57: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(2),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(2),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(2),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_57_n_0
    );
\p_reg_reg_i_57__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(2),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(2),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(2),
      O => \p_reg_reg_i_57__0_n_0\
    );
\p_reg_reg_i_57__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(2),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(2),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(2),
      O => \p_reg_reg_i_57__1_n_0\
    );
p_reg_reg_i_58: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(2),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(2),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(2),
      O => p_reg_reg_i_58_n_0
    );
\p_reg_reg_i_58__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(2),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(2),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(2),
      O => \p_reg_reg_i_58__0_n_0\
    );
\p_reg_reg_i_58__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(2),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(2),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(2),
      O => \p_reg_reg_i_58__1_n_0\
    );
p_reg_reg_i_59: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(2),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(2),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(2),
      O => p_reg_reg_i_59_n_0
    );
\p_reg_reg_i_59__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(1),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(1),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(1),
      O => \p_reg_reg_i_59__0_n_0\
    );
\p_reg_reg_i_59__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(1),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(1),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(1),
      O => \p_reg_reg_i_59__1_n_0\
    );
\p_reg_reg_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_29__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_30__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_31__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(11)
    );
\p_reg_reg_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_29__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_30__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_31__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(11)
    );
p_reg_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_30_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_31_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_32_n_0,
      O => A(11)
    );
p_reg_reg_i_60: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(1),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(1),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(1),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_60_n_0
    );
\p_reg_reg_i_60__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(1),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(1),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(1),
      O => \p_reg_reg_i_60__0_n_0\
    );
\p_reg_reg_i_60__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(1),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(1),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(1),
      O => \p_reg_reg_i_60__1_n_0\
    );
p_reg_reg_i_61: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(1),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(1),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(1),
      O => p_reg_reg_i_61_n_0
    );
\p_reg_reg_i_61__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(1),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(1),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(1),
      O => \p_reg_reg_i_61__0_n_0\
    );
\p_reg_reg_i_61__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(1),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(1),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(1),
      O => \p_reg_reg_i_61__1_n_0\
    );
p_reg_reg_i_62: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(1),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(1),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(1),
      O => p_reg_reg_i_62_n_0
    );
\p_reg_reg_i_62__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(0),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(0),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(0),
      O => \p_reg_reg_i_62__0_n_0\
    );
\p_reg_reg_i_62__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out(0),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out(0),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(0),
      O => \p_reg_reg_i_62__1_n_0\
    );
p_reg_reg_i_63: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB88B8B8"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out(0),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out(0),
      I3 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out(0),
      I4 => \tmp_15_reg_1628_reg[15]_0\(0),
      O => p_reg_reg_i_63_n_0
    );
\p_reg_reg_i_63__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(0),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(0),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(0),
      O => \p_reg_reg_i_63__0_n_0\
    );
\p_reg_reg_i_63__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out(0),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out(0),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(0),
      O => \p_reg_reg_i_63__1_n_0\
    );
p_reg_reg_i_64: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47444777"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out(0),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out(0),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out(0),
      O => p_reg_reg_i_64_n_0
    );
\p_reg_reg_i_64__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(0),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(0),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(0),
      O => \p_reg_reg_i_64__0_n_0\
    );
\p_reg_reg_i_64__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out(0),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out(0),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(0),
      O => \p_reg_reg_i_64__1_n_0\
    );
p_reg_reg_i_65: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out(0),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out(0),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out(0),
      O => p_reg_reg_i_65_n_0
    );
\p_reg_reg_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_32__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_33__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_34__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(10)
    );
\p_reg_reg_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_32__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_33__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_34__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(10)
    );
p_reg_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_33_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_34_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_35_n_0,
      O => A(10)
    );
\p_reg_reg_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_35__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_36__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_37__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(9)
    );
\p_reg_reg_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_35__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_36__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_37__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(9)
    );
p_reg_reg_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_36_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_37_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_38_n_0,
      O => A(9)
    );
\p_reg_reg_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_38__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_39__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_40__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(8)
    );
\p_reg_reg_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_38__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_39__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_40__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(8)
    );
p_reg_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8B88"
    )
        port map (
      I0 => p_reg_reg_i_39_n_0,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_40_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_41_n_0,
      O => A(8)
    );
\p_reg_reg_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_41__0_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_42__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_43__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]\(7)
    );
\p_reg_reg_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \p_reg_reg_i_41__1_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_42__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_43__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(7)
    );
\phi_mul_fu_122_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(10),
      Q => \phi_mul_fu_122_reg_n_0_[10]\,
      R => '0'
    );
\phi_mul_fu_122_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(2),
      Q => \phi_mul_fu_122_reg_n_0_[2]\,
      R => '0'
    );
\phi_mul_fu_122_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => flow_control_loop_pipe_sequential_init_U_n_29,
      Q => \phi_mul_fu_122_reg_n_0_[3]\,
      R => '0'
    );
\phi_mul_fu_122_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(4),
      Q => \phi_mul_fu_122_reg_n_0_[4]\,
      R => '0'
    );
\phi_mul_fu_122_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(5),
      Q => \phi_mul_fu_122_reg_n_0_[5]\,
      R => '0'
    );
\phi_mul_fu_122_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(6),
      Q => \phi_mul_fu_122_reg_n_0_[6]\,
      R => '0'
    );
\phi_mul_fu_122_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(7),
      Q => \phi_mul_fu_122_reg_n_0_[7]\,
      R => '0'
    );
\phi_mul_fu_122_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(8),
      Q => \phi_mul_fu_122_reg_n_0_[8]\,
      R => '0'
    );
\phi_mul_fu_122_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => add_ln66_fu_464_p2(9),
      Q => \phi_mul_fu_122_reg_n_0_[9]\,
      R => '0'
    );
\phi_urem_fu_118_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => select_ln47_fu_509_p3(0),
      Q => phi_urem_fu_118(0),
      R => '0'
    );
\phi_urem_fu_118_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => flow_control_loop_pipe_sequential_init_U_n_30,
      Q => phi_urem_fu_118(1),
      R => '0'
    );
\phi_urem_fu_118_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => select_ln47_fu_509_p3(2),
      Q => phi_urem_fu_118(2),
      R => '0'
    );
\phi_urem_fu_118_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => select_ln47_fu_509_p3(3),
      Q => phi_urem_fu_118(3),
      R => '0'
    );
\phi_urem_fu_118_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => select_ln47_fu_509_p3(4),
      Q => phi_urem_fu_118(4),
      R => '0'
    );
\rem_fu_126_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => i_fu_455_p2(0),
      Q => rem_fu_126(0),
      R => '0'
    );
\rem_fu_126_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => flow_control_loop_pipe_sequential_init_U_n_28,
      Q => rem_fu_126(1),
      R => '0'
    );
\rem_fu_126_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => flow_control_loop_pipe_sequential_init_U_n_27,
      Q => rem_fu_126(2),
      R => '0'
    );
\rem_fu_126_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => i_fu_455_p2(3),
      Q => rem_fu_126(3),
      R => '0'
    );
\rem_fu_126_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_26,
      D => i_fu_455_p2(4),
      Q => rem_fu_126(4),
      R => '0'
    );
\tmp_15_reg_1628[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[0]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_63_n_0,
      I3 => p_reg_reg_i_64_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[0]_0\
    );
\tmp_15_reg_1628[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(0),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(0),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(0),
      O => \tmp_15_reg_1628[0]_i_2_n_0\
    );
\tmp_15_reg_1628[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[10]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_33_n_0,
      I3 => p_reg_reg_i_34_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[10]_0\
    );
\tmp_15_reg_1628[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(10),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(10),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(10),
      O => \tmp_15_reg_1628[10]_i_2_n_0\
    );
\tmp_15_reg_1628[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B888B"
    )
        port map (
      I0 => \tmp_15_reg_1628[11]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_31_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_30_n_0,
      O => \input_17_fu_198_reg[11]_0\
    );
\tmp_15_reg_1628[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(11),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(11),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(11),
      O => \tmp_15_reg_1628[11]_i_2_n_0\
    );
\tmp_15_reg_1628[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[12]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_27_n_0,
      I3 => p_reg_reg_i_28_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[12]_0\
    );
\tmp_15_reg_1628[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(12),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(12),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(12),
      O => \tmp_15_reg_1628[12]_i_2_n_0\
    );
\tmp_15_reg_1628[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[13]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_24_n_0,
      I3 => p_reg_reg_i_25_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[13]_0\
    );
\tmp_15_reg_1628[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(13),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(13),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(13),
      O => \tmp_15_reg_1628[13]_i_2_n_0\
    );
\tmp_15_reg_1628[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[14]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_21_n_0,
      I3 => p_reg_reg_i_22_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[14]_0\
    );
\tmp_15_reg_1628[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(14),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(14),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(14),
      O => \tmp_15_reg_1628[14]_i_2_n_0\
    );
\tmp_15_reg_1628[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[15]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_18_n_0,
      I3 => p_reg_reg_i_19_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[15]_0\
    );
\tmp_15_reg_1628[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(15),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(15),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(15),
      O => \tmp_15_reg_1628[15]_i_2_n_0\
    );
\tmp_15_reg_1628[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[1]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_60_n_0,
      I3 => p_reg_reg_i_61_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[1]_0\
    );
\tmp_15_reg_1628[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(1),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(1),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(1),
      O => \tmp_15_reg_1628[1]_i_2_n_0\
    );
\tmp_15_reg_1628[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[2]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_57_n_0,
      I3 => p_reg_reg_i_58_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[2]_0\
    );
\tmp_15_reg_1628[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(2),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(2),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(2),
      O => \tmp_15_reg_1628[2]_i_2_n_0\
    );
\tmp_15_reg_1628[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[3]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_54_n_0,
      I3 => p_reg_reg_i_55_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[3]_0\
    );
\tmp_15_reg_1628[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(3),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(3),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(3),
      O => \tmp_15_reg_1628[3]_i_2_n_0\
    );
\tmp_15_reg_1628[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[4]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_51_n_0,
      I3 => p_reg_reg_i_52_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[4]_0\
    );
\tmp_15_reg_1628[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(4),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(4),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(4),
      O => \tmp_15_reg_1628[4]_i_2_n_0\
    );
\tmp_15_reg_1628[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[5]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_48_n_0,
      I3 => p_reg_reg_i_49_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[5]_0\
    );
\tmp_15_reg_1628[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(5),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(5),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(5),
      O => \tmp_15_reg_1628[5]_i_2_n_0\
    );
\tmp_15_reg_1628[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B888B"
    )
        port map (
      I0 => \tmp_15_reg_1628[6]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_46_n_0,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_45_n_0,
      O => \input_17_fu_198_reg[6]_0\
    );
\tmp_15_reg_1628[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(6),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(6),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(6),
      O => \tmp_15_reg_1628[6]_i_2_n_0\
    );
\tmp_15_reg_1628[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[7]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_42_n_0,
      I3 => p_reg_reg_i_43_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[7]_0\
    );
\tmp_15_reg_1628[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(7),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(7),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(7),
      O => \tmp_15_reg_1628[7]_i_2_n_0\
    );
\tmp_15_reg_1628[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[8]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_39_n_0,
      I3 => p_reg_reg_i_40_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[8]_0\
    );
\tmp_15_reg_1628[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(8),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(8),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(8),
      O => \tmp_15_reg_1628[8]_i_2_n_0\
    );
\tmp_15_reg_1628[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B888BB"
    )
        port map (
      I0 => \tmp_15_reg_1628[9]_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => p_reg_reg_i_36_n_0,
      I3 => p_reg_reg_i_37_n_0,
      I4 => select_ln89_fu_561_p3(0),
      O => \input_17_fu_198_reg[9]_0\
    );
\tmp_15_reg_1628[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(9),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out(9),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(9),
      O => \tmp_15_reg_1628[9]_i_2_n_0\
    );
\tmp_18_reg_1643[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[0]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_62__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_63__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_30\
    );
\tmp_18_reg_1643[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(0),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(0),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(0),
      O => \tmp_18_reg_1643[0]_i_2_n_0\
    );
\tmp_18_reg_1643[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[10]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_32__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_33__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_10\
    );
\tmp_18_reg_1643[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(10),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(10),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(10),
      O => \tmp_18_reg_1643[10]_i_2_n_0\
    );
\tmp_18_reg_1643[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[11]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_29__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_30__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_8\
    );
\tmp_18_reg_1643[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(11),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(11),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(11),
      O => \tmp_18_reg_1643[11]_i_2_n_0\
    );
\tmp_18_reg_1643[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[12]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_26__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_27__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_6\
    );
\tmp_18_reg_1643[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(12),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(12),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(12),
      O => \tmp_18_reg_1643[12]_i_2_n_0\
    );
\tmp_18_reg_1643[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[13]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_23__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_24__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_4\
    );
\tmp_18_reg_1643[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(13),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(13),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(13),
      O => \tmp_18_reg_1643[13]_i_2_n_0\
    );
\tmp_18_reg_1643[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[14]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_20__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_21__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_2\
    );
\tmp_18_reg_1643[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(14),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(14),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(14),
      O => \tmp_18_reg_1643[14]_i_2_n_0\
    );
\tmp_18_reg_1643[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[15]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_17__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_18__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_0\
    );
\tmp_18_reg_1643[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(15),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(15),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(15),
      O => \tmp_18_reg_1643[15]_i_2_n_0\
    );
\tmp_18_reg_1643[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[1]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_59__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_60__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_28\
    );
\tmp_18_reg_1643[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(1),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(1),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(1),
      O => \tmp_18_reg_1643[1]_i_2_n_0\
    );
\tmp_18_reg_1643[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[2]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_56__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_57__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_26\
    );
\tmp_18_reg_1643[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(2),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(2),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(2),
      O => \tmp_18_reg_1643[2]_i_2_n_0\
    );
\tmp_18_reg_1643[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[3]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_53__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_54__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_24\
    );
\tmp_18_reg_1643[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(3),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(3),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(3),
      O => \tmp_18_reg_1643[3]_i_2_n_0\
    );
\tmp_18_reg_1643[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[4]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_50__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_51__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_22\
    );
\tmp_18_reg_1643[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(4),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(4),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(4),
      O => \tmp_18_reg_1643[4]_i_2_n_0\
    );
\tmp_18_reg_1643[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[5]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_47__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_48__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_20\
    );
\tmp_18_reg_1643[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(5),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(5),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(5),
      O => \tmp_18_reg_1643[5]_i_2_n_0\
    );
\tmp_18_reg_1643[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[6]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_44__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_45__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_18\
    );
\tmp_18_reg_1643[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(6),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(6),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(6),
      O => \tmp_18_reg_1643[6]_i_2_n_0\
    );
\tmp_18_reg_1643[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[7]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_41__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_42__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_16\
    );
\tmp_18_reg_1643[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(7),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(7),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(7),
      O => \tmp_18_reg_1643[7]_i_2_n_0\
    );
\tmp_18_reg_1643[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[8]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_38__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_39__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_14\
    );
\tmp_18_reg_1643[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(8),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(8),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(8),
      O => \tmp_18_reg_1643[8]_i_2_n_0\
    );
\tmp_18_reg_1643[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_18_reg_1643[9]_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \p_reg_reg_i_35__0_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_36__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_12\
    );
\tmp_18_reg_1643[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(9),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(9),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out(9),
      O => \tmp_18_reg_1643[9]_i_2_n_0\
    );
\tmp_20_reg_1658[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[0]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_62__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_63__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(0)
    );
\tmp_20_reg_1658[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(0),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(0),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(0),
      O => \tmp_20_reg_1658[0]_i_2_n_0\
    );
\tmp_20_reg_1658[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[10]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_32__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_33__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(10)
    );
\tmp_20_reg_1658[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(10),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(10),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(10),
      O => \tmp_20_reg_1658[10]_i_2_n_0\
    );
\tmp_20_reg_1658[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[11]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_29__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_30__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(11)
    );
\tmp_20_reg_1658[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(11),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(11),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(11),
      O => \tmp_20_reg_1658[11]_i_2_n_0\
    );
\tmp_20_reg_1658[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[12]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_26__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_27__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(12)
    );
\tmp_20_reg_1658[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(12),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(12),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(12),
      O => \tmp_20_reg_1658[12]_i_2_n_0\
    );
\tmp_20_reg_1658[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[13]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_23__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_24__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(13)
    );
\tmp_20_reg_1658[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(13),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(13),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(13),
      O => \tmp_20_reg_1658[13]_i_2_n_0\
    );
\tmp_20_reg_1658[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[14]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_20__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_21__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(14)
    );
\tmp_20_reg_1658[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(14),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(14),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(14),
      O => \tmp_20_reg_1658[14]_i_2_n_0\
    );
\tmp_20_reg_1658[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[15]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_17__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_18__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(15)
    );
\tmp_20_reg_1658[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(15),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(15),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(15),
      O => \tmp_20_reg_1658[15]_i_2_n_0\
    );
\tmp_20_reg_1658[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[1]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_59__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_60__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(1)
    );
\tmp_20_reg_1658[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(1),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(1),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(1),
      O => \tmp_20_reg_1658[1]_i_2_n_0\
    );
\tmp_20_reg_1658[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[2]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_56__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_57__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(2)
    );
\tmp_20_reg_1658[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(2),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(2),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(2),
      O => \tmp_20_reg_1658[2]_i_2_n_0\
    );
\tmp_20_reg_1658[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[3]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_53__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_54__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(3)
    );
\tmp_20_reg_1658[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(3),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(3),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(3),
      O => \tmp_20_reg_1658[3]_i_2_n_0\
    );
\tmp_20_reg_1658[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[4]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_50__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_51__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(4)
    );
\tmp_20_reg_1658[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(4),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(4),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(4),
      O => \tmp_20_reg_1658[4]_i_2_n_0\
    );
\tmp_20_reg_1658[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[5]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_47__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_48__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(5)
    );
\tmp_20_reg_1658[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(5),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(5),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(5),
      O => \tmp_20_reg_1658[5]_i_2_n_0\
    );
\tmp_20_reg_1658[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[6]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_44__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_45__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(6)
    );
\tmp_20_reg_1658[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(6),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(6),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(6),
      O => \tmp_20_reg_1658[6]_i_2_n_0\
    );
\tmp_20_reg_1658[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[7]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_41__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_42__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(7)
    );
\tmp_20_reg_1658[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(7),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(7),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(7),
      O => \tmp_20_reg_1658[7]_i_2_n_0\
    );
\tmp_20_reg_1658[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[8]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_38__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_39__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(8)
    );
\tmp_20_reg_1658[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(8),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(8),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(8),
      O => \tmp_20_reg_1658[8]_i_2_n_0\
    );
\tmp_20_reg_1658[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_20_reg_1658[9]_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \p_reg_reg_i_35__1_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_36__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(9)
    );
\tmp_20_reg_1658[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out(9),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out(9),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out(9),
      O => \tmp_20_reg_1658[9]_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[0]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_63_n_0,
      O => \input_22_fu_218_reg[0]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(0),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(0),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(0),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[10]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_33_n_0,
      O => \input_22_fu_218_reg[10]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(10),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(10),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(10),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[11]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_30_n_0,
      O => \input_22_fu_218_reg[11]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(11),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(11),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(11),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[12]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_27_n_0,
      O => \input_22_fu_218_reg[12]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(12),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(12),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(12),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[13]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_24_n_0,
      O => \input_22_fu_218_reg[13]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(13),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(13),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(13),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[14]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_21_n_0,
      O => \input_22_fu_218_reg[14]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(14),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(14),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(14),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[15]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_18_n_0,
      O => \input_22_fu_218_reg[15]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(15),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(15),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(15),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[1]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_60_n_0,
      O => \input_22_fu_218_reg[1]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(1),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(1),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(1),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[2]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_57_n_0,
      O => \input_22_fu_218_reg[2]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(2),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(2),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(2),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[3]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_54_n_0,
      O => \input_22_fu_218_reg[3]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(3),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(3),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(3),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[4]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_51_n_0,
      O => \input_22_fu_218_reg[4]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(4),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(4),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(4),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[5]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_48_n_0,
      O => \input_22_fu_218_reg[5]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(5),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(5),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(5),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[6]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_45_n_0,
      O => \input_22_fu_218_reg[6]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(6),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(6),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(6),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[7]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_42_n_0,
      O => \input_22_fu_218_reg[7]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(7),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(7),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(7),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[8]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_39_n_0,
      O => \input_22_fu_218_reg[8]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(8),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(8),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(8),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2_n_0\,
      I1 => select_ln89_fu_561_p3(1),
      I2 => \tmp_15_reg_1628[9]_i_2_n_0\,
      I3 => select_ln89_fu_561_p3(0),
      I4 => p_reg_reg_i_36_n_0,
      O => \input_22_fu_218_reg[9]_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(9),
      I1 => \tmp_15_reg_1628_reg[15]\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out(9),
      I3 => \tmp_15_reg_1628_reg[15]_0\(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(9),
      O => \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[0]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_62__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_31\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(0),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(0),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(0),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[10]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_32__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_11\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(10),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(10),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(10),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[11]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_29__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_9\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(11),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(11),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(11),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[12]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_26__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_7\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(12),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(12),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(12),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[13]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_23__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_5\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(13),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(13),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(13),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[14]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_20__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_3\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(14),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(14),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(14),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[15]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_17__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_1\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(15),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(15),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(15),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[1]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_59__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_29\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(1),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(1),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(1),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[2]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_56__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_27\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(2),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(2),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(2),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[3]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_53__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_25\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(3),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(3),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(3),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[4]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_50__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_23\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(4),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(4),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(4),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[5]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_47__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_21\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(5),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(5),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(5),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[6]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_44__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_19\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(6),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(6),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(6),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[7]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_41__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_17\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(7),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(7),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(7),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[8]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_38__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_15\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(8),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(8),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(8),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2_n_0\,
      I1 => \tmp_18_reg_1643_reg[15]\,
      I2 => \tmp_18_reg_1643[9]_i_2_n_0\,
      I3 => \tmp_18_reg_1643_reg[15]_0\,
      I4 => \p_reg_reg_i_35__0_n_0\,
      O => \select_ln89_reg_1613_reg[1]_13\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(9),
      I1 => sel(1),
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(9),
      I3 => sel(0),
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out(9),
      O => \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[0]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_62__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(0),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(0),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(0),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[10]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_32__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(10),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(10),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(10),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[11]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_29__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(11),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(11),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(11),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[12]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_26__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(12),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(12),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(12),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[13]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_23__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(13),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(13),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(13),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[14]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_20__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(14),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(14),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(14),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[15]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_17__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(15),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(15),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(15),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[1]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_59__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(1),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(1),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(1),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[2]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_56__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(2),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(2),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(2),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[3]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_53__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(3),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(3),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(3),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[4]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_50__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(4),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(4),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(4),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[5]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_47__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(5),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(5),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(5),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[6]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_44__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(6),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(6),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(6),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[7]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_41__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(7),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(7),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(7),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[8]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_38__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(8),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(8),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(8),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2_n_0\,
      I1 => \tmp_20_reg_1658_reg[15]\,
      I2 => \tmp_20_reg_1658[9]_i_2_n_0\,
      I3 => \tmp_20_reg_1658_reg[15]_0\,
      I4 => \p_reg_reg_i_35__1_n_0\,
      O => \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out(9),
      I1 => \tmp_20_reg_1658_reg[15]_1\,
      I2 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out(9),
      I3 => \tmp_20_reg_1658_reg[15]_2\,
      I4 => grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out(9),
      O => \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2_n_0\
    );
\trunc_ln1_reg_935_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_mul_load(8),
      Q => trunc_ln1_reg_935(0),
      R => '0'
    );
\trunc_ln1_reg_935_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_mul_load(9),
      Q => trunc_ln1_reg_935(1),
      R => '0'
    );
\trunc_ln1_reg_935_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_mul_load(10),
      Q => trunc_ln1_reg_935(2),
      R => '0'
    );
\trunc_ln68_reg_939_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_urem_load(0),
      Q => trunc_ln68_reg_939(0),
      R => '0'
    );
\trunc_ln68_reg_939_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_urem_load(1),
      Q => trunc_ln68_reg_939(1),
      R => '0'
    );
\trunc_ln68_reg_939_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_urem_load(2),
      Q => trunc_ln68_reg_939(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_WEIGHTS is
  port (
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : out STD_LOGIC;
    CEB1 : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \empty_26_fu_126_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \empty_25_fu_122_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \empty_24_fu_118_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \empty_23_fu_114_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \empty_22_fu_110_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \empty_21_fu_106_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \empty_20_fu_102_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \empty_19_fu_98_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \phi_mul14_fu_86_reg[1]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_done_reg1 : in STD_LOGIC;
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg : in STD_LOGIC;
    ap_done_cache : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \empty_26_fu_126_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_WEIGHTS : entity is "conv2d_conv2d_Pipeline_READ_WEIGHTS";
end cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_WEIGHTS;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_WEIGHTS is
  signal add_ln81_fu_248_p2 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal ap_sig_allocacmp_phi_mul14_load : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal ap_sig_allocacmp_phi_urem16_load : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal empty_19_fu_980 : STD_LOGIC;
  signal empty_20_fu_1020 : STD_LOGIC;
  signal empty_21_fu_1060 : STD_LOGIC;
  signal empty_22_fu_1100 : STD_LOGIC;
  signal empty_23_fu_1140 : STD_LOGIC;
  signal empty_24_fu_1180 : STD_LOGIC;
  signal empty_25_fu_1220 : STD_LOGIC;
  signal empty_26_fu_1260 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_0 : STD_LOGIC;
  signal i_fu_239_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal phi_mul14_fu_86 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \phi_mul14_fu_86_reg_n_0_[1]\ : STD_LOGIC;
  signal \phi_mul14_fu_86_reg_n_0_[2]\ : STD_LOGIC;
  signal \phi_mul14_fu_86_reg_n_0_[3]\ : STD_LOGIC;
  signal \phi_mul14_fu_86_reg_n_0_[4]\ : STD_LOGIC;
  signal \phi_mul14_fu_86_reg_n_0_[5]\ : STD_LOGIC;
  signal \phi_mul14_fu_86_reg_n_0_[6]\ : STD_LOGIC;
  signal \phi_mul14_fu_86_reg_n_0_[7]\ : STD_LOGIC;
  signal phi_urem16_fu_82 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rem_fu_90 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal select_ln73_fu_289_p3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal trunc_ln4_reg_475 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal trunc_ln83_reg_479 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
ack_in_t_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \ap_CS_fsm_reg[3]\(1),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(0),
      O => \ap_CS_fsm_reg[2]\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_0,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
\empty_19_fu_98[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => trunc_ln83_reg_479(1),
      I1 => trunc_ln83_reg_479(0),
      I2 => trunc_ln4_reg_475(0),
      I3 => trunc_ln4_reg_475(1),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => empty_19_fu_980
    );
\empty_19_fu_98_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_19_fu_98_reg[15]_0\(0),
      R => '0'
    );
\empty_19_fu_98_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_19_fu_98_reg[15]_0\(10),
      R => '0'
    );
\empty_19_fu_98_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_19_fu_98_reg[15]_0\(11),
      R => '0'
    );
\empty_19_fu_98_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_19_fu_98_reg[15]_0\(12),
      R => '0'
    );
\empty_19_fu_98_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_19_fu_98_reg[15]_0\(13),
      R => '0'
    );
\empty_19_fu_98_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_19_fu_98_reg[15]_0\(14),
      R => '0'
    );
\empty_19_fu_98_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_19_fu_98_reg[15]_0\(15),
      R => '0'
    );
\empty_19_fu_98_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_19_fu_98_reg[15]_0\(1),
      R => '0'
    );
\empty_19_fu_98_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_19_fu_98_reg[15]_0\(2),
      R => '0'
    );
\empty_19_fu_98_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_19_fu_98_reg[15]_0\(3),
      R => '0'
    );
\empty_19_fu_98_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_19_fu_98_reg[15]_0\(4),
      R => '0'
    );
\empty_19_fu_98_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_19_fu_98_reg[15]_0\(5),
      R => '0'
    );
\empty_19_fu_98_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_19_fu_98_reg[15]_0\(6),
      R => '0'
    );
\empty_19_fu_98_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_19_fu_98_reg[15]_0\(7),
      R => '0'
    );
\empty_19_fu_98_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_19_fu_98_reg[15]_0\(8),
      R => '0'
    );
\empty_19_fu_98_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_19_fu_980,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_19_fu_98_reg[15]_0\(9),
      R => '0'
    );
\empty_20_fu_102[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => trunc_ln83_reg_479(1),
      I1 => trunc_ln4_reg_475(0),
      I2 => trunc_ln4_reg_475(1),
      I3 => Q(0),
      I4 => \^ap_enable_reg_pp0_iter1\,
      O => empty_20_fu_1020
    );
\empty_20_fu_102_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_20_fu_102_reg[15]_0\(0),
      R => '0'
    );
\empty_20_fu_102_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_20_fu_102_reg[15]_0\(10),
      R => '0'
    );
\empty_20_fu_102_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_20_fu_102_reg[15]_0\(11),
      R => '0'
    );
\empty_20_fu_102_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_20_fu_102_reg[15]_0\(12),
      R => '0'
    );
\empty_20_fu_102_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_20_fu_102_reg[15]_0\(13),
      R => '0'
    );
\empty_20_fu_102_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_20_fu_102_reg[15]_0\(14),
      R => '0'
    );
\empty_20_fu_102_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_20_fu_102_reg[15]_0\(15),
      R => '0'
    );
\empty_20_fu_102_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_20_fu_102_reg[15]_0\(1),
      R => '0'
    );
\empty_20_fu_102_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_20_fu_102_reg[15]_0\(2),
      R => '0'
    );
\empty_20_fu_102_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_20_fu_102_reg[15]_0\(3),
      R => '0'
    );
\empty_20_fu_102_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_20_fu_102_reg[15]_0\(4),
      R => '0'
    );
\empty_20_fu_102_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_20_fu_102_reg[15]_0\(5),
      R => '0'
    );
\empty_20_fu_102_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_20_fu_102_reg[15]_0\(6),
      R => '0'
    );
\empty_20_fu_102_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_20_fu_102_reg[15]_0\(7),
      R => '0'
    );
\empty_20_fu_102_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_20_fu_102_reg[15]_0\(8),
      R => '0'
    );
\empty_20_fu_102_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_20_fu_1020,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_20_fu_102_reg[15]_0\(9),
      R => '0'
    );
\empty_21_fu_106[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => trunc_ln83_reg_479(1),
      I1 => trunc_ln83_reg_479(0),
      I2 => trunc_ln4_reg_475(1),
      I3 => trunc_ln4_reg_475(0),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => empty_21_fu_1060
    );
\empty_21_fu_106_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_21_fu_106_reg[15]_0\(0),
      R => '0'
    );
\empty_21_fu_106_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_21_fu_106_reg[15]_0\(10),
      R => '0'
    );
\empty_21_fu_106_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_21_fu_106_reg[15]_0\(11),
      R => '0'
    );
\empty_21_fu_106_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_21_fu_106_reg[15]_0\(12),
      R => '0'
    );
\empty_21_fu_106_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_21_fu_106_reg[15]_0\(13),
      R => '0'
    );
\empty_21_fu_106_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_21_fu_106_reg[15]_0\(14),
      R => '0'
    );
\empty_21_fu_106_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_21_fu_106_reg[15]_0\(15),
      R => '0'
    );
\empty_21_fu_106_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_21_fu_106_reg[15]_0\(1),
      R => '0'
    );
\empty_21_fu_106_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_21_fu_106_reg[15]_0\(2),
      R => '0'
    );
\empty_21_fu_106_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_21_fu_106_reg[15]_0\(3),
      R => '0'
    );
\empty_21_fu_106_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_21_fu_106_reg[15]_0\(4),
      R => '0'
    );
\empty_21_fu_106_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_21_fu_106_reg[15]_0\(5),
      R => '0'
    );
\empty_21_fu_106_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_21_fu_106_reg[15]_0\(6),
      R => '0'
    );
\empty_21_fu_106_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_21_fu_106_reg[15]_0\(7),
      R => '0'
    );
\empty_21_fu_106_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_21_fu_106_reg[15]_0\(8),
      R => '0'
    );
\empty_21_fu_106_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_21_fu_1060,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_21_fu_106_reg[15]_0\(9),
      R => '0'
    );
\empty_22_fu_110[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => trunc_ln83_reg_479(1),
      I1 => trunc_ln83_reg_479(0),
      I2 => trunc_ln4_reg_475(1),
      I3 => trunc_ln4_reg_475(0),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => empty_22_fu_1100
    );
\empty_22_fu_110_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_22_fu_110_reg[15]_0\(0),
      R => '0'
    );
\empty_22_fu_110_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_22_fu_110_reg[15]_0\(10),
      R => '0'
    );
\empty_22_fu_110_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_22_fu_110_reg[15]_0\(11),
      R => '0'
    );
\empty_22_fu_110_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_22_fu_110_reg[15]_0\(12),
      R => '0'
    );
\empty_22_fu_110_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_22_fu_110_reg[15]_0\(13),
      R => '0'
    );
\empty_22_fu_110_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_22_fu_110_reg[15]_0\(14),
      R => '0'
    );
\empty_22_fu_110_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_22_fu_110_reg[15]_0\(15),
      R => '0'
    );
\empty_22_fu_110_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_22_fu_110_reg[15]_0\(1),
      R => '0'
    );
\empty_22_fu_110_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_22_fu_110_reg[15]_0\(2),
      R => '0'
    );
\empty_22_fu_110_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_22_fu_110_reg[15]_0\(3),
      R => '0'
    );
\empty_22_fu_110_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_22_fu_110_reg[15]_0\(4),
      R => '0'
    );
\empty_22_fu_110_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_22_fu_110_reg[15]_0\(5),
      R => '0'
    );
\empty_22_fu_110_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_22_fu_110_reg[15]_0\(6),
      R => '0'
    );
\empty_22_fu_110_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_22_fu_110_reg[15]_0\(7),
      R => '0'
    );
\empty_22_fu_110_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_22_fu_110_reg[15]_0\(8),
      R => '0'
    );
\empty_22_fu_110_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_22_fu_1100,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_22_fu_110_reg[15]_0\(9),
      R => '0'
    );
\empty_23_fu_114[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => trunc_ln83_reg_479(1),
      I1 => trunc_ln4_reg_475(1),
      I2 => trunc_ln4_reg_475(0),
      I3 => Q(0),
      I4 => \^ap_enable_reg_pp0_iter1\,
      O => empty_23_fu_1140
    );
\empty_23_fu_114_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_23_fu_114_reg[15]_0\(0),
      R => '0'
    );
\empty_23_fu_114_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_23_fu_114_reg[15]_0\(10),
      R => '0'
    );
\empty_23_fu_114_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_23_fu_114_reg[15]_0\(11),
      R => '0'
    );
\empty_23_fu_114_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_23_fu_114_reg[15]_0\(12),
      R => '0'
    );
\empty_23_fu_114_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_23_fu_114_reg[15]_0\(13),
      R => '0'
    );
\empty_23_fu_114_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_23_fu_114_reg[15]_0\(14),
      R => '0'
    );
\empty_23_fu_114_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_23_fu_114_reg[15]_0\(15),
      R => '0'
    );
\empty_23_fu_114_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_23_fu_114_reg[15]_0\(1),
      R => '0'
    );
\empty_23_fu_114_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_23_fu_114_reg[15]_0\(2),
      R => '0'
    );
\empty_23_fu_114_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_23_fu_114_reg[15]_0\(3),
      R => '0'
    );
\empty_23_fu_114_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_23_fu_114_reg[15]_0\(4),
      R => '0'
    );
\empty_23_fu_114_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_23_fu_114_reg[15]_0\(5),
      R => '0'
    );
\empty_23_fu_114_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_23_fu_114_reg[15]_0\(6),
      R => '0'
    );
\empty_23_fu_114_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_23_fu_114_reg[15]_0\(7),
      R => '0'
    );
\empty_23_fu_114_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_23_fu_114_reg[15]_0\(8),
      R => '0'
    );
\empty_23_fu_114_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_23_fu_1140,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_23_fu_114_reg[15]_0\(9),
      R => '0'
    );
\empty_24_fu_118[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => trunc_ln4_reg_475(1),
      I3 => trunc_ln83_reg_479(1),
      I4 => trunc_ln83_reg_479(0),
      O => empty_24_fu_1180
    );
\empty_24_fu_118_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_24_fu_118_reg[15]_0\(0),
      R => '0'
    );
\empty_24_fu_118_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_24_fu_118_reg[15]_0\(10),
      R => '0'
    );
\empty_24_fu_118_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_24_fu_118_reg[15]_0\(11),
      R => '0'
    );
\empty_24_fu_118_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_24_fu_118_reg[15]_0\(12),
      R => '0'
    );
\empty_24_fu_118_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_24_fu_118_reg[15]_0\(13),
      R => '0'
    );
\empty_24_fu_118_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_24_fu_118_reg[15]_0\(14),
      R => '0'
    );
\empty_24_fu_118_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_24_fu_118_reg[15]_0\(15),
      R => '0'
    );
\empty_24_fu_118_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_24_fu_118_reg[15]_0\(1),
      R => '0'
    );
\empty_24_fu_118_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_24_fu_118_reg[15]_0\(2),
      R => '0'
    );
\empty_24_fu_118_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_24_fu_118_reg[15]_0\(3),
      R => '0'
    );
\empty_24_fu_118_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_24_fu_118_reg[15]_0\(4),
      R => '0'
    );
\empty_24_fu_118_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_24_fu_118_reg[15]_0\(5),
      R => '0'
    );
\empty_24_fu_118_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_24_fu_118_reg[15]_0\(6),
      R => '0'
    );
\empty_24_fu_118_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_24_fu_118_reg[15]_0\(7),
      R => '0'
    );
\empty_24_fu_118_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_24_fu_118_reg[15]_0\(8),
      R => '0'
    );
\empty_24_fu_118_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_24_fu_1180,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_24_fu_118_reg[15]_0\(9),
      R => '0'
    );
\empty_25_fu_122[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => trunc_ln4_reg_475(1),
      I3 => trunc_ln83_reg_479(1),
      I4 => trunc_ln83_reg_479(0),
      O => empty_25_fu_1220
    );
\empty_25_fu_122_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_25_fu_122_reg[15]_0\(0),
      R => '0'
    );
\empty_25_fu_122_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_25_fu_122_reg[15]_0\(10),
      R => '0'
    );
\empty_25_fu_122_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_25_fu_122_reg[15]_0\(11),
      R => '0'
    );
\empty_25_fu_122_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_25_fu_122_reg[15]_0\(12),
      R => '0'
    );
\empty_25_fu_122_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_25_fu_122_reg[15]_0\(13),
      R => '0'
    );
\empty_25_fu_122_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_25_fu_122_reg[15]_0\(14),
      R => '0'
    );
\empty_25_fu_122_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_25_fu_122_reg[15]_0\(15),
      R => '0'
    );
\empty_25_fu_122_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_25_fu_122_reg[15]_0\(1),
      R => '0'
    );
\empty_25_fu_122_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_25_fu_122_reg[15]_0\(2),
      R => '0'
    );
\empty_25_fu_122_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_25_fu_122_reg[15]_0\(3),
      R => '0'
    );
\empty_25_fu_122_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_25_fu_122_reg[15]_0\(4),
      R => '0'
    );
\empty_25_fu_122_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_25_fu_122_reg[15]_0\(5),
      R => '0'
    );
\empty_25_fu_122_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_25_fu_122_reg[15]_0\(6),
      R => '0'
    );
\empty_25_fu_122_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_25_fu_122_reg[15]_0\(7),
      R => '0'
    );
\empty_25_fu_122_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_25_fu_122_reg[15]_0\(8),
      R => '0'
    );
\empty_25_fu_122_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_25_fu_1220,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_25_fu_122_reg[15]_0\(9),
      R => '0'
    );
\empty_26_fu_126[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => trunc_ln83_reg_479(1),
      I1 => Q(0),
      I2 => \^ap_enable_reg_pp0_iter1\,
      I3 => trunc_ln4_reg_475(1),
      O => empty_26_fu_1260
    );
\empty_26_fu_126_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(0),
      Q => \empty_26_fu_126_reg[15]_0\(0),
      R => '0'
    );
\empty_26_fu_126_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(10),
      Q => \empty_26_fu_126_reg[15]_0\(10),
      R => '0'
    );
\empty_26_fu_126_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(11),
      Q => \empty_26_fu_126_reg[15]_0\(11),
      R => '0'
    );
\empty_26_fu_126_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(12),
      Q => \empty_26_fu_126_reg[15]_0\(12),
      R => '0'
    );
\empty_26_fu_126_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(13),
      Q => \empty_26_fu_126_reg[15]_0\(13),
      R => '0'
    );
\empty_26_fu_126_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(14),
      Q => \empty_26_fu_126_reg[15]_0\(14),
      R => '0'
    );
\empty_26_fu_126_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(15),
      Q => \empty_26_fu_126_reg[15]_0\(15),
      R => '0'
    );
\empty_26_fu_126_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(1),
      Q => \empty_26_fu_126_reg[15]_0\(1),
      R => '0'
    );
\empty_26_fu_126_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(2),
      Q => \empty_26_fu_126_reg[15]_0\(2),
      R => '0'
    );
\empty_26_fu_126_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(3),
      Q => \empty_26_fu_126_reg[15]_0\(3),
      R => '0'
    );
\empty_26_fu_126_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(4),
      Q => \empty_26_fu_126_reg[15]_0\(4),
      R => '0'
    );
\empty_26_fu_126_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(5),
      Q => \empty_26_fu_126_reg[15]_0\(5),
      R => '0'
    );
\empty_26_fu_126_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(6),
      Q => \empty_26_fu_126_reg[15]_0\(6),
      R => '0'
    );
\empty_26_fu_126_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(7),
      Q => \empty_26_fu_126_reg[15]_0\(7),
      R => '0'
    );
\empty_26_fu_126_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(8),
      Q => \empty_26_fu_126_reg[15]_0\(8),
      R => '0'
    );
\empty_26_fu_126_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => empty_26_fu_1260,
      D => \empty_26_fu_126_reg[15]_1\(9),
      Q => \empty_26_fu_126_reg[15]_0\(9),
      R => '0'
    );
flow_control_loop_pipe_sequential_init_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_3
     port map (
      D(1 downto 0) => ap_sig_allocacmp_phi_urem16_load(1 downto 0),
      Q(0) => Q(0),
      add_ln81_fu_248_p2(6 downto 0) => add_ln81_fu_248_p2(7 downto 1),
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_fsm_reg[3]\(1 downto 0) => \ap_CS_fsm_reg[3]\(1 downto 0),
      ap_clk => ap_clk,
      ap_done_cache => ap_done_cache,
      ap_done_reg1 => ap_done_reg1,
      ap_loop_init_int_reg_0 => \^ap_enable_reg_pp0_iter1\,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg(0) => D(0),
      grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_0,
      i_fu_239_p2(3 downto 0) => i_fu_239_p2(3 downto 0),
      phi_mul14_fu_86(0) => phi_mul14_fu_86(0),
      \phi_mul14_fu_86_reg[1]\ => \phi_mul14_fu_86_reg[1]_0\,
      \phi_mul14_fu_86_reg[3]\ => \phi_mul14_fu_86_reg_n_0_[2]\,
      \phi_mul14_fu_86_reg[3]_0\ => \phi_mul14_fu_86_reg_n_0_[1]\,
      \phi_mul14_fu_86_reg[3]_1\ => \phi_mul14_fu_86_reg_n_0_[3]\,
      \phi_mul14_fu_86_reg[4]\ => \phi_mul14_fu_86_reg_n_0_[4]\,
      \phi_mul14_fu_86_reg[5]\ => \phi_mul14_fu_86_reg_n_0_[5]\,
      \phi_mul14_fu_86_reg[6]\ => \phi_mul14_fu_86_reg_n_0_[6]\,
      \phi_mul14_fu_86_reg[7]\(1 downto 0) => ap_sig_allocacmp_phi_mul14_load(7 downto 6),
      \phi_mul14_fu_86_reg[7]_0\ => \phi_mul14_fu_86_reg_n_0_[7]\,
      phi_urem16_fu_82(3 downto 0) => phi_urem16_fu_82(3 downto 0),
      rem_fu_90(3 downto 0) => rem_fu_90(3 downto 0),
      select_ln73_fu_289_p3(3 downto 0) => select_ln73_fu_289_p3(3 downto 0),
      \state_reg[0]\ => \state_reg[0]\
    );
p_reg_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => trunc_ln83_reg_479(1),
      I1 => trunc_ln83_reg_479(0),
      I2 => trunc_ln4_reg_475(0),
      I3 => trunc_ln4_reg_475(1),
      I4 => Q(0),
      I5 => \^ap_enable_reg_pp0_iter1\,
      O => CEB1
    );
\phi_mul14_fu_86_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => add_ln81_fu_248_p2(1),
      Q => \phi_mul14_fu_86_reg_n_0_[1]\,
      R => '0'
    );
\phi_mul14_fu_86_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => add_ln81_fu_248_p2(2),
      Q => \phi_mul14_fu_86_reg_n_0_[2]\,
      R => '0'
    );
\phi_mul14_fu_86_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => add_ln81_fu_248_p2(3),
      Q => \phi_mul14_fu_86_reg_n_0_[3]\,
      R => '0'
    );
\phi_mul14_fu_86_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => add_ln81_fu_248_p2(4),
      Q => \phi_mul14_fu_86_reg_n_0_[4]\,
      R => '0'
    );
\phi_mul14_fu_86_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => add_ln81_fu_248_p2(5),
      Q => \phi_mul14_fu_86_reg_n_0_[5]\,
      R => '0'
    );
\phi_mul14_fu_86_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => add_ln81_fu_248_p2(6),
      Q => \phi_mul14_fu_86_reg_n_0_[6]\,
      R => '0'
    );
\phi_mul14_fu_86_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => add_ln81_fu_248_p2(7),
      Q => \phi_mul14_fu_86_reg_n_0_[7]\,
      R => '0'
    );
\phi_urem16_fu_82_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => select_ln73_fu_289_p3(0),
      Q => phi_urem16_fu_82(0),
      R => '0'
    );
\phi_urem16_fu_82_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => select_ln73_fu_289_p3(1),
      Q => phi_urem16_fu_82(1),
      R => '0'
    );
\phi_urem16_fu_82_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => select_ln73_fu_289_p3(2),
      Q => phi_urem16_fu_82(2),
      R => '0'
    );
\phi_urem16_fu_82_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => select_ln73_fu_289_p3(3),
      Q => phi_urem16_fu_82(3),
      R => '0'
    );
\rem_fu_90_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => i_fu_239_p2(0),
      Q => rem_fu_90(0),
      R => '0'
    );
\rem_fu_90_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => i_fu_239_p2(1),
      Q => rem_fu_90(1),
      R => '0'
    );
\rem_fu_90_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => i_fu_239_p2(2),
      Q => rem_fu_90(2),
      R => '0'
    );
\rem_fu_90_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => phi_mul14_fu_86(0),
      D => i_fu_239_p2(3),
      Q => rem_fu_90(3),
      R => '0'
    );
\trunc_ln4_reg_475_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_mul14_load(6),
      Q => trunc_ln4_reg_475(0),
      R => '0'
    );
\trunc_ln4_reg_475_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_mul14_load(7),
      Q => trunc_ln4_reg_475(1),
      R => '0'
    );
\trunc_ln83_reg_479_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_urem16_load(0),
      Q => trunc_ln83_reg_479(0),
      R => '0'
    );
\trunc_ln83_reg_479_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => ap_sig_allocacmp_phi_urem16_load(1),
      Q => trunc_ln83_reg_479(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_WRITE_OUTPUT is
  port (
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TLAST_int_regslice : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \p_0_reg_377_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    load_p2 : out STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg : out STD_LOGIC;
    \phi_mul22_fu_96_reg[6]_0\ : out STD_LOGIC;
    \phi_mul22_fu_96_reg[7]_0\ : out STD_LOGIC;
    \phi_urem24_fu_92_reg[1]_0\ : out STD_LOGIC;
    ap_loop_init_int_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC;
    \icmp_ln118_reg_382_reg[0]_0\ : out STD_LOGIC;
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg : in STD_LOGIC;
    out_stream_TREADY_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_rst_n : in STD_LOGIC;
    out_stream_TLAST_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p2_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ap_CS_fsm_reg[7]_0\ : in STD_LOGIC;
    \rem_fu_100_reg[3]_0\ : in STD_LOGIC;
    \data_p2_reg[0]\ : in STD_LOGIC;
    data_p2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \p_0_reg_377_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_WRITE_OUTPUT : entity is "conv2d_conv2d_Pipeline_WRITE_OUTPUT";
end cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_WRITE_OUTPUT;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_WRITE_OUTPUT is
  signal add_ln113_fu_232_p2 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_22 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_23 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_4 : STD_LOGIC;
  signal \^grp_conv2d_pipeline_write_output_fu_358_out_stream_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_fu_200_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^load_p2\ : STD_LOGIC;
  signal \^p_0_reg_377_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^phi_mul22_fu_96_reg[6]_0\ : STD_LOGIC;
  signal \^phi_mul22_fu_96_reg[7]_0\ : STD_LOGIC;
  signal \phi_mul22_fu_96_reg_n_0_[1]\ : STD_LOGIC;
  signal \phi_mul22_fu_96_reg_n_0_[2]\ : STD_LOGIC;
  signal \phi_mul22_fu_96_reg_n_0_[3]\ : STD_LOGIC;
  signal \phi_mul22_fu_96_reg_n_0_[4]\ : STD_LOGIC;
  signal \phi_mul22_fu_96_reg_n_0_[5]\ : STD_LOGIC;
  signal phi_urem24_fu_92 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rem_fu_100 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal select_ln110_fu_224_p3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_p2[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_p2[15]_i_2\ : label is "soft_lutpair36";
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
  grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(0) <= \^grp_conv2d_pipeline_write_output_fu_358_out_stream_tlast\(0);
  load_p2 <= \^load_p2\;
  \p_0_reg_377_reg[15]_0\(15 downto 0) <= \^p_0_reg_377_reg[15]_0\(15 downto 0);
  \phi_mul22_fu_96_reg[6]_0\ <= \^phi_mul22_fu_96_reg[6]_0\;
  \phi_mul22_fu_96_reg[7]_0\ <= \^phi_mul22_fu_96_reg[7]_0\;
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_0,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
\data_p2[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(0),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(0),
      O => D(0)
    );
\data_p2[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^grp_conv2d_pipeline_write_output_fu_358_out_stream_tlast\(0),
      I1 => \data_p2_reg[0]\,
      I2 => \^load_p2\,
      I3 => data_p2(0),
      O => \icmp_ln118_reg_382_reg[0]_0\
    );
\data_p2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(10),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(10),
      O => D(10)
    );
\data_p2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(11),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(11),
      O => D(11)
    );
\data_p2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(12),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(12),
      O => D(12)
    );
\data_p2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(13),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(13),
      O => D(13)
    );
\data_p2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(14),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(14),
      O => D(14)
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ap_enable_reg_pp0_iter1\,
      I1 => Q(1),
      I2 => out_stream_TREADY_int_regslice,
      O => \^load_p2\
    );
\data_p2[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(15),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(15),
      O => D(15)
    );
\data_p2[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(1),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(1),
      O => D(1)
    );
\data_p2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(2),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(2),
      O => D(2)
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(3),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(3),
      O => D(3)
    );
\data_p2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(4),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(4),
      O => D(4)
    );
\data_p2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(5),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(5),
      O => D(5)
    );
\data_p2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(6),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(6),
      O => D(6)
    );
\data_p2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(7),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(7),
      O => D(7)
    );
\data_p2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(8),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(8),
      O => D(8)
    );
\data_p2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^p_0_reg_377_reg[15]_0\(9),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \data_p2_reg[15]\(9),
      O => D(9)
    );
flow_control_loop_pipe_sequential_init_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init
     port map (
      Q(2 downto 0) => Q(2 downto 0),
      add_ln113_fu_232_p2(6 downto 0) => add_ln113_fu_232_p2(7 downto 1),
      \ap_CS_fsm_reg[5]\ => \ap_CS_fsm_reg[5]\,
      \ap_CS_fsm_reg[7]\(1 downto 0) => \ap_CS_fsm_reg[7]\(1 downto 0),
      \ap_CS_fsm_reg[7]_0\ => \ap_CS_fsm_reg[7]_0\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1_reg => \^ap_enable_reg_pp0_iter1\,
      ap_loop_init_int_reg_0 => ap_loop_init_int_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_0,
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0 => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg,
      i_fu_200_p2(2 downto 0) => i_fu_200_p2(2 downto 0),
      \icmp_ln118_reg_382_reg[0]\ => flow_control_loop_pipe_sequential_init_U_n_4,
      \icmp_ln118_reg_382_reg[0]_0\ => \^grp_conv2d_pipeline_write_output_fu_358_out_stream_tlast\(0),
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      \phi_mul22_fu_96_reg[3]\ => \phi_mul22_fu_96_reg_n_0_[2]\,
      \phi_mul22_fu_96_reg[3]_0\ => \phi_mul22_fu_96_reg_n_0_[1]\,
      \phi_mul22_fu_96_reg[3]_1\ => \phi_mul22_fu_96_reg_n_0_[3]\,
      \phi_mul22_fu_96_reg[4]\ => \phi_mul22_fu_96_reg_n_0_[4]\,
      \phi_mul22_fu_96_reg[6]\ => \phi_mul22_fu_96_reg_n_0_[5]\,
      \phi_mul22_fu_96_reg[7]\ => \^phi_mul22_fu_96_reg[6]_0\,
      \phi_mul22_fu_96_reg[7]_0\ => \^phi_mul22_fu_96_reg[7]_0\,
      phi_urem24_fu_92(3 downto 0) => phi_urem24_fu_92(3 downto 0),
      \phi_urem24_fu_92_reg[1]\ => \phi_urem24_fu_92_reg[1]_0\,
      rem_fu_100(3 downto 0) => rem_fu_100(3 downto 0),
      \rem_fu_100_reg[2]\ => flow_control_loop_pipe_sequential_init_U_n_22,
      \rem_fu_100_reg[3]\ => flow_control_loop_pipe_sequential_init_U_n_23,
      \rem_fu_100_reg[3]_0\ => \rem_fu_100_reg[3]_0\,
      select_ln110_fu_224_p3(3 downto 0) => select_ln110_fu_224_p3(3 downto 0)
    );
\icmp_ln118_reg_382_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_4,
      Q => \^grp_conv2d_pipeline_write_output_fu_358_out_stream_tlast\(0),
      R => '0'
    );
\out_stream_TLAST_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^grp_conv2d_pipeline_write_output_fu_358_out_stream_tlast\(0),
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => out_stream_TLAST_reg(0),
      O => out_stream_TLAST_int_regslice(0)
    );
\p_0_reg_377_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(0),
      Q => \^p_0_reg_377_reg[15]_0\(0),
      R => '0'
    );
\p_0_reg_377_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(10),
      Q => \^p_0_reg_377_reg[15]_0\(10),
      R => '0'
    );
\p_0_reg_377_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(11),
      Q => \^p_0_reg_377_reg[15]_0\(11),
      R => '0'
    );
\p_0_reg_377_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(12),
      Q => \^p_0_reg_377_reg[15]_0\(12),
      R => '0'
    );
\p_0_reg_377_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(13),
      Q => \^p_0_reg_377_reg[15]_0\(13),
      R => '0'
    );
\p_0_reg_377_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(14),
      Q => \^p_0_reg_377_reg[15]_0\(14),
      R => '0'
    );
\p_0_reg_377_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(15),
      Q => \^p_0_reg_377_reg[15]_0\(15),
      R => '0'
    );
\p_0_reg_377_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(1),
      Q => \^p_0_reg_377_reg[15]_0\(1),
      R => '0'
    );
\p_0_reg_377_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(2),
      Q => \^p_0_reg_377_reg[15]_0\(2),
      R => '0'
    );
\p_0_reg_377_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(3),
      Q => \^p_0_reg_377_reg[15]_0\(3),
      R => '0'
    );
\p_0_reg_377_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(4),
      Q => \^p_0_reg_377_reg[15]_0\(4),
      R => '0'
    );
\p_0_reg_377_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(5),
      Q => \^p_0_reg_377_reg[15]_0\(5),
      R => '0'
    );
\p_0_reg_377_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(6),
      Q => \^p_0_reg_377_reg[15]_0\(6),
      R => '0'
    );
\p_0_reg_377_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(7),
      Q => \^p_0_reg_377_reg[15]_0\(7),
      R => '0'
    );
\p_0_reg_377_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(8),
      Q => \^p_0_reg_377_reg[15]_0\(8),
      R => '0'
    );
\p_0_reg_377_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \p_0_reg_377_reg[15]_1\(9),
      Q => \^p_0_reg_377_reg[15]_0\(9),
      R => '0'
    );
\phi_mul22_fu_96_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => add_ln113_fu_232_p2(1),
      Q => \phi_mul22_fu_96_reg_n_0_[1]\,
      R => '0'
    );
\phi_mul22_fu_96_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => add_ln113_fu_232_p2(2),
      Q => \phi_mul22_fu_96_reg_n_0_[2]\,
      R => '0'
    );
\phi_mul22_fu_96_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => add_ln113_fu_232_p2(3),
      Q => \phi_mul22_fu_96_reg_n_0_[3]\,
      R => '0'
    );
\phi_mul22_fu_96_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => add_ln113_fu_232_p2(4),
      Q => \phi_mul22_fu_96_reg_n_0_[4]\,
      R => '0'
    );
\phi_mul22_fu_96_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => add_ln113_fu_232_p2(5),
      Q => \phi_mul22_fu_96_reg_n_0_[5]\,
      R => '0'
    );
\phi_mul22_fu_96_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => add_ln113_fu_232_p2(6),
      Q => \^phi_mul22_fu_96_reg[6]_0\,
      R => '0'
    );
\phi_mul22_fu_96_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => add_ln113_fu_232_p2(7),
      Q => \^phi_mul22_fu_96_reg[7]_0\,
      R => '0'
    );
\phi_urem24_fu_92_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => select_ln110_fu_224_p3(0),
      Q => phi_urem24_fu_92(0),
      R => '0'
    );
\phi_urem24_fu_92_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => select_ln110_fu_224_p3(1),
      Q => phi_urem24_fu_92(1),
      R => '0'
    );
\phi_urem24_fu_92_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => select_ln110_fu_224_p3(2),
      Q => phi_urem24_fu_92(2),
      R => '0'
    );
\phi_urem24_fu_92_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => select_ln110_fu_224_p3(3),
      Q => phi_urem24_fu_92(3),
      R => '0'
    );
\rem_fu_100_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => i_fu_200_p2(0),
      Q => rem_fu_100(0),
      R => '0'
    );
\rem_fu_100_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => i_fu_200_p2(1),
      Q => rem_fu_100(1),
      R => '0'
    );
\rem_fu_100_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => i_fu_200_p2(2),
      Q => rem_fu_100(2),
      R => '0'
    );
\rem_fu_100_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_sequential_init_U_n_22,
      D => flow_control_loop_pipe_sequential_init_U_n_23,
      Q => rem_fu_100(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CEB1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bias : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_21
     port map (
      A(15 downto 0) => A(15 downto 0),
      CEB1 => CEB1,
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(0) => Q(0),
      ap_clk => ap_clk,
      bias(15 downto 0) => bias(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_10 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_10 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_10;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_10 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_16
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_11 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_11 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_11;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_11 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_15
     port map (
      A(15 downto 0) => A(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_12 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_12 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_12;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_12 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_14
     port map (
      A(15 downto 0) => A(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_13 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_13 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_13;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_13 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0
     port map (
      A(15 downto 0) => A(15 downto 0),
      D(15 downto 0) => D(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_6 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_6 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_6;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_6 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_20
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      DSP_ALU_INST_1(15 downto 0) => DSP_ALU_INST_1(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_7 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_7 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_7;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_7 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_19
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      DSP_ALU_INST_1(15 downto 0) => DSP_ALU_INST_1(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_8 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_8 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_8;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_8 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_18
     port map (
      A(15 downto 0) => A(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_9 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_9 : entity is "conv2d_mac_muladd_16s_16s_24s_24_4_1";
end cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_9;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_9 is
begin
conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_17
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      ap_clk => ap_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2 is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    \select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0\ : out STD_LOGIC;
    \select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\ : out STD_LOGIC;
    \select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0\ : out STD_LOGIC;
    \oc_s_fu_140_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    select_ln89_fu_561_p3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    \oc_s_fu_140_reg[0]_0\ : out STD_LOGIC;
    sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \select_ln89_reg_1613_reg[1]_0\ : out STD_LOGIC;
    \select_ln89_reg_1613_reg[0]_0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    CEB1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DSP_ALU_INST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bias : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_8 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DSP_ALU_INST_9 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0\ : in STD_LOGIC;
    \tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0\ : in STD_LOGIC;
    \tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0\ : in STD_LOGIC;
    \tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg : in STD_LOGIC;
    \p_0_reg_377_reg[14]\ : in STD_LOGIC;
    \p_0_reg_377_reg[14]_0\ : in STD_LOGIC;
    \p_0_reg_377_reg[14]_1\ : in STD_LOGIC;
    \p_0_reg_377_reg[0]\ : in STD_LOGIC;
    \p_0_reg_377_reg[0]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[15]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[14]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[13]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[12]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[11]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[10]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[9]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[8]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[7]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[6]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[5]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[4]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[3]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[2]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[1]_0\ : in STD_LOGIC;
    \tmp_15_reg_1628_reg[0]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[15]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[14]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[13]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[12]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[11]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[10]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[9]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[8]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[7]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[6]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[5]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[4]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[3]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[2]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[1]_0\ : in STD_LOGIC;
    \tmp_18_reg_1643_reg[0]_0\ : in STD_LOGIC;
    \tmp_20_reg_1658_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2 : entity is "conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2";
end cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2 is
  signal C : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal add_ln89_fu_528_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal add_ln96_2_fu_653_p2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter10 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter11 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter5 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter6 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter7 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter8 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter9 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter10_reg : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_n_0 : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_16 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_17 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal indvar_flatten_fu_1480 : STD_LOGIC;
  signal \indvar_flatten_fu_148_reg_n_0_[0]\ : STD_LOGIC;
  signal \indvar_flatten_fu_148_reg_n_0_[1]\ : STD_LOGIC;
  signal \indvar_flatten_fu_148_reg_n_0_[2]\ : STD_LOGIC;
  signal \indvar_flatten_fu_148_reg_n_0_[3]\ : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U67_n_9 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U68_n_9 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U69_n_9 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U70_n_9 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U71_n_9 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U72_n_9 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_0 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_1 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_10 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_11 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_12 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_13 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_14 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_15 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_2 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_3 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_4 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_5 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_6 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_7 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_8 : STD_LOGIC;
  signal mac_muladd_16s_16s_24s_24_4_1_U73_n_9 : STD_LOGIC;
  signal oc_s_fu_140 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^oc_s_fu_140_reg[0]_0\ : STD_LOGIC;
  signal \^oc_s_fu_140_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \or_s_fu_144_reg_n_0_[0]\ : STD_LOGIC;
  signal \or_s_fu_144_reg_n_0_[1]\ : STD_LOGIC;
  signal output_1_fu_1560 : STD_LOGIC;
  signal output_2_fu_1600 : STD_LOGIC;
  signal output_3_fu_1640 : STD_LOGIC;
  signal output_4_fu_1680 : STD_LOGIC;
  signal output_5_fu_1720 : STD_LOGIC;
  signal output_6_fu_1760 : STD_LOGIC;
  signal output_7_fu_1800 : STD_LOGIC;
  signal output_8_fu_1840 : STD_LOGIC;
  signal output_fu_1520 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \p_0_reg_377[0]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[0]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[0]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[10]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[10]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[10]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[11]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[11]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[11]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[12]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[12]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[12]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[13]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[13]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[13]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[14]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[14]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[14]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[15]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[15]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[15]_i_5_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[1]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[1]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[1]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[2]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[2]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[2]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[3]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[3]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[3]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[4]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[4]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[4]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[5]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[5]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[5]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[6]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[6]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[6]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[7]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[7]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[7]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[8]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[8]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[8]_i_4_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[9]_i_2_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[9]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_reg_377[9]_i_4_n_0\ : STD_LOGIC;
  signal \^sel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln49_fu_546_p3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal select_ln49_reg_1599_pp0_iter10_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0\ : STD_LOGIC;
  signal \^select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0\ : STD_LOGIC;
  signal \select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8_n_0\ : STD_LOGIC;
  signal \select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8_n_0\ : STD_LOGIC;
  signal \^select_ln89_fu_561_p3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln89_reg_1613_pp0_iter10_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0\ : STD_LOGIC;
  signal \^select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\ : STD_LOGIC;
  signal \select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8_n_0\ : STD_LOGIC;
  signal \select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8_n_0\ : STD_LOGIC;
  signal \^select_ln89_reg_1613_reg[0]_0\ : STD_LOGIC;
  signal \^select_ln89_reg_1613_reg[1]_0\ : STD_LOGIC;
  signal tmp_15_reg_1628 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_15_reg_1628_pp0_iter1_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_18_reg_1643 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_18_reg_1643_pp0_iter2_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_20_reg_1658 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_20_reg_1658_pp0_iter3_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_n_0\ : STD_LOGIC;
  signal tmp_22_reg_1633_pp0_iter4_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_n_0\ : STD_LOGIC;
  signal tmp_24_reg_1648_pp0_iter5_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_n_0\ : STD_LOGIC;
  signal \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_n_0\ : STD_LOGIC;
  signal tmp_26_reg_1663_pp0_iter6_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute srl_name : string;
  attribute srl_name of ap_loop_exit_ready_pp0_iter9_reg_reg_srl9 : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/ap_loop_exit_ready_pp0_iter9_reg_reg_srl9 ";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg ";
  attribute srl_name of \select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8 ";
  attribute srl_bus_name of \select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg ";
  attribute srl_name of \select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8 ";
  attribute srl_bus_name of \select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg ";
  attribute srl_name of \select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8 ";
  attribute srl_bus_name of \select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg ";
  attribute srl_name of \select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4 ";
  attribute srl_bus_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg ";
  attribute srl_name of \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4 ";
  attribute srl_bus_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg ";
  attribute srl_name of \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4 ";
  attribute srl_bus_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg ";
  attribute srl_name of \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4\ : label is "inst/\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4 ";
begin
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  \oc_s_fu_140_reg[0]_0\ <= \^oc_s_fu_140_reg[0]_0\;
  \oc_s_fu_140_reg[1]_0\(0) <= \^oc_s_fu_140_reg[1]_0\(0);
  sel(1 downto 0) <= \^sel\(1 downto 0);
  \select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0\ <= \^select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0\;
  \select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0\ <= \^select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0\;
  select_ln89_fu_561_p3(1 downto 0) <= \^select_ln89_fu_561_p3\(1 downto 0);
  \select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0\ <= \^select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0\;
  \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\ <= \^select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\;
  \select_ln89_reg_1613_reg[0]_0\ <= \^select_ln89_reg_1613_reg[0]_0\;
  \select_ln89_reg_1613_reg[1]_0\ <= \^select_ln89_reg_1613_reg[1]_0\;
ap_enable_reg_pp0_iter10_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter9,
      Q => ap_enable_reg_pp0_iter10,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter11_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter10,
      Q => ap_enable_reg_pp0_iter11,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_16,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1,
      Q => ap_enable_reg_pp0_iter2,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2,
      Q => ap_enable_reg_pp0_iter3,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter3,
      Q => ap_enable_reg_pp0_iter4,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter4,
      Q => ap_enable_reg_pp0_iter5,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter5,
      Q => ap_enable_reg_pp0_iter6,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter6,
      Q => ap_enable_reg_pp0_iter7,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter7,
      Q => ap_enable_reg_pp0_iter8,
      R => \^ap_rst_n_inv\
    );
ap_enable_reg_pp0_iter9_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter8,
      Q => ap_enable_reg_pp0_iter9,
      R => \^ap_rst_n_inv\
    );
\ap_loop_exit_ready_pp0_iter10_reg_reg__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_n_0,
      Q => ap_loop_exit_ready_pp0_iter10_reg,
      R => '0'
    );
ap_loop_exit_ready_pp0_iter9_reg_reg_srl9: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => ap_clk,
      D => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready,
      Q => ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_n_0
    );
flow_control_loop_pipe_sequential_init_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_5
     port map (
      D(0) => flow_control_loop_pipe_sequential_init_U_n_17,
      E(0) => indvar_flatten_fu_1480,
      Q(1) => \or_s_fu_144_reg_n_0_[1]\,
      Q(0) => \or_s_fu_144_reg_n_0_[0]\,
      add_ln89_fu_528_p2(3 downto 0) => add_ln89_fu_528_p2(3 downto 0),
      add_ln96_2_fu_653_p2(0) => add_ln96_2_fu_653_p2(1),
      \ap_CS_fsm_reg[3]\ => \ap_CS_fsm_reg[3]\,
      \ap_CS_fsm_reg[4]\(1 downto 0) => \ap_CS_fsm_reg[4]\(1 downto 0),
      \ap_CS_fsm_reg[5]\(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_loop_exit_ready_pp0_iter10_reg => ap_loop_exit_ready_pp0_iter10_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => \^ap_rst_n_inv\,
      ap_rst_n_1 => flow_control_loop_pipe_sequential_init_U_n_16,
      grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready,
      grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      oc_s_fu_140(1 downto 0) => oc_s_fu_140(1 downto 0),
      \oc_s_fu_140_reg[0]\ => \^oc_s_fu_140_reg[0]_0\,
      \oc_s_fu_140_reg[1]\(0) => \^oc_s_fu_140_reg[1]_0\(0),
      \or_s_fu_144_reg[1]\ => \indvar_flatten_fu_148_reg_n_0_[2]\,
      \or_s_fu_144_reg[1]_0\ => \indvar_flatten_fu_148_reg_n_0_[3]\,
      \or_s_fu_144_reg[1]_1\ => \indvar_flatten_fu_148_reg_n_0_[1]\,
      \or_s_fu_144_reg[1]_2\ => \indvar_flatten_fu_148_reg_n_0_[0]\,
      select_ln49_fu_546_p3(0) => select_ln49_fu_546_p3(0),
      select_ln89_fu_561_p3(1 downto 0) => \^select_ln89_fu_561_p3\(1 downto 0)
    );
\indvar_flatten_fu_148_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => add_ln89_fu_528_p2(0),
      Q => \indvar_flatten_fu_148_reg_n_0_[0]\,
      R => '0'
    );
\indvar_flatten_fu_148_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => add_ln89_fu_528_p2(1),
      Q => \indvar_flatten_fu_148_reg_n_0_[1]\,
      R => '0'
    );
\indvar_flatten_fu_148_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => add_ln89_fu_528_p2(2),
      Q => \indvar_flatten_fu_148_reg_n_0_[2]\,
      R => '0'
    );
\indvar_flatten_fu_148_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => add_ln89_fu_528_p2(3),
      Q => \indvar_flatten_fu_148_reg_n_0_[3]\,
      R => '0'
    );
mac_muladd_16s_16s_24s_24_4_1_U67: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1
     port map (
      A(15 downto 0) => A(15 downto 0),
      CEB1 => CEB1,
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST(15 downto 0),
      P(15) => mac_muladd_16s_16s_24s_24_4_1_U67_n_0,
      P(14) => mac_muladd_16s_16s_24s_24_4_1_U67_n_1,
      P(13) => mac_muladd_16s_16s_24s_24_4_1_U67_n_2,
      P(12) => mac_muladd_16s_16s_24s_24_4_1_U67_n_3,
      P(11) => mac_muladd_16s_16s_24s_24_4_1_U67_n_4,
      P(10) => mac_muladd_16s_16s_24s_24_4_1_U67_n_5,
      P(9) => mac_muladd_16s_16s_24s_24_4_1_U67_n_6,
      P(8) => mac_muladd_16s_16s_24s_24_4_1_U67_n_7,
      P(7) => mac_muladd_16s_16s_24s_24_4_1_U67_n_8,
      P(6) => mac_muladd_16s_16s_24s_24_4_1_U67_n_9,
      P(5) => mac_muladd_16s_16s_24s_24_4_1_U67_n_10,
      P(4) => mac_muladd_16s_16s_24s_24_4_1_U67_n_11,
      P(3) => mac_muladd_16s_16s_24s_24_4_1_U67_n_12,
      P(2) => mac_muladd_16s_16s_24s_24_4_1_U67_n_13,
      P(1) => mac_muladd_16s_16s_24s_24_4_1_U67_n_14,
      P(0) => mac_muladd_16s_16s_24s_24_4_1_U67_n_15,
      Q(0) => Q(0),
      ap_clk => ap_clk,
      bias(15 downto 0) => bias(15 downto 0)
    );
mac_muladd_16s_16s_24s_24_4_1_U68: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_6
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_0(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_1(15 downto 0),
      DSP_ALU_INST_1(15) => mac_muladd_16s_16s_24s_24_4_1_U67_n_0,
      DSP_ALU_INST_1(14) => mac_muladd_16s_16s_24s_24_4_1_U67_n_1,
      DSP_ALU_INST_1(13) => mac_muladd_16s_16s_24s_24_4_1_U67_n_2,
      DSP_ALU_INST_1(12) => mac_muladd_16s_16s_24s_24_4_1_U67_n_3,
      DSP_ALU_INST_1(11) => mac_muladd_16s_16s_24s_24_4_1_U67_n_4,
      DSP_ALU_INST_1(10) => mac_muladd_16s_16s_24s_24_4_1_U67_n_5,
      DSP_ALU_INST_1(9) => mac_muladd_16s_16s_24s_24_4_1_U67_n_6,
      DSP_ALU_INST_1(8) => mac_muladd_16s_16s_24s_24_4_1_U67_n_7,
      DSP_ALU_INST_1(7) => mac_muladd_16s_16s_24s_24_4_1_U67_n_8,
      DSP_ALU_INST_1(6) => mac_muladd_16s_16s_24s_24_4_1_U67_n_9,
      DSP_ALU_INST_1(5) => mac_muladd_16s_16s_24s_24_4_1_U67_n_10,
      DSP_ALU_INST_1(4) => mac_muladd_16s_16s_24s_24_4_1_U67_n_11,
      DSP_ALU_INST_1(3) => mac_muladd_16s_16s_24s_24_4_1_U67_n_12,
      DSP_ALU_INST_1(2) => mac_muladd_16s_16s_24s_24_4_1_U67_n_13,
      DSP_ALU_INST_1(1) => mac_muladd_16s_16s_24s_24_4_1_U67_n_14,
      DSP_ALU_INST_1(0) => mac_muladd_16s_16s_24s_24_4_1_U67_n_15,
      P(15) => mac_muladd_16s_16s_24s_24_4_1_U68_n_0,
      P(14) => mac_muladd_16s_16s_24s_24_4_1_U68_n_1,
      P(13) => mac_muladd_16s_16s_24s_24_4_1_U68_n_2,
      P(12) => mac_muladd_16s_16s_24s_24_4_1_U68_n_3,
      P(11) => mac_muladd_16s_16s_24s_24_4_1_U68_n_4,
      P(10) => mac_muladd_16s_16s_24s_24_4_1_U68_n_5,
      P(9) => mac_muladd_16s_16s_24s_24_4_1_U68_n_6,
      P(8) => mac_muladd_16s_16s_24s_24_4_1_U68_n_7,
      P(7) => mac_muladd_16s_16s_24s_24_4_1_U68_n_8,
      P(6) => mac_muladd_16s_16s_24s_24_4_1_U68_n_9,
      P(5) => mac_muladd_16s_16s_24s_24_4_1_U68_n_10,
      P(4) => mac_muladd_16s_16s_24s_24_4_1_U68_n_11,
      P(3) => mac_muladd_16s_16s_24s_24_4_1_U68_n_12,
      P(2) => mac_muladd_16s_16s_24s_24_4_1_U68_n_13,
      P(1) => mac_muladd_16s_16s_24s_24_4_1_U68_n_14,
      P(0) => mac_muladd_16s_16s_24s_24_4_1_U68_n_15,
      ap_clk => ap_clk
    );
mac_muladd_16s_16s_24s_24_4_1_U69: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_7
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_2(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => DSP_ALU_INST_3(15 downto 0),
      DSP_ALU_INST_1(15) => mac_muladd_16s_16s_24s_24_4_1_U68_n_0,
      DSP_ALU_INST_1(14) => mac_muladd_16s_16s_24s_24_4_1_U68_n_1,
      DSP_ALU_INST_1(13) => mac_muladd_16s_16s_24s_24_4_1_U68_n_2,
      DSP_ALU_INST_1(12) => mac_muladd_16s_16s_24s_24_4_1_U68_n_3,
      DSP_ALU_INST_1(11) => mac_muladd_16s_16s_24s_24_4_1_U68_n_4,
      DSP_ALU_INST_1(10) => mac_muladd_16s_16s_24s_24_4_1_U68_n_5,
      DSP_ALU_INST_1(9) => mac_muladd_16s_16s_24s_24_4_1_U68_n_6,
      DSP_ALU_INST_1(8) => mac_muladd_16s_16s_24s_24_4_1_U68_n_7,
      DSP_ALU_INST_1(7) => mac_muladd_16s_16s_24s_24_4_1_U68_n_8,
      DSP_ALU_INST_1(6) => mac_muladd_16s_16s_24s_24_4_1_U68_n_9,
      DSP_ALU_INST_1(5) => mac_muladd_16s_16s_24s_24_4_1_U68_n_10,
      DSP_ALU_INST_1(4) => mac_muladd_16s_16s_24s_24_4_1_U68_n_11,
      DSP_ALU_INST_1(3) => mac_muladd_16s_16s_24s_24_4_1_U68_n_12,
      DSP_ALU_INST_1(2) => mac_muladd_16s_16s_24s_24_4_1_U68_n_13,
      DSP_ALU_INST_1(1) => mac_muladd_16s_16s_24s_24_4_1_U68_n_14,
      DSP_ALU_INST_1(0) => mac_muladd_16s_16s_24s_24_4_1_U68_n_15,
      P(15) => mac_muladd_16s_16s_24s_24_4_1_U69_n_0,
      P(14) => mac_muladd_16s_16s_24s_24_4_1_U69_n_1,
      P(13) => mac_muladd_16s_16s_24s_24_4_1_U69_n_2,
      P(12) => mac_muladd_16s_16s_24s_24_4_1_U69_n_3,
      P(11) => mac_muladd_16s_16s_24s_24_4_1_U69_n_4,
      P(10) => mac_muladd_16s_16s_24s_24_4_1_U69_n_5,
      P(9) => mac_muladd_16s_16s_24s_24_4_1_U69_n_6,
      P(8) => mac_muladd_16s_16s_24s_24_4_1_U69_n_7,
      P(7) => mac_muladd_16s_16s_24s_24_4_1_U69_n_8,
      P(6) => mac_muladd_16s_16s_24s_24_4_1_U69_n_9,
      P(5) => mac_muladd_16s_16s_24s_24_4_1_U69_n_10,
      P(4) => mac_muladd_16s_16s_24s_24_4_1_U69_n_11,
      P(3) => mac_muladd_16s_16s_24s_24_4_1_U69_n_12,
      P(2) => mac_muladd_16s_16s_24s_24_4_1_U69_n_13,
      P(1) => mac_muladd_16s_16s_24s_24_4_1_U69_n_14,
      P(0) => mac_muladd_16s_16s_24s_24_4_1_U69_n_15,
      ap_clk => ap_clk
    );
mac_muladd_16s_16s_24s_24_4_1_U70: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_8
     port map (
      A(15 downto 0) => tmp_15_reg_1628_pp0_iter1_reg(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_4(15 downto 0),
      DSP_ALU_INST_0(15) => mac_muladd_16s_16s_24s_24_4_1_U69_n_0,
      DSP_ALU_INST_0(14) => mac_muladd_16s_16s_24s_24_4_1_U69_n_1,
      DSP_ALU_INST_0(13) => mac_muladd_16s_16s_24s_24_4_1_U69_n_2,
      DSP_ALU_INST_0(12) => mac_muladd_16s_16s_24s_24_4_1_U69_n_3,
      DSP_ALU_INST_0(11) => mac_muladd_16s_16s_24s_24_4_1_U69_n_4,
      DSP_ALU_INST_0(10) => mac_muladd_16s_16s_24s_24_4_1_U69_n_5,
      DSP_ALU_INST_0(9) => mac_muladd_16s_16s_24s_24_4_1_U69_n_6,
      DSP_ALU_INST_0(8) => mac_muladd_16s_16s_24s_24_4_1_U69_n_7,
      DSP_ALU_INST_0(7) => mac_muladd_16s_16s_24s_24_4_1_U69_n_8,
      DSP_ALU_INST_0(6) => mac_muladd_16s_16s_24s_24_4_1_U69_n_9,
      DSP_ALU_INST_0(5) => mac_muladd_16s_16s_24s_24_4_1_U69_n_10,
      DSP_ALU_INST_0(4) => mac_muladd_16s_16s_24s_24_4_1_U69_n_11,
      DSP_ALU_INST_0(3) => mac_muladd_16s_16s_24s_24_4_1_U69_n_12,
      DSP_ALU_INST_0(2) => mac_muladd_16s_16s_24s_24_4_1_U69_n_13,
      DSP_ALU_INST_0(1) => mac_muladd_16s_16s_24s_24_4_1_U69_n_14,
      DSP_ALU_INST_0(0) => mac_muladd_16s_16s_24s_24_4_1_U69_n_15,
      P(15) => mac_muladd_16s_16s_24s_24_4_1_U70_n_0,
      P(14) => mac_muladd_16s_16s_24s_24_4_1_U70_n_1,
      P(13) => mac_muladd_16s_16s_24s_24_4_1_U70_n_2,
      P(12) => mac_muladd_16s_16s_24s_24_4_1_U70_n_3,
      P(11) => mac_muladd_16s_16s_24s_24_4_1_U70_n_4,
      P(10) => mac_muladd_16s_16s_24s_24_4_1_U70_n_5,
      P(9) => mac_muladd_16s_16s_24s_24_4_1_U70_n_6,
      P(8) => mac_muladd_16s_16s_24s_24_4_1_U70_n_7,
      P(7) => mac_muladd_16s_16s_24s_24_4_1_U70_n_8,
      P(6) => mac_muladd_16s_16s_24s_24_4_1_U70_n_9,
      P(5) => mac_muladd_16s_16s_24s_24_4_1_U70_n_10,
      P(4) => mac_muladd_16s_16s_24s_24_4_1_U70_n_11,
      P(3) => mac_muladd_16s_16s_24s_24_4_1_U70_n_12,
      P(2) => mac_muladd_16s_16s_24s_24_4_1_U70_n_13,
      P(1) => mac_muladd_16s_16s_24s_24_4_1_U70_n_14,
      P(0) => mac_muladd_16s_16s_24s_24_4_1_U70_n_15,
      ap_clk => ap_clk
    );
mac_muladd_16s_16s_24s_24_4_1_U71: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_9
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_5(15 downto 0),
      DSP_ALU_INST_0(15) => mac_muladd_16s_16s_24s_24_4_1_U70_n_0,
      DSP_ALU_INST_0(14) => mac_muladd_16s_16s_24s_24_4_1_U70_n_1,
      DSP_ALU_INST_0(13) => mac_muladd_16s_16s_24s_24_4_1_U70_n_2,
      DSP_ALU_INST_0(12) => mac_muladd_16s_16s_24s_24_4_1_U70_n_3,
      DSP_ALU_INST_0(11) => mac_muladd_16s_16s_24s_24_4_1_U70_n_4,
      DSP_ALU_INST_0(10) => mac_muladd_16s_16s_24s_24_4_1_U70_n_5,
      DSP_ALU_INST_0(9) => mac_muladd_16s_16s_24s_24_4_1_U70_n_6,
      DSP_ALU_INST_0(8) => mac_muladd_16s_16s_24s_24_4_1_U70_n_7,
      DSP_ALU_INST_0(7) => mac_muladd_16s_16s_24s_24_4_1_U70_n_8,
      DSP_ALU_INST_0(6) => mac_muladd_16s_16s_24s_24_4_1_U70_n_9,
      DSP_ALU_INST_0(5) => mac_muladd_16s_16s_24s_24_4_1_U70_n_10,
      DSP_ALU_INST_0(4) => mac_muladd_16s_16s_24s_24_4_1_U70_n_11,
      DSP_ALU_INST_0(3) => mac_muladd_16s_16s_24s_24_4_1_U70_n_12,
      DSP_ALU_INST_0(2) => mac_muladd_16s_16s_24s_24_4_1_U70_n_13,
      DSP_ALU_INST_0(1) => mac_muladd_16s_16s_24s_24_4_1_U70_n_14,
      DSP_ALU_INST_0(0) => mac_muladd_16s_16s_24s_24_4_1_U70_n_15,
      P(15) => mac_muladd_16s_16s_24s_24_4_1_U71_n_0,
      P(14) => mac_muladd_16s_16s_24s_24_4_1_U71_n_1,
      P(13) => mac_muladd_16s_16s_24s_24_4_1_U71_n_2,
      P(12) => mac_muladd_16s_16s_24s_24_4_1_U71_n_3,
      P(11) => mac_muladd_16s_16s_24s_24_4_1_U71_n_4,
      P(10) => mac_muladd_16s_16s_24s_24_4_1_U71_n_5,
      P(9) => mac_muladd_16s_16s_24s_24_4_1_U71_n_6,
      P(8) => mac_muladd_16s_16s_24s_24_4_1_U71_n_7,
      P(7) => mac_muladd_16s_16s_24s_24_4_1_U71_n_8,
      P(6) => mac_muladd_16s_16s_24s_24_4_1_U71_n_9,
      P(5) => mac_muladd_16s_16s_24s_24_4_1_U71_n_10,
      P(4) => mac_muladd_16s_16s_24s_24_4_1_U71_n_11,
      P(3) => mac_muladd_16s_16s_24s_24_4_1_U71_n_12,
      P(2) => mac_muladd_16s_16s_24s_24_4_1_U71_n_13,
      P(1) => mac_muladd_16s_16s_24s_24_4_1_U71_n_14,
      P(0) => mac_muladd_16s_16s_24s_24_4_1_U71_n_15,
      Q(15 downto 0) => tmp_18_reg_1643_pp0_iter2_reg(15 downto 0),
      ap_clk => ap_clk
    );
mac_muladd_16s_16s_24s_24_4_1_U72: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_10
     port map (
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_6(15 downto 0),
      DSP_ALU_INST_0(15) => mac_muladd_16s_16s_24s_24_4_1_U71_n_0,
      DSP_ALU_INST_0(14) => mac_muladd_16s_16s_24s_24_4_1_U71_n_1,
      DSP_ALU_INST_0(13) => mac_muladd_16s_16s_24s_24_4_1_U71_n_2,
      DSP_ALU_INST_0(12) => mac_muladd_16s_16s_24s_24_4_1_U71_n_3,
      DSP_ALU_INST_0(11) => mac_muladd_16s_16s_24s_24_4_1_U71_n_4,
      DSP_ALU_INST_0(10) => mac_muladd_16s_16s_24s_24_4_1_U71_n_5,
      DSP_ALU_INST_0(9) => mac_muladd_16s_16s_24s_24_4_1_U71_n_6,
      DSP_ALU_INST_0(8) => mac_muladd_16s_16s_24s_24_4_1_U71_n_7,
      DSP_ALU_INST_0(7) => mac_muladd_16s_16s_24s_24_4_1_U71_n_8,
      DSP_ALU_INST_0(6) => mac_muladd_16s_16s_24s_24_4_1_U71_n_9,
      DSP_ALU_INST_0(5) => mac_muladd_16s_16s_24s_24_4_1_U71_n_10,
      DSP_ALU_INST_0(4) => mac_muladd_16s_16s_24s_24_4_1_U71_n_11,
      DSP_ALU_INST_0(3) => mac_muladd_16s_16s_24s_24_4_1_U71_n_12,
      DSP_ALU_INST_0(2) => mac_muladd_16s_16s_24s_24_4_1_U71_n_13,
      DSP_ALU_INST_0(1) => mac_muladd_16s_16s_24s_24_4_1_U71_n_14,
      DSP_ALU_INST_0(0) => mac_muladd_16s_16s_24s_24_4_1_U71_n_15,
      P(15) => mac_muladd_16s_16s_24s_24_4_1_U72_n_0,
      P(14) => mac_muladd_16s_16s_24s_24_4_1_U72_n_1,
      P(13) => mac_muladd_16s_16s_24s_24_4_1_U72_n_2,
      P(12) => mac_muladd_16s_16s_24s_24_4_1_U72_n_3,
      P(11) => mac_muladd_16s_16s_24s_24_4_1_U72_n_4,
      P(10) => mac_muladd_16s_16s_24s_24_4_1_U72_n_5,
      P(9) => mac_muladd_16s_16s_24s_24_4_1_U72_n_6,
      P(8) => mac_muladd_16s_16s_24s_24_4_1_U72_n_7,
      P(7) => mac_muladd_16s_16s_24s_24_4_1_U72_n_8,
      P(6) => mac_muladd_16s_16s_24s_24_4_1_U72_n_9,
      P(5) => mac_muladd_16s_16s_24s_24_4_1_U72_n_10,
      P(4) => mac_muladd_16s_16s_24s_24_4_1_U72_n_11,
      P(3) => mac_muladd_16s_16s_24s_24_4_1_U72_n_12,
      P(2) => mac_muladd_16s_16s_24s_24_4_1_U72_n_13,
      P(1) => mac_muladd_16s_16s_24s_24_4_1_U72_n_14,
      P(0) => mac_muladd_16s_16s_24s_24_4_1_U72_n_15,
      Q(15 downto 0) => tmp_20_reg_1658_pp0_iter3_reg(15 downto 0),
      ap_clk => ap_clk
    );
mac_muladd_16s_16s_24s_24_4_1_U73: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_11
     port map (
      A(15 downto 0) => tmp_22_reg_1633_pp0_iter4_reg(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_7(15 downto 0),
      DSP_ALU_INST_0(15) => mac_muladd_16s_16s_24s_24_4_1_U72_n_0,
      DSP_ALU_INST_0(14) => mac_muladd_16s_16s_24s_24_4_1_U72_n_1,
      DSP_ALU_INST_0(13) => mac_muladd_16s_16s_24s_24_4_1_U72_n_2,
      DSP_ALU_INST_0(12) => mac_muladd_16s_16s_24s_24_4_1_U72_n_3,
      DSP_ALU_INST_0(11) => mac_muladd_16s_16s_24s_24_4_1_U72_n_4,
      DSP_ALU_INST_0(10) => mac_muladd_16s_16s_24s_24_4_1_U72_n_5,
      DSP_ALU_INST_0(9) => mac_muladd_16s_16s_24s_24_4_1_U72_n_6,
      DSP_ALU_INST_0(8) => mac_muladd_16s_16s_24s_24_4_1_U72_n_7,
      DSP_ALU_INST_0(7) => mac_muladd_16s_16s_24s_24_4_1_U72_n_8,
      DSP_ALU_INST_0(6) => mac_muladd_16s_16s_24s_24_4_1_U72_n_9,
      DSP_ALU_INST_0(5) => mac_muladd_16s_16s_24s_24_4_1_U72_n_10,
      DSP_ALU_INST_0(4) => mac_muladd_16s_16s_24s_24_4_1_U72_n_11,
      DSP_ALU_INST_0(3) => mac_muladd_16s_16s_24s_24_4_1_U72_n_12,
      DSP_ALU_INST_0(2) => mac_muladd_16s_16s_24s_24_4_1_U72_n_13,
      DSP_ALU_INST_0(1) => mac_muladd_16s_16s_24s_24_4_1_U72_n_14,
      DSP_ALU_INST_0(0) => mac_muladd_16s_16s_24s_24_4_1_U72_n_15,
      P(15) => mac_muladd_16s_16s_24s_24_4_1_U73_n_0,
      P(14) => mac_muladd_16s_16s_24s_24_4_1_U73_n_1,
      P(13) => mac_muladd_16s_16s_24s_24_4_1_U73_n_2,
      P(12) => mac_muladd_16s_16s_24s_24_4_1_U73_n_3,
      P(11) => mac_muladd_16s_16s_24s_24_4_1_U73_n_4,
      P(10) => mac_muladd_16s_16s_24s_24_4_1_U73_n_5,
      P(9) => mac_muladd_16s_16s_24s_24_4_1_U73_n_6,
      P(8) => mac_muladd_16s_16s_24s_24_4_1_U73_n_7,
      P(7) => mac_muladd_16s_16s_24s_24_4_1_U73_n_8,
      P(6) => mac_muladd_16s_16s_24s_24_4_1_U73_n_9,
      P(5) => mac_muladd_16s_16s_24s_24_4_1_U73_n_10,
      P(4) => mac_muladd_16s_16s_24s_24_4_1_U73_n_11,
      P(3) => mac_muladd_16s_16s_24s_24_4_1_U73_n_12,
      P(2) => mac_muladd_16s_16s_24s_24_4_1_U73_n_13,
      P(1) => mac_muladd_16s_16s_24s_24_4_1_U73_n_14,
      P(0) => mac_muladd_16s_16s_24s_24_4_1_U73_n_15,
      ap_clk => ap_clk
    );
mac_muladd_16s_16s_24s_24_4_1_U74: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_12
     port map (
      A(15 downto 0) => tmp_24_reg_1648_pp0_iter5_reg(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_8(15 downto 0),
      DSP_ALU_INST_0(15) => mac_muladd_16s_16s_24s_24_4_1_U73_n_0,
      DSP_ALU_INST_0(14) => mac_muladd_16s_16s_24s_24_4_1_U73_n_1,
      DSP_ALU_INST_0(13) => mac_muladd_16s_16s_24s_24_4_1_U73_n_2,
      DSP_ALU_INST_0(12) => mac_muladd_16s_16s_24s_24_4_1_U73_n_3,
      DSP_ALU_INST_0(11) => mac_muladd_16s_16s_24s_24_4_1_U73_n_4,
      DSP_ALU_INST_0(10) => mac_muladd_16s_16s_24s_24_4_1_U73_n_5,
      DSP_ALU_INST_0(9) => mac_muladd_16s_16s_24s_24_4_1_U73_n_6,
      DSP_ALU_INST_0(8) => mac_muladd_16s_16s_24s_24_4_1_U73_n_7,
      DSP_ALU_INST_0(7) => mac_muladd_16s_16s_24s_24_4_1_U73_n_8,
      DSP_ALU_INST_0(6) => mac_muladd_16s_16s_24s_24_4_1_U73_n_9,
      DSP_ALU_INST_0(5) => mac_muladd_16s_16s_24s_24_4_1_U73_n_10,
      DSP_ALU_INST_0(4) => mac_muladd_16s_16s_24s_24_4_1_U73_n_11,
      DSP_ALU_INST_0(3) => mac_muladd_16s_16s_24s_24_4_1_U73_n_12,
      DSP_ALU_INST_0(2) => mac_muladd_16s_16s_24s_24_4_1_U73_n_13,
      DSP_ALU_INST_0(1) => mac_muladd_16s_16s_24s_24_4_1_U73_n_14,
      DSP_ALU_INST_0(0) => mac_muladd_16s_16s_24s_24_4_1_U73_n_15,
      P(15 downto 0) => C(23 downto 8),
      ap_clk => ap_clk
    );
mac_muladd_16s_16s_24s_24_4_1_U75: entity work.cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_13
     port map (
      A(15 downto 0) => tmp_26_reg_1663_pp0_iter6_reg(15 downto 0),
      D(15 downto 0) => \p_0_in__0\(15 downto 0),
      DSP_ALU_INST(15 downto 0) => DSP_ALU_INST_9(15 downto 0),
      P(15 downto 0) => C(23 downto 8),
      ap_clk => ap_clk
    );
\oc_s_fu_140_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => \^oc_s_fu_140_reg[1]_0\(0),
      Q => oc_s_fu_140(0),
      R => '0'
    );
\oc_s_fu_140_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => add_ln96_2_fu_653_p2(1),
      Q => oc_s_fu_140(1),
      R => '0'
    );
\or_s_fu_144_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => flow_control_loop_pipe_sequential_init_U_n_17,
      Q => \or_s_fu_144_reg_n_0_[0]\,
      R => '0'
    );
\or_s_fu_144_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => indvar_flatten_fu_1480,
      D => \^select_ln89_fu_561_p3\(1),
      Q => \or_s_fu_144_reg_n_0_[1]\,
      R => '0'
    );
\output_1_fu_156[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I1 => select_ln49_reg_1599_pp0_iter10_reg(0),
      I2 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I3 => select_ln89_reg_1613_pp0_iter10_reg(0),
      I4 => ap_enable_reg_pp0_iter11,
      O => output_1_fu_1560
    );
\output_1_fu_156_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(0),
      R => '0'
    );
\output_1_fu_156_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(10),
      R => '0'
    );
\output_1_fu_156_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(11),
      R => '0'
    );
\output_1_fu_156_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(12),
      R => '0'
    );
\output_1_fu_156_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(13),
      R => '0'
    );
\output_1_fu_156_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(14),
      R => '0'
    );
\output_1_fu_156_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(15),
      R => '0'
    );
\output_1_fu_156_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(1),
      R => '0'
    );
\output_1_fu_156_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(2),
      R => '0'
    );
\output_1_fu_156_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(3),
      R => '0'
    );
\output_1_fu_156_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(4),
      R => '0'
    );
\output_1_fu_156_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(5),
      R => '0'
    );
\output_1_fu_156_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(6),
      R => '0'
    );
\output_1_fu_156_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(7),
      R => '0'
    );
\output_1_fu_156_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(8),
      R => '0'
    );
\output_1_fu_156_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_1_fu_1560,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(9),
      R => '0'
    );
\output_2_fu_160[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter11,
      I1 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I2 => select_ln89_reg_1613_pp0_iter10_reg(0),
      I3 => select_ln89_reg_1613_pp0_iter10_reg(1),
      O => output_2_fu_1600
    );
\output_2_fu_160_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(0),
      R => '0'
    );
\output_2_fu_160_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(10),
      R => '0'
    );
\output_2_fu_160_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(11),
      R => '0'
    );
\output_2_fu_160_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(12),
      R => '0'
    );
\output_2_fu_160_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(13),
      R => '0'
    );
\output_2_fu_160_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(14),
      R => '0'
    );
\output_2_fu_160_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(15),
      R => '0'
    );
\output_2_fu_160_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(1),
      R => '0'
    );
\output_2_fu_160_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(2),
      R => '0'
    );
\output_2_fu_160_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(3),
      R => '0'
    );
\output_2_fu_160_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(4),
      R => '0'
    );
\output_2_fu_160_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(5),
      R => '0'
    );
\output_2_fu_160_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(6),
      R => '0'
    );
\output_2_fu_160_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(7),
      R => '0'
    );
\output_2_fu_160_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(8),
      R => '0'
    );
\output_2_fu_160_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_2_fu_1600,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(9),
      R => '0'
    );
\output_3_fu_164[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I1 => select_ln49_reg_1599_pp0_iter10_reg(0),
      I2 => select_ln89_reg_1613_pp0_iter10_reg(0),
      I3 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I4 => ap_enable_reg_pp0_iter11,
      O => output_3_fu_1640
    );
\output_3_fu_164_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(0),
      R => '0'
    );
\output_3_fu_164_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(10),
      R => '0'
    );
\output_3_fu_164_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(11),
      R => '0'
    );
\output_3_fu_164_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(12),
      R => '0'
    );
\output_3_fu_164_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(13),
      R => '0'
    );
\output_3_fu_164_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(14),
      R => '0'
    );
\output_3_fu_164_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(15),
      R => '0'
    );
\output_3_fu_164_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(1),
      R => '0'
    );
\output_3_fu_164_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(2),
      R => '0'
    );
\output_3_fu_164_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(3),
      R => '0'
    );
\output_3_fu_164_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(4),
      R => '0'
    );
\output_3_fu_164_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(5),
      R => '0'
    );
\output_3_fu_164_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(6),
      R => '0'
    );
\output_3_fu_164_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(7),
      R => '0'
    );
\output_3_fu_164_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(8),
      R => '0'
    );
\output_3_fu_164_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_3_fu_1640,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(9),
      R => '0'
    );
\output_4_fu_168[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => select_ln89_reg_1613_pp0_iter10_reg(0),
      I1 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I2 => ap_enable_reg_pp0_iter11,
      I3 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I4 => select_ln49_reg_1599_pp0_iter10_reg(0),
      O => output_4_fu_1680
    );
\output_4_fu_168_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(0),
      R => '0'
    );
\output_4_fu_168_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(10),
      R => '0'
    );
\output_4_fu_168_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(11),
      R => '0'
    );
\output_4_fu_168_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(12),
      R => '0'
    );
\output_4_fu_168_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(13),
      R => '0'
    );
\output_4_fu_168_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(14),
      R => '0'
    );
\output_4_fu_168_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(15),
      R => '0'
    );
\output_4_fu_168_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(1),
      R => '0'
    );
\output_4_fu_168_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(2),
      R => '0'
    );
\output_4_fu_168_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(3),
      R => '0'
    );
\output_4_fu_168_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(4),
      R => '0'
    );
\output_4_fu_168_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(5),
      R => '0'
    );
\output_4_fu_168_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(6),
      R => '0'
    );
\output_4_fu_168_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(7),
      R => '0'
    );
\output_4_fu_168_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(8),
      R => '0'
    );
\output_4_fu_168_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_4_fu_1680,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(9),
      R => '0'
    );
\output_5_fu_172[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter11,
      I1 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I2 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I3 => select_ln89_reg_1613_pp0_iter10_reg(0),
      O => output_5_fu_1720
    );
\output_5_fu_172_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(0),
      R => '0'
    );
\output_5_fu_172_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(10),
      R => '0'
    );
\output_5_fu_172_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(11),
      R => '0'
    );
\output_5_fu_172_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(12),
      R => '0'
    );
\output_5_fu_172_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(13),
      R => '0'
    );
\output_5_fu_172_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(14),
      R => '0'
    );
\output_5_fu_172_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(15),
      R => '0'
    );
\output_5_fu_172_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(1),
      R => '0'
    );
\output_5_fu_172_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(2),
      R => '0'
    );
\output_5_fu_172_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(3),
      R => '0'
    );
\output_5_fu_172_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(4),
      R => '0'
    );
\output_5_fu_172_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(5),
      R => '0'
    );
\output_5_fu_172_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(6),
      R => '0'
    );
\output_5_fu_172_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(7),
      R => '0'
    );
\output_5_fu_172_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(8),
      R => '0'
    );
\output_5_fu_172_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_5_fu_1720,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(9),
      R => '0'
    );
\output_6_fu_176[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I1 => ap_enable_reg_pp0_iter11,
      I2 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I3 => select_ln49_reg_1599_pp0_iter10_reg(0),
      O => output_6_fu_1760
    );
\output_6_fu_176_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(0),
      R => '0'
    );
\output_6_fu_176_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(10),
      R => '0'
    );
\output_6_fu_176_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(11),
      R => '0'
    );
\output_6_fu_176_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(12),
      R => '0'
    );
\output_6_fu_176_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(13),
      R => '0'
    );
\output_6_fu_176_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(14),
      R => '0'
    );
\output_6_fu_176_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(15),
      R => '0'
    );
\output_6_fu_176_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(1),
      R => '0'
    );
\output_6_fu_176_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(2),
      R => '0'
    );
\output_6_fu_176_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(3),
      R => '0'
    );
\output_6_fu_176_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(4),
      R => '0'
    );
\output_6_fu_176_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(5),
      R => '0'
    );
\output_6_fu_176_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(6),
      R => '0'
    );
\output_6_fu_176_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(7),
      R => '0'
    );
\output_6_fu_176_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(8),
      R => '0'
    );
\output_6_fu_176_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_6_fu_1760,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(9),
      R => '0'
    );
\output_7_fu_180[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I1 => ap_enable_reg_pp0_iter11,
      I2 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I3 => select_ln49_reg_1599_pp0_iter10_reg(0),
      O => output_7_fu_1800
    );
\output_7_fu_180_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(0),
      R => '0'
    );
\output_7_fu_180_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(10),
      R => '0'
    );
\output_7_fu_180_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(11),
      R => '0'
    );
\output_7_fu_180_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(12),
      R => '0'
    );
\output_7_fu_180_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(13),
      R => '0'
    );
\output_7_fu_180_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(14),
      R => '0'
    );
\output_7_fu_180_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(15),
      R => '0'
    );
\output_7_fu_180_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(1),
      R => '0'
    );
\output_7_fu_180_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(2),
      R => '0'
    );
\output_7_fu_180_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(3),
      R => '0'
    );
\output_7_fu_180_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(4),
      R => '0'
    );
\output_7_fu_180_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(5),
      R => '0'
    );
\output_7_fu_180_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(6),
      R => '0'
    );
\output_7_fu_180_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(7),
      R => '0'
    );
\output_7_fu_180_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(8),
      R => '0'
    );
\output_7_fu_180_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_7_fu_1800,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(9),
      R => '0'
    );
\output_8_fu_184[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I1 => ap_enable_reg_pp0_iter11,
      I2 => select_ln49_reg_1599_pp0_iter10_reg(1),
      O => output_8_fu_1840
    );
\output_8_fu_184_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(0),
      R => '0'
    );
\output_8_fu_184_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(10),
      R => '0'
    );
\output_8_fu_184_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(11),
      R => '0'
    );
\output_8_fu_184_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(12),
      R => '0'
    );
\output_8_fu_184_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(13),
      R => '0'
    );
\output_8_fu_184_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(14),
      R => '0'
    );
\output_8_fu_184_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(15),
      R => '0'
    );
\output_8_fu_184_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(1),
      R => '0'
    );
\output_8_fu_184_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(2),
      R => '0'
    );
\output_8_fu_184_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(3),
      R => '0'
    );
\output_8_fu_184_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(4),
      R => '0'
    );
\output_8_fu_184_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(5),
      R => '0'
    );
\output_8_fu_184_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(6),
      R => '0'
    );
\output_8_fu_184_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(7),
      R => '0'
    );
\output_8_fu_184_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(8),
      R => '0'
    );
\output_8_fu_184_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_8_fu_1840,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(9),
      R => '0'
    );
\output_fu_152[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => select_ln89_reg_1613_pp0_iter10_reg(1),
      I1 => select_ln89_reg_1613_pp0_iter10_reg(0),
      I2 => ap_enable_reg_pp0_iter11,
      I3 => select_ln49_reg_1599_pp0_iter10_reg(1),
      I4 => select_ln49_reg_1599_pp0_iter10_reg(0),
      O => output_fu_1520
    );
\output_fu_152_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(0),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(0),
      R => '0'
    );
\output_fu_152_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(10),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(10),
      R => '0'
    );
\output_fu_152_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(11),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(11),
      R => '0'
    );
\output_fu_152_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(12),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(12),
      R => '0'
    );
\output_fu_152_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(13),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(13),
      R => '0'
    );
\output_fu_152_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(14),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(14),
      R => '0'
    );
\output_fu_152_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(15),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(15),
      R => '0'
    );
\output_fu_152_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(1),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(1),
      R => '0'
    );
\output_fu_152_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(2),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(2),
      R => '0'
    );
\output_fu_152_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(3),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(3),
      R => '0'
    );
\output_fu_152_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(4),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(4),
      R => '0'
    );
\output_fu_152_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(5),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(5),
      R => '0'
    );
\output_fu_152_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(6),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(6),
      R => '0'
    );
\output_fu_152_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(7),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(7),
      R => '0'
    );
\output_fu_152_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(8),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(8),
      R => '0'
    );
\output_fu_152_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => output_fu_1520,
      D => \p_0_in__0\(9),
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(9),
      R => '0'
    );
\p_0_reg_377[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[0]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[0]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[0]_i_4_n_0\,
      O => D(0)
    );
\p_0_reg_377[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(0),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(0),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(0),
      O => \p_0_reg_377[0]_i_2_n_0\
    );
\p_0_reg_377[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(0),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(0),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(0),
      O => \p_0_reg_377[0]_i_3_n_0\
    );
\p_0_reg_377[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(0),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(0),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(0),
      O => \p_0_reg_377[0]_i_4_n_0\
    );
\p_0_reg_377[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[10]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[10]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[10]_i_4_n_0\,
      O => D(10)
    );
\p_0_reg_377[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(10),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(10),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(10),
      O => \p_0_reg_377[10]_i_2_n_0\
    );
\p_0_reg_377[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(10),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(10),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(10),
      O => \p_0_reg_377[10]_i_3_n_0\
    );
\p_0_reg_377[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(10),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(10),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(10),
      O => \p_0_reg_377[10]_i_4_n_0\
    );
\p_0_reg_377[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[11]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[11]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[11]_i_4_n_0\,
      O => D(11)
    );
\p_0_reg_377[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(11),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(11),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(11),
      O => \p_0_reg_377[11]_i_2_n_0\
    );
\p_0_reg_377[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(11),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(11),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(11),
      O => \p_0_reg_377[11]_i_3_n_0\
    );
\p_0_reg_377[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(11),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(11),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(11),
      O => \p_0_reg_377[11]_i_4_n_0\
    );
\p_0_reg_377[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[12]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[12]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[12]_i_4_n_0\,
      O => D(12)
    );
\p_0_reg_377[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(12),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(12),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(12),
      O => \p_0_reg_377[12]_i_2_n_0\
    );
\p_0_reg_377[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(12),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(12),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(12),
      O => \p_0_reg_377[12]_i_3_n_0\
    );
\p_0_reg_377[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(12),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(12),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(12),
      O => \p_0_reg_377[12]_i_4_n_0\
    );
\p_0_reg_377[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[13]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[13]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[13]_i_4_n_0\,
      O => D(13)
    );
\p_0_reg_377[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(13),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(13),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(13),
      O => \p_0_reg_377[13]_i_2_n_0\
    );
\p_0_reg_377[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(13),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(13),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(13),
      O => \p_0_reg_377[13]_i_3_n_0\
    );
\p_0_reg_377[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(13),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(13),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(13),
      O => \p_0_reg_377[13]_i_4_n_0\
    );
\p_0_reg_377[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[14]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[14]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[14]_i_4_n_0\,
      O => D(14)
    );
\p_0_reg_377[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(14),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(14),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(14),
      O => \p_0_reg_377[14]_i_2_n_0\
    );
\p_0_reg_377[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(14),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(14),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(14),
      O => \p_0_reg_377[14]_i_3_n_0\
    );
\p_0_reg_377[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(14),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(14),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(14),
      O => \p_0_reg_377[14]_i_4_n_0\
    );
\p_0_reg_377[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[15]_i_3_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[15]_i_4_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[15]_i_5_n_0\,
      O => D(15)
    );
\p_0_reg_377[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(15),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(15),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(15),
      O => \p_0_reg_377[15]_i_3_n_0\
    );
\p_0_reg_377[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(15),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(15),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(15),
      O => \p_0_reg_377[15]_i_4_n_0\
    );
\p_0_reg_377[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(15),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(15),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(15),
      O => \p_0_reg_377[15]_i_5_n_0\
    );
\p_0_reg_377[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[1]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[1]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[1]_i_4_n_0\,
      O => D(1)
    );
\p_0_reg_377[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(1),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(1),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(1),
      O => \p_0_reg_377[1]_i_2_n_0\
    );
\p_0_reg_377[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(1),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(1),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(1),
      O => \p_0_reg_377[1]_i_3_n_0\
    );
\p_0_reg_377[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(1),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(1),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(1),
      O => \p_0_reg_377[1]_i_4_n_0\
    );
\p_0_reg_377[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[2]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[2]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[2]_i_4_n_0\,
      O => D(2)
    );
\p_0_reg_377[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(2),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(2),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(2),
      O => \p_0_reg_377[2]_i_2_n_0\
    );
\p_0_reg_377[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(2),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(2),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(2),
      O => \p_0_reg_377[2]_i_3_n_0\
    );
\p_0_reg_377[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(2),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(2),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(2),
      O => \p_0_reg_377[2]_i_4_n_0\
    );
\p_0_reg_377[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[3]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[3]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[3]_i_4_n_0\,
      O => D(3)
    );
\p_0_reg_377[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(3),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(3),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(3),
      O => \p_0_reg_377[3]_i_2_n_0\
    );
\p_0_reg_377[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(3),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(3),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(3),
      O => \p_0_reg_377[3]_i_3_n_0\
    );
\p_0_reg_377[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(3),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(3),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(3),
      O => \p_0_reg_377[3]_i_4_n_0\
    );
\p_0_reg_377[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[4]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[4]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[4]_i_4_n_0\,
      O => D(4)
    );
\p_0_reg_377[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(4),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(4),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(4),
      O => \p_0_reg_377[4]_i_2_n_0\
    );
\p_0_reg_377[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(4),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(4),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(4),
      O => \p_0_reg_377[4]_i_3_n_0\
    );
\p_0_reg_377[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(4),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(4),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(4),
      O => \p_0_reg_377[4]_i_4_n_0\
    );
\p_0_reg_377[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[5]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[5]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[5]_i_4_n_0\,
      O => D(5)
    );
\p_0_reg_377[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(5),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(5),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(5),
      O => \p_0_reg_377[5]_i_2_n_0\
    );
\p_0_reg_377[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(5),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(5),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(5),
      O => \p_0_reg_377[5]_i_3_n_0\
    );
\p_0_reg_377[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(5),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(5),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(5),
      O => \p_0_reg_377[5]_i_4_n_0\
    );
\p_0_reg_377[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[6]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[6]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[6]_i_4_n_0\,
      O => D(6)
    );
\p_0_reg_377[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(6),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(6),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(6),
      O => \p_0_reg_377[6]_i_2_n_0\
    );
\p_0_reg_377[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(6),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(6),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(6),
      O => \p_0_reg_377[6]_i_3_n_0\
    );
\p_0_reg_377[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(6),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(6),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(6),
      O => \p_0_reg_377[6]_i_4_n_0\
    );
\p_0_reg_377[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[7]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[7]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[7]_i_4_n_0\,
      O => D(7)
    );
\p_0_reg_377[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(7),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(7),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(7),
      O => \p_0_reg_377[7]_i_2_n_0\
    );
\p_0_reg_377[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(7),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(7),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(7),
      O => \p_0_reg_377[7]_i_3_n_0\
    );
\p_0_reg_377[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(7),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(7),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(7),
      O => \p_0_reg_377[7]_i_4_n_0\
    );
\p_0_reg_377[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[8]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[8]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[8]_i_4_n_0\,
      O => D(8)
    );
\p_0_reg_377[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(8),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(8),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(8),
      O => \p_0_reg_377[8]_i_2_n_0\
    );
\p_0_reg_377[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(8),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(8),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(8),
      O => \p_0_reg_377[8]_i_3_n_0\
    );
\p_0_reg_377[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(8),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(8),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(8),
      O => \p_0_reg_377[8]_i_4_n_0\
    );
\p_0_reg_377[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FBFB0B080808"
    )
        port map (
      I0 => \p_0_reg_377[9]_i_2_n_0\,
      I1 => \p_0_reg_377_reg[14]\,
      I2 => \p_0_reg_377_reg[14]_0\,
      I3 => \p_0_reg_377[9]_i_3_n_0\,
      I4 => \p_0_reg_377_reg[14]_1\,
      I5 => \p_0_reg_377[9]_i_4_n_0\,
      O => D(9)
    );
\p_0_reg_377[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out(9),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out(9),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out(9),
      O => \p_0_reg_377[9]_i_2_n_0\
    );
\p_0_reg_377[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out(9),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out(9),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out(9),
      O => \p_0_reg_377[9]_i_3_n_0\
    );
\p_0_reg_377[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out(9),
      I1 => \p_0_reg_377_reg[0]\,
      I2 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out(9),
      I3 => \p_0_reg_377_reg[0]_0\,
      I4 => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out(9),
      O => \p_0_reg_377[9]_i_4_n_0\
    );
\select_ln49_reg_1599_pp0_iter10_reg_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8_n_0\,
      Q => select_ln49_reg_1599_pp0_iter10_reg(0),
      R => '0'
    );
\select_ln49_reg_1599_pp0_iter10_reg_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8_n_0\,
      Q => select_ln49_reg_1599_pp0_iter10_reg(1),
      R => '0'
    );
\select_ln49_reg_1599_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^sel\(0),
      Q => \^select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0\,
      R => '0'
    );
\select_ln49_reg_1599_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^sel\(1),
      Q => \^select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0\,
      R => '0'
    );
\select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0\,
      Q => \select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8_n_0\
    );
\select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0\,
      Q => \select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8_n_0\
    );
\select_ln49_reg_1599_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => select_ln49_fu_546_p3(0),
      Q => \^sel\(0),
      R => '0'
    );
\select_ln49_reg_1599_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^oc_s_fu_140_reg[0]_0\,
      Q => \^sel\(1),
      R => '0'
    );
\select_ln89_reg_1613_pp0_iter10_reg_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8_n_0\,
      Q => select_ln89_reg_1613_pp0_iter10_reg(0),
      R => '0'
    );
\select_ln89_reg_1613_pp0_iter10_reg_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8_n_0\,
      Q => select_ln89_reg_1613_pp0_iter10_reg(1),
      R => '0'
    );
\select_ln89_reg_1613_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^select_ln89_reg_1613_reg[0]_0\,
      Q => \^select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0\,
      R => '0'
    );
\select_ln89_reg_1613_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^select_ln89_reg_1613_reg[1]_0\,
      Q => \^select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\,
      R => '0'
    );
\select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0\,
      Q => \select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8_n_0\
    );
\select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \^select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\,
      Q => \select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8_n_0\
    );
\select_ln89_reg_1613_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^select_ln89_fu_561_p3\(0),
      Q => \^select_ln89_reg_1613_reg[0]_0\,
      R => '0'
    );
\select_ln89_reg_1613_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \^select_ln89_fu_561_p3\(1),
      Q => \^select_ln89_reg_1613_reg[1]_0\,
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(0),
      Q => tmp_15_reg_1628_pp0_iter1_reg(0),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(10),
      Q => tmp_15_reg_1628_pp0_iter1_reg(10),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(11),
      Q => tmp_15_reg_1628_pp0_iter1_reg(11),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(12),
      Q => tmp_15_reg_1628_pp0_iter1_reg(12),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(13),
      Q => tmp_15_reg_1628_pp0_iter1_reg(13),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(14),
      Q => tmp_15_reg_1628_pp0_iter1_reg(14),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(15),
      Q => tmp_15_reg_1628_pp0_iter1_reg(15),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(1),
      Q => tmp_15_reg_1628_pp0_iter1_reg(1),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(2),
      Q => tmp_15_reg_1628_pp0_iter1_reg(2),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(3),
      Q => tmp_15_reg_1628_pp0_iter1_reg(3),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(4),
      Q => tmp_15_reg_1628_pp0_iter1_reg(4),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(5),
      Q => tmp_15_reg_1628_pp0_iter1_reg(5),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(6),
      Q => tmp_15_reg_1628_pp0_iter1_reg(6),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(7),
      Q => tmp_15_reg_1628_pp0_iter1_reg(7),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(8),
      Q => tmp_15_reg_1628_pp0_iter1_reg(8),
      R => '0'
    );
\tmp_15_reg_1628_pp0_iter1_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_15_reg_1628(9),
      Q => tmp_15_reg_1628_pp0_iter1_reg(9),
      R => '0'
    );
\tmp_15_reg_1628_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[0]_0\,
      Q => tmp_15_reg_1628(0),
      R => '0'
    );
\tmp_15_reg_1628_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[10]_0\,
      Q => tmp_15_reg_1628(10),
      R => '0'
    );
\tmp_15_reg_1628_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[11]_0\,
      Q => tmp_15_reg_1628(11),
      R => '0'
    );
\tmp_15_reg_1628_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[12]_0\,
      Q => tmp_15_reg_1628(12),
      R => '0'
    );
\tmp_15_reg_1628_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[13]_0\,
      Q => tmp_15_reg_1628(13),
      R => '0'
    );
\tmp_15_reg_1628_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[14]_0\,
      Q => tmp_15_reg_1628(14),
      R => '0'
    );
\tmp_15_reg_1628_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[15]_0\,
      Q => tmp_15_reg_1628(15),
      R => '0'
    );
\tmp_15_reg_1628_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[1]_0\,
      Q => tmp_15_reg_1628(1),
      R => '0'
    );
\tmp_15_reg_1628_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[2]_0\,
      Q => tmp_15_reg_1628(2),
      R => '0'
    );
\tmp_15_reg_1628_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[3]_0\,
      Q => tmp_15_reg_1628(3),
      R => '0'
    );
\tmp_15_reg_1628_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[4]_0\,
      Q => tmp_15_reg_1628(4),
      R => '0'
    );
\tmp_15_reg_1628_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[5]_0\,
      Q => tmp_15_reg_1628(5),
      R => '0'
    );
\tmp_15_reg_1628_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[6]_0\,
      Q => tmp_15_reg_1628(6),
      R => '0'
    );
\tmp_15_reg_1628_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[7]_0\,
      Q => tmp_15_reg_1628(7),
      R => '0'
    );
\tmp_15_reg_1628_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[8]_0\,
      Q => tmp_15_reg_1628(8),
      R => '0'
    );
\tmp_15_reg_1628_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_15_reg_1628_reg[9]_0\,
      Q => tmp_15_reg_1628(9),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(0),
      Q => tmp_18_reg_1643_pp0_iter2_reg(0),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(10),
      Q => tmp_18_reg_1643_pp0_iter2_reg(10),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(11),
      Q => tmp_18_reg_1643_pp0_iter2_reg(11),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(12),
      Q => tmp_18_reg_1643_pp0_iter2_reg(12),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(13),
      Q => tmp_18_reg_1643_pp0_iter2_reg(13),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(14),
      Q => tmp_18_reg_1643_pp0_iter2_reg(14),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(15),
      Q => tmp_18_reg_1643_pp0_iter2_reg(15),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(1),
      Q => tmp_18_reg_1643_pp0_iter2_reg(1),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(2),
      Q => tmp_18_reg_1643_pp0_iter2_reg(2),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(3),
      Q => tmp_18_reg_1643_pp0_iter2_reg(3),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(4),
      Q => tmp_18_reg_1643_pp0_iter2_reg(4),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(5),
      Q => tmp_18_reg_1643_pp0_iter2_reg(5),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(6),
      Q => tmp_18_reg_1643_pp0_iter2_reg(6),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(7),
      Q => tmp_18_reg_1643_pp0_iter2_reg(7),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(8),
      Q => tmp_18_reg_1643_pp0_iter2_reg(8),
      R => '0'
    );
\tmp_18_reg_1643_pp0_iter2_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_18_reg_1643(9),
      Q => tmp_18_reg_1643_pp0_iter2_reg(9),
      R => '0'
    );
\tmp_18_reg_1643_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[0]_0\,
      Q => tmp_18_reg_1643(0),
      R => '0'
    );
\tmp_18_reg_1643_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[10]_0\,
      Q => tmp_18_reg_1643(10),
      R => '0'
    );
\tmp_18_reg_1643_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[11]_0\,
      Q => tmp_18_reg_1643(11),
      R => '0'
    );
\tmp_18_reg_1643_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[12]_0\,
      Q => tmp_18_reg_1643(12),
      R => '0'
    );
\tmp_18_reg_1643_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[13]_0\,
      Q => tmp_18_reg_1643(13),
      R => '0'
    );
\tmp_18_reg_1643_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[14]_0\,
      Q => tmp_18_reg_1643(14),
      R => '0'
    );
\tmp_18_reg_1643_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[15]_0\,
      Q => tmp_18_reg_1643(15),
      R => '0'
    );
\tmp_18_reg_1643_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[1]_0\,
      Q => tmp_18_reg_1643(1),
      R => '0'
    );
\tmp_18_reg_1643_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[2]_0\,
      Q => tmp_18_reg_1643(2),
      R => '0'
    );
\tmp_18_reg_1643_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[3]_0\,
      Q => tmp_18_reg_1643(3),
      R => '0'
    );
\tmp_18_reg_1643_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[4]_0\,
      Q => tmp_18_reg_1643(4),
      R => '0'
    );
\tmp_18_reg_1643_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[5]_0\,
      Q => tmp_18_reg_1643(5),
      R => '0'
    );
\tmp_18_reg_1643_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[6]_0\,
      Q => tmp_18_reg_1643(6),
      R => '0'
    );
\tmp_18_reg_1643_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[7]_0\,
      Q => tmp_18_reg_1643(7),
      R => '0'
    );
\tmp_18_reg_1643_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[8]_0\,
      Q => tmp_18_reg_1643(8),
      R => '0'
    );
\tmp_18_reg_1643_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_18_reg_1643_reg[9]_0\,
      Q => tmp_18_reg_1643(9),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(0),
      Q => tmp_20_reg_1658_pp0_iter3_reg(0),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(10),
      Q => tmp_20_reg_1658_pp0_iter3_reg(10),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(11),
      Q => tmp_20_reg_1658_pp0_iter3_reg(11),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(12),
      Q => tmp_20_reg_1658_pp0_iter3_reg(12),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(13),
      Q => tmp_20_reg_1658_pp0_iter3_reg(13),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(14),
      Q => tmp_20_reg_1658_pp0_iter3_reg(14),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(15),
      Q => tmp_20_reg_1658_pp0_iter3_reg(15),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(1),
      Q => tmp_20_reg_1658_pp0_iter3_reg(1),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(2),
      Q => tmp_20_reg_1658_pp0_iter3_reg(2),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(3),
      Q => tmp_20_reg_1658_pp0_iter3_reg(3),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(4),
      Q => tmp_20_reg_1658_pp0_iter3_reg(4),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(5),
      Q => tmp_20_reg_1658_pp0_iter3_reg(5),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(6),
      Q => tmp_20_reg_1658_pp0_iter3_reg(6),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(7),
      Q => tmp_20_reg_1658_pp0_iter3_reg(7),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(8),
      Q => tmp_20_reg_1658_pp0_iter3_reg(8),
      R => '0'
    );
\tmp_20_reg_1658_pp0_iter3_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => tmp_20_reg_1658(9),
      Q => tmp_20_reg_1658_pp0_iter3_reg(9),
      R => '0'
    );
\tmp_20_reg_1658_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(0),
      Q => tmp_20_reg_1658(0),
      R => '0'
    );
\tmp_20_reg_1658_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(10),
      Q => tmp_20_reg_1658(10),
      R => '0'
    );
\tmp_20_reg_1658_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(11),
      Q => tmp_20_reg_1658(11),
      R => '0'
    );
\tmp_20_reg_1658_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(12),
      Q => tmp_20_reg_1658(12),
      R => '0'
    );
\tmp_20_reg_1658_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(13),
      Q => tmp_20_reg_1658(13),
      R => '0'
    );
\tmp_20_reg_1658_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(14),
      Q => tmp_20_reg_1658(14),
      R => '0'
    );
\tmp_20_reg_1658_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(15),
      Q => tmp_20_reg_1658(15),
      R => '0'
    );
\tmp_20_reg_1658_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(1),
      Q => tmp_20_reg_1658(1),
      R => '0'
    );
\tmp_20_reg_1658_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(2),
      Q => tmp_20_reg_1658(2),
      R => '0'
    );
\tmp_20_reg_1658_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(3),
      Q => tmp_20_reg_1658(3),
      R => '0'
    );
\tmp_20_reg_1658_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(4),
      Q => tmp_20_reg_1658(4),
      R => '0'
    );
\tmp_20_reg_1658_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(5),
      Q => tmp_20_reg_1658(5),
      R => '0'
    );
\tmp_20_reg_1658_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(6),
      Q => tmp_20_reg_1658(6),
      R => '0'
    );
\tmp_20_reg_1658_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(7),
      Q => tmp_20_reg_1658(7),
      R => '0'
    );
\tmp_20_reg_1658_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(8),
      Q => tmp_20_reg_1658(8),
      R => '0'
    );
\tmp_20_reg_1658_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_20_reg_1658_reg[15]_0\(9),
      Q => tmp_20_reg_1658(9),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0\,
      Q => \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_n_0\
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(0),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(10),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(11),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(12),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(13),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(14),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(15),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(1),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(2),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(3),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(4),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(5),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(6),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(7),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(8),
      R => '0'
    );
\tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_n_0\,
      Q => tmp_22_reg_1633_pp0_iter4_reg(9),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0\,
      Q => \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_n_0\
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(0),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(10),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(11),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(12),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(13),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(14),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(15),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(1),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(2),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(3),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(4),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(5),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(6),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(7),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(8),
      R => '0'
    );
\tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_n_0\,
      Q => tmp_24_reg_1648_pp0_iter5_reg(9),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => ap_clk,
      D => \tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0\,
      Q => \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_n_0\
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(0),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(10),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(11),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(12),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(13),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(14),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(15),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(1),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(2),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(3),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(4),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(5),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(6),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(7),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(8),
      R => '0'
    );
\tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_n_0\,
      Q => tmp_26_reg_1663_pp0_iter6_reg(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1_conv2d is
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
    weight_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    weight_stream_TVALID : in STD_LOGIC;
    weight_stream_TREADY : out STD_LOGIC;
    weight_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    weight_stream_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    weight_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    bias : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cnn_pipeline_conv2d_0_1_conv2d : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cnn_pipeline_conv2d_0_1_conv2d : entity is "conv2d";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b00000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b00000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b00000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b00001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b00010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b00100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b01000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of cnn_pipeline_conv2d_0_1_conv2d : entity is "8'b10000000";
  attribute hls_module : string;
  attribute hls_module of cnn_pipeline_conv2d_0_1_conv2d : entity is "yes";
end cnn_pipeline_conv2d_0_1_conv2d;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1_conv2d is
  signal add_ln96_2_fu_653_p2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone_3 : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone_4 : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_2 : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dout_tmp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dout_tmp_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal empty_fu_940 : STD_LOGIC;
  signal \flow_control_loop_pipe_sequential_init_U/ap_done_cache\ : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_1 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_2 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_26 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_27 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_3 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_30 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_31 : STD_LOGIC;
  signal grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_4 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_100 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_101 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_102 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_103 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_104 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_105 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_106 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_107 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_108 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_109 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_110 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_111 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_112 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_113 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_114 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_115 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_116 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_117 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_118 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_119 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_120 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_121 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_122 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_123 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_124 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_125 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_126 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_127 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_128 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_129 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_130 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_131 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_132 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_133 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_134 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_135 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_136 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_137 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_138 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_139 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_140 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_141 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_142 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_143 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_144 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_145 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_146 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_147 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_148 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_149 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_20 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_21 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_22 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_23 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_24 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_25 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_26 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_27 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_28 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_29 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_30 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_31 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_32 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_33 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_34 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_35 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_36 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_37 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_38 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_39 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_40 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_41 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_42 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_43 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_44 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_45 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_46 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_47 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_48 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_49 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_50 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_51 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_52 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_53 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_54 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_55 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_56 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_57 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_58 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_59 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_60 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_61 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_62 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_63 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_64 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_65 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_66 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_67 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_68 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_69 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_70 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_71 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_72 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_73 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_74 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_75 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_76 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_77 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_78 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_79 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_80 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_81 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_82 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_83 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_84 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_85 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_86 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_87 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_88 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_89 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_90 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_91 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_92 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_93 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_94 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_95 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_96 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_97 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_98 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_INPUT_fu_252_n_99 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_1 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_2 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_4 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_5 : STD_LOGIC;
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_38 : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_39 : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_40 : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_41 : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_42 : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_43 : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_44 : STD_LOGIC;
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_stream_TDATA_int_regslice : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in_stream_TVALID_int_regslice : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal out_stream_TDATA_int_regslice : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal out_stream_TDATA_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal out_stream_TKEEP_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal out_stream_TLAST_int_regslice : STD_LOGIC_VECTOR ( 0 to 0 );
  signal out_stream_TLAST_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal out_stream_TREADY_int_regslice : STD_LOGIC;
  signal out_stream_TSTRB_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_both_in_stream_V_data_V_U_n_3 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_2 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_3 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_4 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_out_stream_V_last_V_U_n_0 : STD_LOGIC;
  signal regslice_both_weight_stream_V_data_V_U_n_3 : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal select_ln89_fu_561_p3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal weight_stream_TDATA_int_regslice : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal weight_stream_TVALID_int_regslice : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair48";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair48";
begin
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
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
      Q => \ap_CS_fsm_reg_n_0_[0]\,
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
      D => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_5,
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
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310: entity work.cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2
     port map (
      A(15 downto 0) => dout_tmp_0(15 downto 0),
      CEB1 => empty_fu_940,
      D(15 downto 0) => dout_tmp(15 downto 0),
      DSP_ALU_INST(15 downto 0) => weight_stream_TDATA_int_regslice(15 downto 0),
      DSP_ALU_INST_0(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out7(15 downto 0),
      DSP_ALU_INST_1(15) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_52,
      DSP_ALU_INST_1(14) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_53,
      DSP_ALU_INST_1(13) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_54,
      DSP_ALU_INST_1(12) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_55,
      DSP_ALU_INST_1(11) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_56,
      DSP_ALU_INST_1(10) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_57,
      DSP_ALU_INST_1(9) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_58,
      DSP_ALU_INST_1(8) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_59,
      DSP_ALU_INST_1(7) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_60,
      DSP_ALU_INST_1(6) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_61,
      DSP_ALU_INST_1(5) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_62,
      DSP_ALU_INST_1(4) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_63,
      DSP_ALU_INST_1(3) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_64,
      DSP_ALU_INST_1(2) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_65,
      DSP_ALU_INST_1(1) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_66,
      DSP_ALU_INST_1(0) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_67,
      DSP_ALU_INST_2(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out6(15 downto 0),
      DSP_ALU_INST_3(15) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_100,
      DSP_ALU_INST_3(14) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_101,
      DSP_ALU_INST_3(13) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_102,
      DSP_ALU_INST_3(12) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_103,
      DSP_ALU_INST_3(11) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_104,
      DSP_ALU_INST_3(10) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_105,
      DSP_ALU_INST_3(9) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_106,
      DSP_ALU_INST_3(8) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_107,
      DSP_ALU_INST_3(7) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_108,
      DSP_ALU_INST_3(6) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_109,
      DSP_ALU_INST_3(5) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_110,
      DSP_ALU_INST_3(4) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_111,
      DSP_ALU_INST_3(3) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_112,
      DSP_ALU_INST_3(2) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_113,
      DSP_ALU_INST_3(1) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_114,
      DSP_ALU_INST_3(0) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_115,
      DSP_ALU_INST_4(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out5(15 downto 0),
      DSP_ALU_INST_5(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out4(15 downto 0),
      DSP_ALU_INST_6(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out3(15 downto 0),
      DSP_ALU_INST_7(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out2(15 downto 0),
      DSP_ALU_INST_8(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out1(15 downto 0),
      DSP_ALU_INST_9(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out(15 downto 0),
      Q(1) => ap_CS_fsm_state5,
      Q(0) => ap_CS_fsm_state4,
      \ap_CS_fsm_reg[3]\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_26,
      \ap_CS_fsm_reg[4]\(1 downto 0) => ap_NS_fsm(5 downto 4),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      bias(15 downto 0) => bias(15 downto 0),
      grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      \oc_s_fu_140_reg[0]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_27,
      \oc_s_fu_140_reg[1]_0\(0) => add_ln96_2_fu_653_p2(0),
      \p_0_reg_377_reg[0]\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_41,
      \p_0_reg_377_reg[0]_0\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_42,
      \p_0_reg_377_reg[14]\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_40,
      \p_0_reg_377_reg[14]_0\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_38,
      \p_0_reg_377_reg[14]_1\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_39,
      sel(1 downto 0) => sel(1 downto 0),
      \select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_2,
      \select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_1,
      select_ln89_fu_561_p3(1 downto 0) => select_ln89_fu_561_p3(1 downto 0),
      \select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_4,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_3,
      \select_ln89_reg_1613_reg[0]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_31,
      \select_ln89_reg_1613_reg[1]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_30,
      \tmp_15_reg_1628_reg[0]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_50,
      \tmp_15_reg_1628_reg[10]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_30,
      \tmp_15_reg_1628_reg[11]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_28,
      \tmp_15_reg_1628_reg[12]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_26,
      \tmp_15_reg_1628_reg[13]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_24,
      \tmp_15_reg_1628_reg[14]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_22,
      \tmp_15_reg_1628_reg[15]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_20,
      \tmp_15_reg_1628_reg[1]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_48,
      \tmp_15_reg_1628_reg[2]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_46,
      \tmp_15_reg_1628_reg[3]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_44,
      \tmp_15_reg_1628_reg[4]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_42,
      \tmp_15_reg_1628_reg[5]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_40,
      \tmp_15_reg_1628_reg[6]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_38,
      \tmp_15_reg_1628_reg[7]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_36,
      \tmp_15_reg_1628_reg[8]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_34,
      \tmp_15_reg_1628_reg[9]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_32,
      \tmp_18_reg_1643_reg[0]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_98,
      \tmp_18_reg_1643_reg[10]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_78,
      \tmp_18_reg_1643_reg[11]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_76,
      \tmp_18_reg_1643_reg[12]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_74,
      \tmp_18_reg_1643_reg[13]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_72,
      \tmp_18_reg_1643_reg[14]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_70,
      \tmp_18_reg_1643_reg[15]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_68,
      \tmp_18_reg_1643_reg[1]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_96,
      \tmp_18_reg_1643_reg[2]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_94,
      \tmp_18_reg_1643_reg[3]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_92,
      \tmp_18_reg_1643_reg[4]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_90,
      \tmp_18_reg_1643_reg[5]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_88,
      \tmp_18_reg_1643_reg[6]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_86,
      \tmp_18_reg_1643_reg[7]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_84,
      \tmp_18_reg_1643_reg[8]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_82,
      \tmp_18_reg_1643_reg[9]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_80,
      \tmp_20_reg_1658_reg[15]_0\(15) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_116,
      \tmp_20_reg_1658_reg[15]_0\(14) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_117,
      \tmp_20_reg_1658_reg[15]_0\(13) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_118,
      \tmp_20_reg_1658_reg[15]_0\(12) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_119,
      \tmp_20_reg_1658_reg[15]_0\(11) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_120,
      \tmp_20_reg_1658_reg[15]_0\(10) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_121,
      \tmp_20_reg_1658_reg[15]_0\(9) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_122,
      \tmp_20_reg_1658_reg[15]_0\(8) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_123,
      \tmp_20_reg_1658_reg[15]_0\(7) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_124,
      \tmp_20_reg_1658_reg[15]_0\(6) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_125,
      \tmp_20_reg_1658_reg[15]_0\(5) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_126,
      \tmp_20_reg_1658_reg[15]_0\(4) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_127,
      \tmp_20_reg_1658_reg[15]_0\(3) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_128,
      \tmp_20_reg_1658_reg[15]_0\(2) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_129,
      \tmp_20_reg_1658_reg[15]_0\(1) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_130,
      \tmp_20_reg_1658_reg[15]_0\(0) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_131,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_51,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_31,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_29,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_27,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_25,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_23,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_21,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_49,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_47,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_45,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_43,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_41,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_39,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_37,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_35,
      \tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_33,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_99,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_79,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_77,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_75,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_73,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_71,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_69,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_97,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_95,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_93,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_91,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_89,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_87,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_85,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_83,
      \tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_81,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_147,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_137,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_136,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_135,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_134,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_133,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_132,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_146,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_145,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_144,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_143,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_142,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_141,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_140,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_139,
      \tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_138
    );
grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_26,
      Q => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_conv2d_Pipeline_READ_INPUT_fu_252: entity work.cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_INPUT
     port map (
      A(15 downto 0) => dout_tmp_0(15 downto 0),
      D(0) => ap_NS_fsm(2),
      E(0) => ap_block_pp0_stage0_subdone,
      Q(0) => in_stream_TVALID_int_regslice,
      \ap_CS_fsm_reg[1]\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_148,
      \ap_CS_fsm_reg[2]\(1) => ap_CS_fsm_state3,
      \ap_CS_fsm_reg[2]\(0) => ap_CS_fsm_state2,
      \ap_CS_fsm_reg[2]_0\ => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_1,
      \ap_CS_fsm_reg[2]_1\ => regslice_both_in_stream_V_data_V_U_n_3,
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache\,
      ap_done_reg1 => ap_done_reg1,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg_0 => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_149,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      \input_17_fu_198_reg[0]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_50,
      \input_17_fu_198_reg[10]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_30,
      \input_17_fu_198_reg[11]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_28,
      \input_17_fu_198_reg[12]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_26,
      \input_17_fu_198_reg[13]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_24,
      \input_17_fu_198_reg[14]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_22,
      \input_17_fu_198_reg[15]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_20,
      \input_17_fu_198_reg[1]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_48,
      \input_17_fu_198_reg[2]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_46,
      \input_17_fu_198_reg[3]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_44,
      \input_17_fu_198_reg[4]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_42,
      \input_17_fu_198_reg[5]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_40,
      \input_17_fu_198_reg[6]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_38,
      \input_17_fu_198_reg[7]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_36,
      \input_17_fu_198_reg[8]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_34,
      \input_17_fu_198_reg[9]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_32,
      \input_22_fu_218_reg[0]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_51,
      \input_22_fu_218_reg[10]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_31,
      \input_22_fu_218_reg[11]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_29,
      \input_22_fu_218_reg[12]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_27,
      \input_22_fu_218_reg[13]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_25,
      \input_22_fu_218_reg[14]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_23,
      \input_22_fu_218_reg[15]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_21,
      \input_22_fu_218_reg[1]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_49,
      \input_22_fu_218_reg[2]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_47,
      \input_22_fu_218_reg[3]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_45,
      \input_22_fu_218_reg[4]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_43,
      \input_22_fu_218_reg[5]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_41,
      \input_22_fu_218_reg[6]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_39,
      \input_22_fu_218_reg[7]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_37,
      \input_22_fu_218_reg[8]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_35,
      \input_22_fu_218_reg[9]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_33,
      \input_24_fu_226_reg[15]_0\(15 downto 0) => in_stream_TDATA_int_regslice(15 downto 0),
      sel(1 downto 0) => sel(1 downto 0),
      select_ln89_fu_561_p3(1 downto 0) => select_ln89_fu_561_p3(1 downto 0),
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(15) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_100,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(14) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_101,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(13) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_102,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(12) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_103,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(11) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_104,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(10) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_105,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(9) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_106,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(8) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_107,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(7) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_108,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(6) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_109,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(5) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_110,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(4) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_111,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(3) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_112,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(2) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_113,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(1) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_114,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]\(0) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_115,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(15) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_116,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(14) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_117,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(13) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_118,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(12) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_119,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(11) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_120,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(10) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_121,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(9) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_122,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(8) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_123,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(7) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_124,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(6) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_125,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(5) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_126,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(4) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_127,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(3) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_128,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(2) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_129,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(1) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_130,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0\(0) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_131,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_132,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_141,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_142,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_143,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_144,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_145,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_146,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_147,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_133,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_134,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_135,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_136,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_137,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_138,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_139,
      \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_140,
      \select_ln89_reg_1613_reg[1]\(15) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_52,
      \select_ln89_reg_1613_reg[1]\(14) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_53,
      \select_ln89_reg_1613_reg[1]\(13) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_54,
      \select_ln89_reg_1613_reg[1]\(12) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_55,
      \select_ln89_reg_1613_reg[1]\(11) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_56,
      \select_ln89_reg_1613_reg[1]\(10) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_57,
      \select_ln89_reg_1613_reg[1]\(9) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_58,
      \select_ln89_reg_1613_reg[1]\(8) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_59,
      \select_ln89_reg_1613_reg[1]\(7) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_60,
      \select_ln89_reg_1613_reg[1]\(6) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_61,
      \select_ln89_reg_1613_reg[1]\(5) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_62,
      \select_ln89_reg_1613_reg[1]\(4) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_63,
      \select_ln89_reg_1613_reg[1]\(3) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_64,
      \select_ln89_reg_1613_reg[1]\(2) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_65,
      \select_ln89_reg_1613_reg[1]\(1) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_66,
      \select_ln89_reg_1613_reg[1]\(0) => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_67,
      \select_ln89_reg_1613_reg[1]_0\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_68,
      \select_ln89_reg_1613_reg[1]_1\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_69,
      \select_ln89_reg_1613_reg[1]_10\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_78,
      \select_ln89_reg_1613_reg[1]_11\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_79,
      \select_ln89_reg_1613_reg[1]_12\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_80,
      \select_ln89_reg_1613_reg[1]_13\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_81,
      \select_ln89_reg_1613_reg[1]_14\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_82,
      \select_ln89_reg_1613_reg[1]_15\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_83,
      \select_ln89_reg_1613_reg[1]_16\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_84,
      \select_ln89_reg_1613_reg[1]_17\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_85,
      \select_ln89_reg_1613_reg[1]_18\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_86,
      \select_ln89_reg_1613_reg[1]_19\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_87,
      \select_ln89_reg_1613_reg[1]_2\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_70,
      \select_ln89_reg_1613_reg[1]_20\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_88,
      \select_ln89_reg_1613_reg[1]_21\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_89,
      \select_ln89_reg_1613_reg[1]_22\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_90,
      \select_ln89_reg_1613_reg[1]_23\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_91,
      \select_ln89_reg_1613_reg[1]_24\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_92,
      \select_ln89_reg_1613_reg[1]_25\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_93,
      \select_ln89_reg_1613_reg[1]_26\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_94,
      \select_ln89_reg_1613_reg[1]_27\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_95,
      \select_ln89_reg_1613_reg[1]_28\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_96,
      \select_ln89_reg_1613_reg[1]_29\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_97,
      \select_ln89_reg_1613_reg[1]_3\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_71,
      \select_ln89_reg_1613_reg[1]_30\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_98,
      \select_ln89_reg_1613_reg[1]_31\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_99,
      \select_ln89_reg_1613_reg[1]_4\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_72,
      \select_ln89_reg_1613_reg[1]_5\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_73,
      \select_ln89_reg_1613_reg[1]_6\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_74,
      \select_ln89_reg_1613_reg[1]_7\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_75,
      \select_ln89_reg_1613_reg[1]_8\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_76,
      \select_ln89_reg_1613_reg[1]_9\ => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_77,
      \tmp_15_reg_1628_reg[15]\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_27,
      \tmp_15_reg_1628_reg[15]_0\(0) => add_ln96_2_fu_653_p2(0),
      \tmp_18_reg_1643_reg[15]\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_30,
      \tmp_18_reg_1643_reg[15]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_31,
      \tmp_20_reg_1658_reg[15]\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_3,
      \tmp_20_reg_1658_reg[15]_0\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_4,
      \tmp_20_reg_1658_reg[15]_1\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_1,
      \tmp_20_reg_1658_reg[15]_2\ => grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_2
    );
grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_148,
      Q => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_conv2d_Pipeline_READ_WEIGHTS_fu_289: entity work.cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_WEIGHTS
     port map (
      CEB1 => empty_fu_940,
      D(0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_5,
      E(0) => ap_block_pp0_stage0_subdone_4,
      Q(0) => weight_stream_TVALID_int_regslice,
      \ap_CS_fsm_reg[1]\ => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_4,
      \ap_CS_fsm_reg[2]\ => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_2,
      \ap_CS_fsm_reg[3]\(1) => ap_CS_fsm_state3,
      \ap_CS_fsm_reg[3]\(0) => ap_CS_fsm_state2,
      ap_clk => ap_clk,
      ap_done_cache => \flow_control_loop_pipe_sequential_init_U/ap_done_cache\,
      ap_done_reg1 => ap_done_reg1,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      \empty_19_fu_98_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out7(15 downto 0),
      \empty_20_fu_102_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out6(15 downto 0),
      \empty_21_fu_106_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out5(15 downto 0),
      \empty_22_fu_110_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out4(15 downto 0),
      \empty_23_fu_114_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out3(15 downto 0),
      \empty_24_fu_118_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out2(15 downto 0),
      \empty_25_fu_122_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out1(15 downto 0),
      \empty_26_fu_126_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out(15 downto 0),
      \empty_26_fu_126_reg[15]_1\(15 downto 0) => weight_stream_TDATA_int_regslice(15 downto 0),
      grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      \phi_mul14_fu_86_reg[1]_0\ => regslice_both_weight_stream_V_data_V_U_n_3,
      \state_reg[0]\ => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_1
    );
grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_4,
      Q => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358: entity work.cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_WRITE_OUTPUT
     port map (
      D(15 downto 0) => out_stream_TDATA_int_regslice(15 downto 0),
      E(0) => ap_block_pp0_stage0_subdone_3,
      Q(2) => ap_CS_fsm_state8,
      Q(1) => ap_CS_fsm_state7,
      Q(0) => ap_CS_fsm_state6,
      \ap_CS_fsm_reg[5]\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_43,
      \ap_CS_fsm_reg[7]\(1 downto 0) => ap_NS_fsm(7 downto 6),
      \ap_CS_fsm_reg[7]_0\ => regslice_both_out_stream_V_data_V_U_n_10,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_2,
      ap_loop_init_int_reg => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_42,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      data_p2(0) => data_p2(0),
      \data_p2_reg[0]\ => regslice_both_out_stream_V_last_V_U_n_0,
      \data_p2_reg[15]\(15 downto 0) => out_stream_TDATA_reg(15 downto 0),
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_38,
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(0) => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(0),
      \icmp_ln118_reg_382_reg[0]_0\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_44,
      load_p2 => load_p2,
      out_stream_TLAST_int_regslice(0) => out_stream_TLAST_int_regslice(0),
      out_stream_TLAST_reg(0) => out_stream_TLAST_reg(0),
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      \p_0_reg_377_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TDATA(15 downto 0),
      \p_0_reg_377_reg[15]_1\(15 downto 0) => dout_tmp(15 downto 0),
      \phi_mul22_fu_96_reg[6]_0\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_39,
      \phi_mul22_fu_96_reg[7]_0\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_40,
      \phi_urem24_fu_92_reg[1]_0\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_41,
      \rem_fu_100_reg[3]_0\ => regslice_both_out_stream_V_data_V_U_n_6
    );
grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_43,
      Q => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      R => ap_rst_n_inv
    );
\out_stream_TDATA_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(0),
      Q => out_stream_TDATA_reg(0),
      R => '0'
    );
\out_stream_TDATA_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(10),
      Q => out_stream_TDATA_reg(10),
      R => '0'
    );
\out_stream_TDATA_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(11),
      Q => out_stream_TDATA_reg(11),
      R => '0'
    );
\out_stream_TDATA_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(12),
      Q => out_stream_TDATA_reg(12),
      R => '0'
    );
\out_stream_TDATA_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(13),
      Q => out_stream_TDATA_reg(13),
      R => '0'
    );
\out_stream_TDATA_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(14),
      Q => out_stream_TDATA_reg(14),
      R => '0'
    );
\out_stream_TDATA_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(15),
      Q => out_stream_TDATA_reg(15),
      R => '0'
    );
\out_stream_TDATA_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(1),
      Q => out_stream_TDATA_reg(1),
      R => '0'
    );
\out_stream_TDATA_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(2),
      Q => out_stream_TDATA_reg(2),
      R => '0'
    );
\out_stream_TDATA_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(3),
      Q => out_stream_TDATA_reg(3),
      R => '0'
    );
\out_stream_TDATA_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(4),
      Q => out_stream_TDATA_reg(4),
      R => '0'
    );
\out_stream_TDATA_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(5),
      Q => out_stream_TDATA_reg(5),
      R => '0'
    );
\out_stream_TDATA_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(6),
      Q => out_stream_TDATA_reg(6),
      R => '0'
    );
\out_stream_TDATA_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(7),
      Q => out_stream_TDATA_reg(7),
      R => '0'
    );
\out_stream_TDATA_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(8),
      Q => out_stream_TDATA_reg(8),
      R => '0'
    );
\out_stream_TDATA_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TDATA_int_regslice(9),
      Q => out_stream_TDATA_reg(9),
      R => '0'
    );
\out_stream_TKEEP_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_out_stream_V_data_V_U_n_3,
      Q => out_stream_TKEEP_reg(0),
      R => '0'
    );
\out_stream_TKEEP_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_out_stream_V_data_V_U_n_2,
      Q => out_stream_TKEEP_reg(1),
      R => '0'
    );
\out_stream_TLAST_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => out_stream_TLAST_int_regslice(0),
      Q => out_stream_TLAST_reg(0),
      R => '0'
    );
\out_stream_TSTRB_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_out_stream_V_data_V_U_n_5,
      Q => out_stream_TSTRB_reg(0),
      R => '0'
    );
\out_stream_TSTRB_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_out_stream_V_data_V_U_n_4,
      Q => out_stream_TSTRB_reg(1),
      R => '0'
    );
regslice_both_in_stream_V_data_V_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_regslice_both
     port map (
      E(0) => ap_block_pp0_stage0_subdone,
      \FSM_sequential_state_reg[0]_0\(0) => ap_CS_fsm_state3,
      Q(0) => in_stream_TVALID_int_regslice,
      ack_in_t_reg_0 => in_stream_TREADY,
      ack_in_t_reg_1 => grp_conv2d_Pipeline_READ_INPUT_fu_252_n_149,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[15]_0\(15 downto 0) => in_stream_TDATA_int_regslice(15 downto 0),
      grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg => grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
      in_stream_TDATA(15 downto 0) => in_stream_TDATA(15 downto 0),
      in_stream_TVALID => in_stream_TVALID,
      \state_reg[0]_0\ => regslice_both_in_stream_V_data_V_U_n_3
    );
regslice_both_out_stream_V_data_V_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_regslice_both_0
     port map (
      D(1) => regslice_both_out_stream_V_data_V_U_n_2,
      D(0) => regslice_both_out_stream_V_data_V_U_n_3,
      E(0) => ap_block_pp0_stage0_subdone_3,
      \FSM_sequential_state_reg[0]_0\(0) => ap_NS_fsm(0),
      \FSM_sequential_state_reg[0]_1\ => regslice_both_out_stream_V_data_V_U_n_10,
      Q(2) => ap_CS_fsm_state8,
      Q(1) => ap_CS_fsm_state7,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      ack_in_t_reg_0 => regslice_both_out_stream_V_data_V_U_n_6,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_2,
      ap_ready => \^ap_ready\,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      \data_p1_reg[15]_0\(15 downto 0) => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TDATA(15 downto 0),
      \data_p1_reg[15]_1\(15 downto 0) => out_stream_TDATA_reg(15 downto 0),
      \data_p2_reg[15]_0\(15 downto 0) => out_stream_TDATA_int_regslice(15 downto 0),
      \data_p2_reg[1]_0\(1 downto 0) => out_stream_TKEEP_reg(1 downto 0),
      \data_p2_reg[1]_1\(1 downto 0) => out_stream_TSTRB_reg(1 downto 0),
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
      load_p2 => load_p2,
      out_stream_TDATA(15 downto 0) => out_stream_TDATA(15 downto 0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      \out_stream_TSTRB_reg_reg[1]\(1) => regslice_both_out_stream_V_data_V_U_n_4,
      \out_stream_TSTRB_reg_reg[1]\(0) => regslice_both_out_stream_V_data_V_U_n_5,
      out_stream_TVALID => out_stream_TVALID
    );
regslice_both_out_stream_V_keep_V_U: entity work.\cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0\
     port map (
      D(1) => regslice_both_out_stream_V_data_V_U_n_2,
      D(0) => regslice_both_out_stream_V_data_V_U_n_3,
      Q(0) => ap_CS_fsm_state7,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_2,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[1]_0\(1 downto 0) => out_stream_TKEEP_reg(1 downto 0),
      load_p2 => load_p2,
      out_stream_TKEEP(1 downto 0) => out_stream_TKEEP(1 downto 0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice
    );
regslice_both_out_stream_V_last_V_U: entity work.\cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized1\
     port map (
      Q(0) => ap_CS_fsm_state7,
      ack_in_t_reg_0 => regslice_both_out_stream_V_last_V_U_n_0,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_2,
      ap_rst_n_inv => ap_rst_n_inv,
      data_p2(0) => data_p2(0),
      \data_p2_reg[0]_0\ => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_44,
      grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(0) => grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(0),
      load_p2 => load_p2,
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TLAST_reg(0) => out_stream_TLAST_reg(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice
    );
regslice_both_out_stream_V_strb_V_U: entity work.\cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0_1\
     port map (
      D(1) => regslice_both_out_stream_V_data_V_U_n_4,
      D(0) => regslice_both_out_stream_V_data_V_U_n_5,
      Q(0) => ap_CS_fsm_state7,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_2,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[1]_0\(1 downto 0) => out_stream_TSTRB_reg(1 downto 0),
      load_p2 => load_p2,
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TREADY_int_regslice => out_stream_TREADY_int_regslice,
      out_stream_TSTRB(1 downto 0) => out_stream_TSTRB(1 downto 0)
    );
regslice_both_weight_stream_V_data_V_U: entity work.cnn_pipeline_conv2d_0_1_conv2d_regslice_both_2
     port map (
      E(0) => ap_block_pp0_stage0_subdone_4,
      Q(0) => weight_stream_TVALID_int_regslice,
      ack_in_t_reg_0 => weight_stream_TREADY,
      ack_in_t_reg_1 => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_2,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1_1,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[15]_0\(15 downto 0) => weight_stream_TDATA_int_regslice(15 downto 0),
      grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg => grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
      \state_reg[0]_0\ => regslice_both_weight_stream_V_data_V_U_n_3,
      \state_reg[0]_1\(0) => ap_CS_fsm_state3,
      weight_stream_TDATA(15 downto 0) => weight_stream_TDATA(15 downto 0),
      weight_stream_TVALID => weight_stream_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cnn_pipeline_conv2d_0_1 is
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
    weight_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    weight_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    weight_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    weight_stream_TREADY : out STD_LOGIC;
    weight_stream_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    weight_stream_TVALID : in STD_LOGIC;
    bias : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TREADY : in STD_LOGIC;
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cnn_pipeline_conv2d_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cnn_pipeline_conv2d_0_1 : entity is "cnn_pipeline_conv2d_0_1,conv2d,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cnn_pipeline_conv2d_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cnn_pipeline_conv2d_0_1 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cnn_pipeline_conv2d_0_1 : entity is "conv2d,Vivado 2025.2";
  attribute hls_module : string;
  attribute hls_module of cnn_pipeline_conv2d_0_1 : entity is "yes";
end cnn_pipeline_conv2d_0_1;

architecture STRUCTURE of cnn_pipeline_conv2d_0_1 is
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
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream:weight_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 199998001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0";
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
  attribute X_INTERFACE_INFO of weight_stream_TREADY : signal is "xilinx.com:interface:axis:1.0 weight_stream TREADY";
  attribute X_INTERFACE_INFO of weight_stream_TVALID : signal is "xilinx.com:interface:axis:1.0 weight_stream TVALID";
  attribute X_INTERFACE_INFO of bias : signal is "xilinx.com:signal:data:1.0 bias DATA";
  attribute X_INTERFACE_MODE of bias : signal is "slave";
  attribute X_INTERFACE_PARAMETER of bias : signal is "XIL_INTERFACENAME bias, LAYERED_METADATA undef";
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
  attribute X_INTERFACE_INFO of weight_stream_TDATA : signal is "xilinx.com:interface:axis:1.0 weight_stream TDATA";
  attribute X_INTERFACE_MODE of weight_stream_TDATA : signal is "slave";
  attribute X_INTERFACE_PARAMETER of weight_stream_TDATA : signal is "XIL_INTERFACENAME weight_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 199998001, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of weight_stream_TKEEP : signal is "xilinx.com:interface:axis:1.0 weight_stream TKEEP";
  attribute X_INTERFACE_INFO of weight_stream_TLAST : signal is "xilinx.com:interface:axis:1.0 weight_stream TLAST";
  attribute X_INTERFACE_INFO of weight_stream_TSTRB : signal is "xilinx.com:interface:axis:1.0 weight_stream TSTRB";
begin
inst: entity work.cnn_pipeline_conv2d_0_1_conv2d
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      bias(15 downto 0) => bias(15 downto 0),
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
      out_stream_TVALID => out_stream_TVALID,
      weight_stream_TDATA(15 downto 0) => weight_stream_TDATA(15 downto 0),
      weight_stream_TKEEP(1 downto 0) => B"00",
      weight_stream_TLAST(0) => '0',
      weight_stream_TREADY => weight_stream_TREADY,
      weight_stream_TSTRB(1 downto 0) => B"00",
      weight_stream_TVALID => weight_stream_TVALID
    );
end STRUCTURE;

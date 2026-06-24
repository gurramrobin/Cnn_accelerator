-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Jun 12 17:37:17 2026
-- Host        : DESKTOP-1HEQ2M2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cnn_pipeline_relu_0_1_sim_netlist.vhdl
-- Design      : cnn_pipeline_relu_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_flow_control_loop_pipe is
  port (
    ap_loop_init : out STD_LOGIC;
    icmp_ln32_fu_154_p2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_loop_init_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ap_start : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_flow_control_loop_pipe;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_flow_control_loop_pipe is
  signal \^ap_loop_init\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_fu_70[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_70[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_fu_70[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_fu_70[3]_i_2\ : label is "soft_lutpair0";
begin
  ap_loop_init <= \^ap_loop_init\;
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_reg_0,
      Q => \^ap_loop_init\,
      R => '0'
    );
ap_ready_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000101010"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => \^ap_loop_init\,
      I4 => ap_start,
      I5 => Q(0),
      O => icmp_ln32_fu_154_p2(0)
    );
\i_fu_70[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => Q(0),
      O => D(0)
    );
\i_fu_70[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_loop_init\,
      I2 => Q(1),
      O => D(1)
    );
\i_fu_70[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^ap_loop_init\,
      I3 => Q(2),
      O => D(2)
    );
\i_fu_70[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^ap_loop_init\,
      I4 => Q(3),
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[14]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_condition_103 : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both is
  signal \FSM_sequential_state[0]_i_1__1_n_4\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_4\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_in_t_i_2_n_4 : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[14]_i_10_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_11_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_12_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_13_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_14_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_15_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_16_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_17_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_18_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_19_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_4_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_5_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_6_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_7_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_8_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_9_n_4\ : STD_LOGIC;
  signal \^data_p1_reg[14]_0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \data_p1_reg[14]_i_3_n_10\ : STD_LOGIC;
  signal \data_p1_reg[14]_i_3_n_11\ : STD_LOGIC;
  signal \data_p1_reg[14]_i_3_n_5\ : STD_LOGIC;
  signal \data_p1_reg[14]_i_3_n_6\ : STD_LOGIC;
  signal \data_p1_reg[14]_i_3_n_7\ : STD_LOGIC;
  signal \data_p1_reg[14]_i_3_n_8\ : STD_LOGIC;
  signal \data_p1_reg[14]_i_3_n_9\ : STD_LOGIC;
  signal \data_p1_reg_n_4_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_4\ : STD_LOGIC;
  signal \state[1]_i_1_n_4\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_data_p1_reg[14]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of ack_in_t_i_2 : label is "soft_lutpair2";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \data_p1_reg[14]_i_3\ : label is 11;
begin
  Q(0) <= \^q\(0);
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
  \data_p1_reg[14]_0\(14 downto 0) <= \^data_p1_reg[14]_0\(14 downto 0);
\FSM_sequential_state[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => ap_condition_103,
      I1 => \state__0\(0),
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1__1_n_4\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => ap_condition_103,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^ack_in_t_reg_0\,
      I4 => in_stream_TVALID,
      O => \FSM_sequential_state[1]_i_1_n_4\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__1_n_4\,
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
      D => \FSM_sequential_state[1]_i_1_n_4\,
      Q => \state__0\(1),
      R => ap_rst_n_inv
    );
ack_in_t_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => ap_condition_103,
      I1 => in_stream_TVALID,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => ack_in_t_i_2_n_4
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_2_n_4,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[0]\,
      I1 => in_stream_TDATA(0),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(0)
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[10]\,
      I1 => in_stream_TDATA(10),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(10)
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[11]\,
      I1 => in_stream_TDATA(11),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(11)
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[12]\,
      I1 => in_stream_TDATA(12),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(12)
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[13]\,
      I1 => in_stream_TDATA(13),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(13)
    );
\data_p1[14]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(2),
      I1 => \^data_p1_reg[14]_0\(3),
      O => \data_p1[14]_i_10_n_4\
    );
\data_p1[14]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(0),
      I1 => \^data_p1_reg[14]_0\(1),
      O => \data_p1[14]_i_11_n_4\
    );
\data_p1[14]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(14),
      I1 => \data_p1_reg_n_4_[15]\,
      O => \data_p1[14]_i_12_n_4\
    );
\data_p1[14]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(12),
      I1 => \^data_p1_reg[14]_0\(13),
      O => \data_p1[14]_i_13_n_4\
    );
\data_p1[14]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(10),
      I1 => \^data_p1_reg[14]_0\(11),
      O => \data_p1[14]_i_14_n_4\
    );
\data_p1[14]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(8),
      I1 => \^data_p1_reg[14]_0\(9),
      O => \data_p1[14]_i_15_n_4\
    );
\data_p1[14]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(6),
      I1 => \^data_p1_reg[14]_0\(7),
      O => \data_p1[14]_i_16_n_4\
    );
\data_p1[14]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(4),
      I1 => \^data_p1_reg[14]_0\(5),
      O => \data_p1[14]_i_17_n_4\
    );
\data_p1[14]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(2),
      I1 => \^data_p1_reg[14]_0\(3),
      O => \data_p1[14]_i_18_n_4\
    );
\data_p1[14]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(0),
      I1 => \^data_p1_reg[14]_0\(1),
      O => \data_p1[14]_i_19_n_4\
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[14]\,
      I1 => in_stream_TDATA(14),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(14)
    );
\data_p1[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(14),
      I1 => \data_p1_reg_n_4_[15]\,
      O => \data_p1[14]_i_4_n_4\
    );
\data_p1[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(12),
      I1 => \^data_p1_reg[14]_0\(13),
      O => \data_p1[14]_i_5_n_4\
    );
\data_p1[14]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(10),
      I1 => \^data_p1_reg[14]_0\(11),
      O => \data_p1[14]_i_6_n_4\
    );
\data_p1[14]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(8),
      I1 => \^data_p1_reg[14]_0\(9),
      O => \data_p1[14]_i_7_n_4\
    );
\data_p1[14]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(6),
      I1 => \^data_p1_reg[14]_0\(7),
      O => \data_p1[14]_i_8_n_4\
    );
\data_p1[14]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_p1_reg[14]_0\(4),
      I1 => \^data_p1_reg[14]_0\(5),
      O => \data_p1[14]_i_9_n_4\
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E240"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => in_stream_TVALID,
      I3 => ap_condition_103,
      O => load_p1
    );
\data_p1[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[15]\,
      I1 => in_stream_TDATA(15),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(15)
    );
\data_p1[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[1]\,
      I1 => in_stream_TDATA(1),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(1)
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[2]\,
      I1 => in_stream_TDATA(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(2)
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[3]\,
      I1 => in_stream_TDATA(3),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(3)
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[4]\,
      I1 => in_stream_TDATA(4),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(4)
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[5]\,
      I1 => in_stream_TDATA(5),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(5)
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[6]\,
      I1 => in_stream_TDATA(6),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(6)
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[7]\,
      I1 => in_stream_TDATA(7),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(7)
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[8]\,
      I1 => in_stream_TDATA(8),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => p_0_in(8)
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCAC"
    )
        port map (
      I0 => \data_p2_reg_n_4_[9]\,
      I1 => in_stream_TDATA(9),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
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
      Q => \^data_p1_reg[14]_0\(0),
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
      Q => \^data_p1_reg[14]_0\(10),
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
      Q => \^data_p1_reg[14]_0\(11),
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
      Q => \^data_p1_reg[14]_0\(12),
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
      Q => \^data_p1_reg[14]_0\(13),
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
      Q => \^data_p1_reg[14]_0\(14),
      R => '0'
    );
\data_p1_reg[14]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => CO(0),
      CO(6) => \data_p1_reg[14]_i_3_n_5\,
      CO(5) => \data_p1_reg[14]_i_3_n_6\,
      CO(4) => \data_p1_reg[14]_i_3_n_7\,
      CO(3) => \data_p1_reg[14]_i_3_n_8\,
      CO(2) => \data_p1_reg[14]_i_3_n_9\,
      CO(1) => \data_p1_reg[14]_i_3_n_10\,
      CO(0) => \data_p1_reg[14]_i_3_n_11\,
      DI(7) => \data_p1[14]_i_4_n_4\,
      DI(6) => \data_p1[14]_i_5_n_4\,
      DI(5) => \data_p1[14]_i_6_n_4\,
      DI(4) => \data_p1[14]_i_7_n_4\,
      DI(3) => \data_p1[14]_i_8_n_4\,
      DI(2) => \data_p1[14]_i_9_n_4\,
      DI(1) => \data_p1[14]_i_10_n_4\,
      DI(0) => \data_p1[14]_i_11_n_4\,
      O(7 downto 0) => \NLW_data_p1_reg[14]_i_3_O_UNCONNECTED\(7 downto 0),
      S(7) => \data_p1[14]_i_12_n_4\,
      S(6) => \data_p1[14]_i_13_n_4\,
      S(5) => \data_p1[14]_i_14_n_4\,
      S(4) => \data_p1[14]_i_15_n_4\,
      S(3) => \data_p1[14]_i_16_n_4\,
      S(2) => \data_p1[14]_i_17_n_4\,
      S(1) => \data_p1[14]_i_18_n_4\,
      S(0) => \data_p1[14]_i_19_n_4\
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => p_0_in(15),
      Q => \data_p1_reg_n_4_[15]\,
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
      Q => \^data_p1_reg[14]_0\(1),
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
      Q => \^data_p1_reg[14]_0\(2),
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
      Q => \^data_p1_reg[14]_0\(3),
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
      Q => \^data_p1_reg[14]_0\(4),
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
      Q => \^data_p1_reg[14]_0\(5),
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
      Q => \^data_p1_reg[14]_0\(6),
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
      Q => \^data_p1_reg[14]_0\(7),
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
      Q => \^data_p1_reg[14]_0\(8),
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
      Q => \^data_p1_reg[14]_0\(9),
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
      Q => \data_p2_reg_n_4_[0]\,
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
      Q => \data_p2_reg_n_4_[10]\,
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
      Q => \data_p2_reg_n_4_[11]\,
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
      Q => \data_p2_reg_n_4_[12]\,
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
      Q => \data_p2_reg_n_4_[13]\,
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
      Q => \data_p2_reg_n_4_[14]\,
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
      Q => \data_p2_reg_n_4_[15]\,
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
      Q => \data_p2_reg_n_4_[1]\,
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
      Q => \data_p2_reg_n_4_[2]\,
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
      Q => \data_p2_reg_n_4_[3]\,
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
      Q => \data_p2_reg_n_4_[4]\,
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
      Q => \data_p2_reg_n_4_[5]\,
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
      Q => \data_p2_reg_n_4_[6]\,
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
      Q => \data_p2_reg_n_4_[7]\,
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
      Q => \data_p2_reg_n_4_[8]\,
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
      Q => \data_p2_reg_n_4_[9]\,
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => ap_condition_103,
      I1 => \^q\(0),
      I2 => state(1),
      I3 => \^ack_in_t_reg_0\,
      I4 => in_stream_TVALID,
      O => \state[0]_i_1_n_4\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => ap_condition_103,
      I1 => state(1),
      I2 => in_stream_TVALID,
      I3 => \^q\(0),
      O => \state[1]_i_1_n_4\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1_n_4\,
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
      D => \state[1]_i_1_n_4\,
      Q => state(1),
      S => ap_rst_n_inv
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both_0 is
  port (
    ap_rst_n_inv : out STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg_reg : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    out_stream_TVALID : out STD_LOGIC;
    ap_condition_103 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_loop_init_reg : out STD_LOGIC;
    ap_start_0 : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_loop_exit_ready_pp0_iter1_reg : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p2_reg[1]_0\ : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    icmp_ln32_fu_154_p2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p2_reg[14]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both_0 : entity is "relu_regslice_both";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both_0 is
  signal \FSM_sequential_state[0]_i_1__5_n_4\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__2_n_4\ : STD_LOGIC;
  signal \ack_in_t_i_1__2_n_4\ : STD_LOGIC;
  signal ap_block_pp0_stage0_11001 : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone2 : STD_LOGIC;
  signal ap_block_pp0_stage0_subdone24_out : STD_LOGIC;
  signal \^ap_condition_103\ : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \^ap_rst_n_inv\ : STD_LOGIC;
  signal \data_p1[0]_i_1__2_n_4\ : STD_LOGIC;
  signal \data_p1[10]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[11]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[13]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[14]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1[1]_i_1__2_n_4\ : STD_LOGIC;
  signal \data_p1[2]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[5]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[6]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[9]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p2[14]_i_1_n_4\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_4_[9]\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal out_stream_TREADY_int_regslice : STD_LOGIC;
  signal \^out_stream_tvalid\ : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_apdone_blk : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_4\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__2\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of ap_done_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_done_INST_0_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_loop_exit_ready_pp0_iter1_reg_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ap_ready_INST_0_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ap_ready_INST_0_i_2 : label is "soft_lutpair5";
begin
  ap_condition_103 <= \^ap_condition_103\;
  ap_ready <= \^ap_ready\;
  ap_rst_n_inv <= \^ap_rst_n_inv\;
  out_stream_TVALID <= \^out_stream_tvalid\;
\FSM_sequential_state[0]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => \^ap_condition_103\,
      I3 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1__5_n_4\
    );
\FSM_sequential_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \^ap_condition_103\,
      O => \FSM_sequential_state[1]_i_1__2_n_4\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__5_n_4\,
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
      D => \FSM_sequential_state[1]_i_1__2_n_4\,
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
\ack_in_t_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \^ap_condition_103\,
      I2 => out_stream_TREADY_int_regslice,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__2_n_4\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__2_n_4\,
      Q => out_stream_TREADY_int_regslice,
      R => \^ap_rst_n_inv\
    );
ap_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => ap_block_pp0_stage0_11001,
      O => ap_done
    );
ap_done_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF0FEE0CFFFFEE0C"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => out_stream_TREADY_int_regslice,
      I3 => regslice_both_out_stream_V_data_V_U_apdone_blk,
      I4 => ap_start,
      I5 => Q(0),
      O => ap_block_pp0_stage0_11001
    );
ap_done_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => regslice_both_out_stream_V_data_V_U_apdone_blk
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ap_start,
      I1 => ap_block_pp0_stage0_11001,
      I2 => ap_enable_reg_pp0_iter1,
      O => ap_start_0
    );
ap_loop_exit_ready_pp0_iter1_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => \^ap_ready\,
      I2 => ap_block_pp0_stage0_11001,
      O => ap_loop_exit_ready_pp0_iter1_reg_reg
    );
ap_loop_init_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \^ap_condition_103\,
      I1 => ap_loop_init,
      I2 => ap_rst_n,
      I3 => \^ap_ready\,
      O => ap_loop_init_reg
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone24_out,
      I1 => ap_block_pp0_stage0_subdone2,
      I2 => ap_start,
      I3 => Q(0),
      I4 => out_stream_TREADY_int_regslice,
      I5 => icmp_ln32_fu_154_p2(0),
      O => \^ap_ready\
    );
ap_ready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => out_stream_TREADY,
      O => ap_block_pp0_stage0_subdone24_out
    );
ap_ready_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA2222"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => out_stream_TREADY_int_regslice,
      I2 => out_stream_TREADY,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => ap_block_pp0_stage0_subdone2
    );
\data_p1[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(0),
      O => \data_p1[0]_i_1__2_n_4\
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[10]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(10),
      O => \data_p1[10]_i_1__0_n_4\
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[11]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(11),
      O => \data_p1[11]_i_1__0_n_4\
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[12]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(12),
      O => \data_p1[12]_i_1__0_n_4\
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[13]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(13),
      O => \data_p1[13]_i_1__0_n_4\
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E240"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \^ap_condition_103\,
      I3 => out_stream_TREADY,
      O => load_p1
    );
\data_p1[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[14]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(14),
      O => \data_p1[14]_i_2_n_4\
    );
\data_p1[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[1]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(1),
      O => \data_p1[1]_i_1__2_n_4\
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[2]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(2),
      O => \data_p1[2]_i_1__0_n_4\
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[3]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(3),
      O => \data_p1[3]_i_1__0_n_4\
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[4]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(4),
      O => \data_p1[4]_i_1__0_n_4\
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[5]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(5),
      O => \data_p1[5]_i_1__0_n_4\
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[6]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(6),
      O => \data_p1[6]_i_1__0_n_4\
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[7]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(7),
      O => \data_p1[7]_i_1__0_n_4\
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[8]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(8),
      O => \data_p1[8]_i_1__0_n_4\
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => \data_p2_reg_n_4_[9]\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => CO(0),
      I4 => \data_p2_reg[14]_0\(9),
      O => \data_p1[9]_i_1__0_n_4\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__2_n_4\,
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
      D => \data_p1[10]_i_1__0_n_4\,
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
      D => \data_p1[11]_i_1__0_n_4\,
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
      D => \data_p1[12]_i_1__0_n_4\,
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
      D => \data_p1[13]_i_1__0_n_4\,
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
      D => \data_p1[14]_i_2_n_4\,
      Q => out_stream_TDATA(14),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1__2_n_4\,
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
      D => \data_p1[2]_i_1__0_n_4\,
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
      D => \data_p1[3]_i_1__0_n_4\,
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
      D => \data_p1[4]_i_1__0_n_4\,
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
      D => \data_p1[5]_i_1__0_n_4\,
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
      D => \data_p1[6]_i_1__0_n_4\,
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
      D => \data_p1[7]_i_1__0_n_4\,
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
      D => \data_p1[8]_i_1__0_n_4\,
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
      D => \data_p1[9]_i_1__0_n_4\,
      Q => out_stream_TDATA(9),
      R => '0'
    );
\data_p2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => out_stream_TREADY_int_regslice,
      I1 => \^ap_condition_103\,
      I2 => CO(0),
      O => \data_p2[14]_i_1_n_4\
    );
\data_p2[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F00000000000000"
    )
        port map (
      I0 => ap_loop_exit_ready_pp0_iter1_reg,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => regslice_both_out_stream_V_data_V_U_apdone_blk,
      I3 => ap_start,
      I4 => Q(0),
      I5 => out_stream_TREADY_int_regslice,
      O => load_p2
    );
\data_p2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => ap_block_pp0_stage0_subdone24_out,
      I1 => ap_block_pp0_stage0_subdone2,
      I2 => ap_start,
      I3 => Q(0),
      I4 => out_stream_TREADY_int_regslice,
      I5 => \data_p2_reg[1]_0\,
      O => E(0)
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(0),
      Q => \data_p2_reg_n_4_[0]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(10),
      Q => \data_p2_reg_n_4_[10]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(11),
      Q => \data_p2_reg_n_4_[11]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(12),
      Q => \data_p2_reg_n_4_[12]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(13),
      Q => \data_p2_reg_n_4_[13]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(14),
      Q => \data_p2_reg_n_4_[14]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(1),
      Q => \data_p2_reg_n_4_[1]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(2),
      Q => \data_p2_reg_n_4_[2]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(3),
      Q => \data_p2_reg_n_4_[3]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(4),
      Q => \data_p2_reg_n_4_[4]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(5),
      Q => \data_p2_reg_n_4_[5]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(6),
      Q => \data_p2_reg_n_4_[6]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(7),
      Q => \data_p2_reg_n_4_[7]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(8),
      Q => \data_p2_reg_n_4_[8]\,
      R => \data_p2[14]_i_1_n_4\
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[14]_0\(9),
      Q => \data_p2_reg_n_4_[9]\,
      R => \data_p2[14]_i_1_n_4\
    );
\i_fu_70[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080008008800"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => regslice_both_out_stream_V_data_V_U_apdone_blk,
      I3 => out_stream_TREADY_int_regslice,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => ap_loop_exit_ready_pp0_iter1_reg,
      O => \^ap_condition_103\
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \^out_stream_tvalid\,
      I2 => state(1),
      I3 => out_stream_TREADY_int_regslice,
      I4 => \^ap_condition_103\,
      O => \state[0]_i_1__0_n_4\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => state(1),
      I2 => \^ap_condition_103\,
      I3 => \^out_stream_tvalid\,
      O => \state[1]_i_1__0_n_4\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_1__0_n_4\,
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
      D => \state[1]_i_1__0_n_4\,
      Q => state(1),
      S => \^ap_rst_n_inv\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_condition_103 : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0\ : entity is "relu_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0\ is
  signal \ack_in_t_i_1__0_n_4\ : STD_LOGIC;
  signal ack_in_t_reg_n_4 : STD_LOGIC;
  signal \data_p1[0]_i_1_n_4\ : STD_LOGIC;
  signal \data_p1[1]_i_2_n_4\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__0\ : label is "soft_lutpair3";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => ap_condition_103,
      I1 => \state__0\(0),
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => ap_condition_103,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ack_in_t_reg_n_4,
      I4 => in_stream_TVALID,
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
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => ap_condition_103,
      I1 => in_stream_TVALID,
      I2 => ack_in_t_reg_n_4,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__0_n_4\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__0_n_4\,
      Q => ack_in_t_reg_n_4,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TKEEP(0),
      O => \data_p1[0]_i_1_n_4\
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E240"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => in_stream_TVALID,
      I3 => ap_condition_103,
      O => load_p1
    );
\data_p1[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TKEEP(1),
      O => \data_p1[1]_i_2_n_4\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_4\,
      Q => Q(0),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_2_n_4\,
      Q => Q(1),
      R => '0'
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_stream_TVALID,
      I1 => ack_in_t_reg_n_4,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TKEEP(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p2,
      D => in_stream_TKEEP(1),
      Q => data_p2(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_1\ is
  port (
    ack_in_t_reg_0 : out STD_LOGIC;
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    ap_condition_103 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_1\ : entity is "relu_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_1\ is
  signal \ack_in_t_i_1__3_n_4\ : STD_LOGIC;
  signal \^ack_in_t_reg_0\ : STD_LOGIC;
  signal \data_p1[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \data_p1[1]_i_2__0_n_4\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__4\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__3\ : label is "soft_lutpair9";
begin
  ack_in_t_reg_0 <= \^ack_in_t_reg_0\;
\FSM_sequential_state[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => ap_condition_103,
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^ack_in_t_reg_0\,
      I4 => ap_condition_103,
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
      I1 => ap_condition_103,
      I2 => \^ack_in_t_reg_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__3_n_4\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__3_n_4\,
      Q => \^ack_in_t_reg_0\,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(0),
      O => \data_p1[0]_i_1__0_n_4\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E240"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => ap_condition_103,
      I3 => out_stream_TREADY,
      O => load_p1
    );
\data_p1[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => D(1),
      O => \data_p1[1]_i_2__0_n_4\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1__0_n_4\,
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
      D => \data_p1[1]_i_2__0_n_4\,
      Q => out_stream_TKEEP(1),
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
      Q => data_p2(0),
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
      Q => data_p2(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_3\ is
  port (
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    ap_condition_103 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_3\ : entity is "relu_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_3\ is
  signal \ack_in_t_i_1__4_n_4\ : STD_LOGIC;
  signal ack_in_t_reg_n_4 : STD_LOGIC;
  signal \data_p1[1]_i_1_n_4\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \data_p2[1]_i_1_n_4\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__3\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__4\ : label is "soft_lutpair11";
begin
  out_stream_TSTRB(0) <= \^out_stream_tstrb\(0);
\FSM_sequential_state[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => ap_condition_103,
      I3 => \state__0\(1),
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
      I3 => ack_in_t_reg_n_4,
      I4 => ap_condition_103,
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
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => ap_condition_103,
      I2 => ack_in_t_reg_n_4,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__4_n_4\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__4_n_4\,
      Q => ack_in_t_reg_n_4,
      R => ap_rst_n_inv
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFFFFF8083000"
    )
        port map (
      I0 => data_p2(1),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ap_condition_103,
      I4 => out_stream_TREADY,
      I5 => \^out_stream_tstrb\(0),
      O => \data_p1[1]_i_1_n_4\
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[1]_i_1_n_4\,
      Q => \^out_stream_tstrb\(0),
      R => '0'
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => ack_in_t_reg_n_4,
      I1 => ap_condition_103,
      I2 => data_p2(1),
      O => \data_p2[1]_i_1_n_4\
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[1]_i_1_n_4\,
      Q => data_p2(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1\ is
  port (
    in_stream_TLAST_int_regslice : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_condition_103 : in STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1\ : entity is "relu_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1\ is
  signal \ack_in_t_i_1__1_n_4\ : STD_LOGIC;
  signal ack_in_t_reg_n_4 : STD_LOGIC;
  signal \data_p1[0]_i_1__3_n_4\ : STD_LOGIC;
  signal \data_p1[0]_i_2_n_4\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p2[0]_i_1_n_4\ : STD_LOGIC;
  signal \^in_stream_tlast_int_regslice\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__1\ : label is "soft_lutpair4";
begin
  in_stream_TLAST_int_regslice(0) <= \^in_stream_tlast_int_regslice\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => ap_condition_103,
      I1 => \state__0\(0),
      I2 => in_stream_TVALID,
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => ap_condition_103,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ack_in_t_reg_n_4,
      I4 => in_stream_TVALID,
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
      I0 => ap_condition_103,
      I1 => in_stream_TVALID,
      I2 => ack_in_t_reg_n_4,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__1_n_4\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__1_n_4\,
      Q => ack_in_t_reg_n_4,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBEFFFA8082000"
    )
        port map (
      I0 => \data_p1[0]_i_2_n_4\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TVALID,
      I4 => ap_condition_103,
      I5 => \^in_stream_tlast_int_regslice\(0),
      O => \data_p1[0]_i_1__3_n_4\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TLAST(0),
      O => \data_p1[0]_i_2_n_4\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__3_n_4\,
      Q => \^in_stream_tlast_int_regslice\(0),
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => in_stream_TLAST(0),
      I1 => in_stream_TVALID,
      I2 => ack_in_t_reg_n_4,
      I3 => data_p2(0),
      O => \data_p2[0]_i_1_n_4\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1_n_4\,
      Q => data_p2(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1_2\ is
  port (
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_inv : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    ap_condition_103 : in STD_LOGIC;
    in_stream_TLAST_int_regslice : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1_2\ : entity is "relu_regslice_both";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1_2\ is
  signal \ack_in_t_i_1__5_n_4\ : STD_LOGIC;
  signal ack_in_t_reg_n_4 : STD_LOGIC;
  signal \data_p1[0]_i_1__4_n_4\ : STD_LOGIC;
  signal \data_p1[0]_i_2__0_n_4\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p2[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^out_stream_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__5\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute SOFT_HLUTNM of \ack_in_t_i_1__5\ : label is "soft_lutpair10";
begin
  out_stream_TLAST(0) <= \^out_stream_tlast\(0);
\FSM_sequential_state[0]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(0),
      I2 => ap_condition_103,
      I3 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC4C4C"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ack_in_t_reg_n_4,
      I4 => ap_condition_103,
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
\ack_in_t_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FFFAF0"
    )
        port map (
      I0 => out_stream_TREADY,
      I1 => ap_condition_103,
      I2 => ack_in_t_reg_n_4,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \ack_in_t_i_1__5_n_4\
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ack_in_t_i_1__5_n_4\,
      Q => ack_in_t_reg_n_4,
      R => ap_rst_n_inv
    );
\data_p1[0]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBEFFFA8082000"
    )
        port map (
      I0 => \data_p1[0]_i_2__0_n_4\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => ap_condition_103,
      I4 => out_stream_TREADY,
      I5 => \^out_stream_tlast\(0),
      O => \data_p1[0]_i_1__4_n_4\
    );
\data_p1[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(0),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => in_stream_TLAST_int_regslice(0),
      O => \data_p1[0]_i_2__0_n_4\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1__4_n_4\,
      Q => \^out_stream_tlast\(0),
      R => '0'
    );
\data_p2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => in_stream_TLAST_int_regslice(0),
      I1 => ap_condition_103,
      I2 => ack_in_t_reg_n_4,
      I3 => data_p2(0),
      O => \data_p2[0]_i_1__0_n_4\
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2[0]_i_1__0_n_4\,
      Q => data_p2(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    in_stream_TVALID : in STD_LOGIC;
    out_stream_TREADY : in STD_LOGIC;
    in_stream_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_stream_TREADY : out STD_LOGIC;
    in_stream_TKEEP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_stream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_stream_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_stream_TVALID : out STD_LOGIC;
    out_stream_TKEEP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TSTRB : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_stream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu : entity is "yes";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu is
  signal \<const0>\ : STD_LOGIC;
  signal ap_condition_103 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal i_3_fu_148_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_fu_70 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal icmp_ln32_fu_154_p2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_stream_TKEEP_int_regslice : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal in_stream_TLAST_int_regslice : STD_LOGIC_VECTOR ( 0 to 0 );
  signal in_stream_TVALID_int_regslice : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \^out_stream_tdata\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^out_stream_tstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal regslice_both_in_stream_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_in_stream_V_data_V_U_n_9 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_out_stream_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_out_stream_V_keep_V_U_n_4 : STD_LOGIC;
begin
  out_stream_TDATA(15) <= \<const0>\;
  out_stream_TDATA(14 downto 0) <= \^out_stream_tdata\(14 downto 0);
  out_stream_TSTRB(1) <= \^out_stream_tstrb\(0);
  out_stream_TSTRB(0) <= \^out_stream_tstrb\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_out_stream_V_data_V_U_n_11,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => ap_start,
      O => ap_idle
    );
ap_loop_exit_ready_pp0_iter1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_out_stream_V_data_V_U_n_5,
      Q => ap_loop_exit_ready_pp0_iter1_reg,
      R => '0'
    );
flow_control_loop_pipe_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_flow_control_loop_pipe
     port map (
      D(3 downto 0) => i_3_fu_148_p2(3 downto 0),
      Q(3 downto 0) => i_fu_70(3 downto 0),
      ap_clk => ap_clk,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg_0 => regslice_both_out_stream_V_data_V_U_n_10,
      ap_start => ap_start,
      icmp_ln32_fu_154_p2(0) => icmp_ln32_fu_154_p2(0)
    );
\i_fu_70_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_103,
      D => i_3_fu_148_p2(0),
      Q => i_fu_70(0),
      R => '0'
    );
\i_fu_70_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_103,
      D => i_3_fu_148_p2(1),
      Q => i_fu_70(1),
      R => '0'
    );
\i_fu_70_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_103,
      D => i_3_fu_148_p2(2),
      Q => i_fu_70(2),
      R => '0'
    );
\i_fu_70_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_103,
      D => i_3_fu_148_p2(3),
      Q => i_fu_70(3),
      R => '0'
    );
regslice_both_in_stream_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both
     port map (
      CO(0) => regslice_both_in_stream_V_data_V_U_n_5,
      Q(0) => in_stream_TVALID_int_regslice,
      ack_in_t_reg_0 => in_stream_TREADY,
      ap_clk => ap_clk,
      ap_condition_103 => ap_condition_103,
      ap_rst_n_inv => ap_rst_n_inv,
      \data_p1_reg[14]_0\(14) => regslice_both_in_stream_V_data_V_U_n_7,
      \data_p1_reg[14]_0\(13) => regslice_both_in_stream_V_data_V_U_n_8,
      \data_p1_reg[14]_0\(12) => regslice_both_in_stream_V_data_V_U_n_9,
      \data_p1_reg[14]_0\(11) => regslice_both_in_stream_V_data_V_U_n_10,
      \data_p1_reg[14]_0\(10) => regslice_both_in_stream_V_data_V_U_n_11,
      \data_p1_reg[14]_0\(9) => regslice_both_in_stream_V_data_V_U_n_12,
      \data_p1_reg[14]_0\(8) => regslice_both_in_stream_V_data_V_U_n_13,
      \data_p1_reg[14]_0\(7) => regslice_both_in_stream_V_data_V_U_n_14,
      \data_p1_reg[14]_0\(6) => regslice_both_in_stream_V_data_V_U_n_15,
      \data_p1_reg[14]_0\(5) => regslice_both_in_stream_V_data_V_U_n_16,
      \data_p1_reg[14]_0\(4) => regslice_both_in_stream_V_data_V_U_n_17,
      \data_p1_reg[14]_0\(3) => regslice_both_in_stream_V_data_V_U_n_18,
      \data_p1_reg[14]_0\(2) => regslice_both_in_stream_V_data_V_U_n_19,
      \data_p1_reg[14]_0\(1) => regslice_both_in_stream_V_data_V_U_n_20,
      \data_p1_reg[14]_0\(0) => regslice_both_in_stream_V_data_V_U_n_21,
      in_stream_TDATA(15 downto 0) => in_stream_TDATA(15 downto 0),
      in_stream_TVALID => in_stream_TVALID
    );
regslice_both_in_stream_V_keep_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0\
     port map (
      Q(1 downto 0) => in_stream_TKEEP_int_regslice(1 downto 0),
      ap_clk => ap_clk,
      ap_condition_103 => ap_condition_103,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TKEEP(1 downto 0) => in_stream_TKEEP(1 downto 0),
      in_stream_TVALID => in_stream_TVALID
    );
regslice_both_in_stream_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1\
     port map (
      ap_clk => ap_clk,
      ap_condition_103 => ap_condition_103,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TLAST(0) => in_stream_TLAST(0),
      in_stream_TLAST_int_regslice(0) => in_stream_TLAST_int_regslice(0),
      in_stream_TVALID => in_stream_TVALID
    );
regslice_both_out_stream_V_data_V_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both_0
     port map (
      CO(0) => regslice_both_in_stream_V_data_V_U_n_5,
      E(0) => load_p2,
      Q(0) => in_stream_TVALID_int_regslice,
      ap_clk => ap_clk,
      ap_condition_103 => ap_condition_103,
      ap_done => ap_done,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_exit_ready_pp0_iter1_reg => ap_loop_exit_ready_pp0_iter1_reg,
      ap_loop_exit_ready_pp0_iter1_reg_reg => regslice_both_out_stream_V_data_V_U_n_5,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg => regslice_both_out_stream_V_data_V_U_n_10,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_rst_n_inv => ap_rst_n_inv,
      ap_start => ap_start,
      ap_start_0 => regslice_both_out_stream_V_data_V_U_n_11,
      \data_p2_reg[14]_0\(14) => regslice_both_in_stream_V_data_V_U_n_7,
      \data_p2_reg[14]_0\(13) => regslice_both_in_stream_V_data_V_U_n_8,
      \data_p2_reg[14]_0\(12) => regslice_both_in_stream_V_data_V_U_n_9,
      \data_p2_reg[14]_0\(11) => regslice_both_in_stream_V_data_V_U_n_10,
      \data_p2_reg[14]_0\(10) => regslice_both_in_stream_V_data_V_U_n_11,
      \data_p2_reg[14]_0\(9) => regslice_both_in_stream_V_data_V_U_n_12,
      \data_p2_reg[14]_0\(8) => regslice_both_in_stream_V_data_V_U_n_13,
      \data_p2_reg[14]_0\(7) => regslice_both_in_stream_V_data_V_U_n_14,
      \data_p2_reg[14]_0\(6) => regslice_both_in_stream_V_data_V_U_n_15,
      \data_p2_reg[14]_0\(5) => regslice_both_in_stream_V_data_V_U_n_16,
      \data_p2_reg[14]_0\(4) => regslice_both_in_stream_V_data_V_U_n_17,
      \data_p2_reg[14]_0\(3) => regslice_both_in_stream_V_data_V_U_n_18,
      \data_p2_reg[14]_0\(2) => regslice_both_in_stream_V_data_V_U_n_19,
      \data_p2_reg[14]_0\(1) => regslice_both_in_stream_V_data_V_U_n_20,
      \data_p2_reg[14]_0\(0) => regslice_both_in_stream_V_data_V_U_n_21,
      \data_p2_reg[1]_0\ => regslice_both_out_stream_V_keep_V_U_n_4,
      icmp_ln32_fu_154_p2(0) => icmp_ln32_fu_154_p2(0),
      out_stream_TDATA(14 downto 0) => \^out_stream_tdata\(14 downto 0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TVALID => out_stream_TVALID
    );
regslice_both_out_stream_V_keep_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_1\
     port map (
      D(1 downto 0) => in_stream_TKEEP_int_regslice(1 downto 0),
      E(0) => load_p2,
      ack_in_t_reg_0 => regslice_both_out_stream_V_keep_V_U_n_4,
      ap_clk => ap_clk,
      ap_condition_103 => ap_condition_103,
      ap_rst_n_inv => ap_rst_n_inv,
      out_stream_TKEEP(1 downto 0) => out_stream_TKEEP(1 downto 0),
      out_stream_TREADY => out_stream_TREADY
    );
regslice_both_out_stream_V_last_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized1_2\
     port map (
      ap_clk => ap_clk,
      ap_condition_103 => ap_condition_103,
      ap_rst_n_inv => ap_rst_n_inv,
      in_stream_TLAST_int_regslice(0) => in_stream_TLAST_int_regslice(0),
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TREADY => out_stream_TREADY
    );
regslice_both_out_stream_V_strb_V_U: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu_regslice_both__parameterized0_3\
     port map (
      ap_clk => ap_clk,
      ap_condition_103 => ap_condition_103,
      ap_rst_n_inv => ap_rst_n_inv,
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TSTRB(0) => \^out_stream_tstrb\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cnn_pipeline_relu_0_1,relu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "relu,Vivado 2025.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^out_stream_tdata\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_inst_out_stream_TDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 to 15 );
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "1'b1";
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
  out_stream_TDATA(15) <= \<const0>\;
  out_stream_TDATA(14 downto 0) <= \^out_stream_tdata\(14 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_relu
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      in_stream_TDATA(15 downto 0) => in_stream_TDATA(15 downto 0),
      in_stream_TKEEP(1 downto 0) => in_stream_TKEEP(1 downto 0),
      in_stream_TLAST(0) => in_stream_TLAST(0),
      in_stream_TREADY => in_stream_TREADY,
      in_stream_TSTRB(1 downto 0) => B"00",
      in_stream_TVALID => in_stream_TVALID,
      out_stream_TDATA(15) => NLW_inst_out_stream_TDATA_UNCONNECTED(15),
      out_stream_TDATA(14 downto 0) => \^out_stream_tdata\(14 downto 0),
      out_stream_TKEEP(1 downto 0) => out_stream_TKEEP(1 downto 0),
      out_stream_TLAST(0) => out_stream_TLAST(0),
      out_stream_TREADY => out_stream_TREADY,
      out_stream_TSTRB(1 downto 0) => out_stream_TSTRB(1 downto 0),
      out_stream_TVALID => out_stream_TVALID
    );
end STRUCTURE;

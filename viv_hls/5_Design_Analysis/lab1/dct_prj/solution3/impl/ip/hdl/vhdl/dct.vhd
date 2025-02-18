-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.3
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dct is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of dct is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "dct,hls_ip_2015_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160tfbg484-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.740000,HLS_SYN_LAT=874,HLS_SYN_TPT=none,HLS_SYN_MEM=5,HLS_SYN_DSP=8,HLS_SYN_FF=677,HLS_SYN_LUT=534}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_pp0_stg0_fsm_1 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_st4_fsm_2 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_st5_fsm_3 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_pp1_stg0_fsm_4 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_st8_fsm_5 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_22 : BOOLEAN;
    signal indvar_flatten_reg_132 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_i_reg_143 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i_reg_154 : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten2_reg_165 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_i2_reg_176 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i6_reg_187 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_flatten_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_417 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_61 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal indvar_flatten_next_fu_226_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal c_i_mid2_fu_244_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i_mid2_reg_426 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_i_mid2_fu_252_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_i_mid2_reg_431 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_fu_287_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_flatten2_fu_318_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten2_reg_447 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp1_stg0_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_89 : BOOLEAN;
    signal ap_reg_ppiten_pp1_it0 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp1_it1 : STD_LOGIC := '0';
    signal indvar_flatten_next2_fu_324_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_i2_mid2_fu_350_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_i2_mid2_reg_456 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_i_fu_401_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_4_i_reg_466 : STD_LOGIC_VECTOR (5 downto 0);
    signal c_1_fu_407_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_120 : BOOLEAN;
    signal grp_dct_dct_2d_fu_198_ap_done : STD_LOGIC;
    signal buf_2d_in_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal buf_2d_in_ce0 : STD_LOGIC;
    signal buf_2d_in_we0 : STD_LOGIC;
    signal buf_2d_in_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal buf_2d_in_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal buf_2d_in_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal buf_2d_in_ce1 : STD_LOGIC;
    signal buf_2d_in_q1 : STD_LOGIC_VECTOR (15 downto 0);
    signal buf_2d_out_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal buf_2d_out_ce0 : STD_LOGIC;
    signal buf_2d_out_we0 : STD_LOGIC;
    signal buf_2d_out_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal buf_2d_out_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dct_dct_2d_fu_198_ap_start : STD_LOGIC;
    signal grp_dct_dct_2d_fu_198_ap_idle : STD_LOGIC;
    signal grp_dct_dct_2d_fu_198_ap_ready : STD_LOGIC;
    signal grp_dct_dct_2d_fu_198_in_block_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_dct_2d_fu_198_in_block_ce0 : STD_LOGIC;
    signal grp_dct_dct_2d_fu_198_in_block_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dct_dct_2d_fu_198_in_block_address1 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_dct_2d_fu_198_in_block_ce1 : STD_LOGIC;
    signal grp_dct_dct_2d_fu_198_in_block_q1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dct_dct_2d_fu_198_out_block_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_dct_dct_2d_fu_198_out_block_ce0 : STD_LOGIC;
    signal grp_dct_dct_2d_fu_198_out_block_we0 : STD_LOGIC;
    signal grp_dct_dct_2d_fu_198_out_block_d0 : STD_LOGIC_VECTOR (15 downto 0);
    signal r_i_phi_fu_147_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_i2_phi_fu_180_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_dct_dct_2d_fu_198_ap_start_ap_start_reg : STD_LOGIC := '0';
    signal ap_sig_cseq_ST_st4_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_188 : BOOLEAN;
    signal tmp_i_11_fu_282_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_39_cast_fu_313_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_43_cast_fu_396_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_i_fu_413_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond_i_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_fu_232_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_fu_260_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_i_cast6_fu_272_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_i_fu_264_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_9_i_fu_276_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_s_fu_293_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_38_cast_fu_300_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_i_cast_fu_304_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_26_fu_307_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal exitcond_i1_fu_336_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_1_fu_330_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_27_fu_358_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_1_fu_370_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_i6_mid2_fu_342_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_41_cast_fu_366_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_i_cast_fu_386_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_28_fu_390_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i6_cast2_fu_382_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_1_i5_fu_374_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_386 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component dct_dct_2d IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_block_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        in_block_ce0 : OUT STD_LOGIC;
        in_block_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
        in_block_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
        in_block_ce1 : OUT STD_LOGIC;
        in_block_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
        out_block_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        out_block_ce0 : OUT STD_LOGIC;
        out_block_we0 : OUT STD_LOGIC;
        out_block_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component dct_dct_2d_col_inbuf IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        address1 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component dct_dct_2d_row_outbuf IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    buf_2d_in_U : component dct_dct_2d_col_inbuf
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_2d_in_address0,
        ce0 => buf_2d_in_ce0,
        we0 => buf_2d_in_we0,
        d0 => buf_2d_in_d0,
        q0 => buf_2d_in_q0,
        address1 => buf_2d_in_address1,
        ce1 => buf_2d_in_ce1,
        q1 => buf_2d_in_q1);

    buf_2d_out_U : component dct_dct_2d_row_outbuf
    generic map (
        DataWidth => 16,
        AddressRange => 64,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buf_2d_out_address0,
        ce0 => buf_2d_out_ce0,
        we0 => buf_2d_out_we0,
        d0 => buf_2d_out_d0,
        q0 => buf_2d_out_q0);

    grp_dct_dct_2d_fu_198 : component dct_dct_2d
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dct_dct_2d_fu_198_ap_start,
        ap_done => grp_dct_dct_2d_fu_198_ap_done,
        ap_idle => grp_dct_dct_2d_fu_198_ap_idle,
        ap_ready => grp_dct_dct_2d_fu_198_ap_ready,
        in_block_address0 => grp_dct_dct_2d_fu_198_in_block_address0,
        in_block_ce0 => grp_dct_dct_2d_fu_198_in_block_ce0,
        in_block_q0 => grp_dct_dct_2d_fu_198_in_block_q0,
        in_block_address1 => grp_dct_dct_2d_fu_198_in_block_address1,
        in_block_ce1 => grp_dct_dct_2d_fu_198_in_block_ce1,
        in_block_q1 => grp_dct_dct_2d_fu_198_in_block_q1,
        out_block_address0 => grp_dct_dct_2d_fu_198_out_block_address0,
        out_block_ce0 => grp_dct_dct_2d_fu_198_out_block_ce0,
        out_block_we0 => grp_dct_dct_2d_fu_198_out_block_we0,
        out_block_d0 => grp_dct_dct_2d_fu_198_out_block_d0);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and not((exitcond_flatten_fu_220_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (exitcond_flatten_fu_220_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and not((exitcond_flatten_fu_220_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp1_it0 assign process. --
    ap_reg_ppiten_pp1_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not((ap_const_lv1_0 = exitcond_flatten2_fu_318_p2)))) then 
                    ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3) and not((ap_const_logic_0 = grp_dct_dct_2d_fu_198_ap_done)))) then 
                    ap_reg_ppiten_pp1_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp1_it1 assign process. --
    ap_reg_ppiten_pp1_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_lv1_0 = exitcond_flatten2_fu_318_p2))) then 
                    ap_reg_ppiten_pp1_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3) and not((ap_const_logic_0 = grp_dct_dct_2d_fu_198_ap_done))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not((ap_const_lv1_0 = exitcond_flatten2_fu_318_p2))))) then 
                    ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- grp_dct_dct_2d_fu_198_ap_start_ap_start_reg assign process. --
    grp_dct_dct_2d_fu_198_ap_start_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dct_dct_2d_fu_198_ap_start_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_2)) then 
                    grp_dct_dct_2d_fu_198_ap_start_ap_start_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = grp_dct_dct_2d_fu_198_ap_ready)) then 
                    grp_dct_dct_2d_fu_198_ap_start_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- c_i6_reg_187 assign process. --
    c_i6_reg_187_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and (ap_const_lv1_0 = exitcond_flatten2_fu_318_p2))) then 
                c_i6_reg_187 <= c_1_fu_407_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3) and not((ap_const_logic_0 = grp_dct_dct_2d_fu_198_ap_done)))) then 
                c_i6_reg_187 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- c_i_reg_154 assign process. --
    c_i_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond_flatten_fu_220_p2 = ap_const_lv1_0))) then 
                c_i_reg_154 <= c_fu_287_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                c_i_reg_154 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- indvar_flatten2_reg_165 assign process. --
    indvar_flatten2_reg_165_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and (ap_const_lv1_0 = exitcond_flatten2_fu_318_p2))) then 
                indvar_flatten2_reg_165 <= indvar_flatten_next2_fu_324_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3) and not((ap_const_logic_0 = grp_dct_dct_2d_fu_198_ap_done)))) then 
                indvar_flatten2_reg_165 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    -- indvar_flatten_reg_132 assign process. --
    indvar_flatten_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond_flatten_fu_220_p2 = ap_const_lv1_0))) then 
                indvar_flatten_reg_132 <= indvar_flatten_next_fu_226_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                indvar_flatten_reg_132 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    -- r_i2_reg_176 assign process. --
    r_i2_reg_176_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and (ap_const_lv1_0 = exitcond_flatten2_reg_447))) then 
                r_i2_reg_176 <= r_i2_mid2_reg_456;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3) and not((ap_const_logic_0 = grp_dct_dct_2d_fu_198_ap_done)))) then 
                r_i2_reg_176 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- r_i_reg_143 assign process. --
    r_i_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (exitcond_flatten_reg_417 = ap_const_lv1_0))) then 
                r_i_reg_143 <= r_i_mid2_reg_431;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                r_i_reg_143 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (exitcond_flatten_fu_220_p2 = ap_const_lv1_0))) then
                c_i_mid2_reg_426 <= c_i_mid2_fu_244_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4)) then
                exitcond_flatten2_reg_447 <= exitcond_flatten2_fu_318_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1)) then
                exitcond_flatten_reg_417 <= exitcond_flatten_fu_220_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and (ap_const_lv1_0 = exitcond_flatten2_fu_318_p2))) then
                r_i2_mid2_reg_456 <= r_i2_mid2_fu_350_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and (exitcond_flatten_fu_220_p2 = ap_const_lv1_0))) then
                r_i_mid2_reg_431 <= r_i_mid2_fu_252_p3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_lv1_0 = exitcond_flatten2_fu_318_p2))) then
                tmp_4_i_reg_466 <= tmp_4_i_fu_401_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_flatten_fu_220_p2, ap_reg_ppiten_pp0_it0, exitcond_flatten2_fu_318_p2, ap_reg_ppiten_pp1_it0, grp_dct_dct_2d_fu_198_ap_done)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_pp0_stg0_fsm_1 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((exitcond_flatten_fu_220_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_2;
                end if;
            when ap_ST_st4_fsm_2 => 
                ap_NS_fsm <= ap_ST_st5_fsm_3;
            when ap_ST_st5_fsm_3 => 
                if (not((ap_const_logic_0 = grp_dct_dct_2d_fu_198_ap_done))) then
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_3;
                end if;
            when ap_ST_pp1_stg0_fsm_4 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not((ap_const_lv1_0 = exitcond_flatten2_fu_318_p2))))) then
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                else
                    ap_NS_fsm <= ap_ST_st8_fsm_5;
                end if;
            when ap_ST_st8_fsm_5 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st8_fsm_5)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st8_fsm_5)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_120 assign process. --
    ap_sig_bdd_120_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_120 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_188 assign process. --
    ap_sig_bdd_188_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_188 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_22 assign process. --
    ap_sig_bdd_22_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_22 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_386 assign process. --
    ap_sig_bdd_386_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_386 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_bdd_61 assign process. --
    ap_sig_bdd_61_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_61 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_89 assign process. --
    ap_sig_bdd_89_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_89 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_1 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_1_assign_proc : process(ap_sig_bdd_61)
    begin
        if (ap_sig_bdd_61) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_pp1_stg0_fsm_4 assign process. --
    ap_sig_cseq_ST_pp1_stg0_fsm_4_assign_proc : process(ap_sig_bdd_89)
    begin
        if (ap_sig_bdd_89) then 
            ap_sig_cseq_ST_pp1_stg0_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp1_stg0_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_22)
    begin
        if (ap_sig_bdd_22) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_2 assign process. --
    ap_sig_cseq_ST_st4_fsm_2_assign_proc : process(ap_sig_bdd_188)
    begin
        if (ap_sig_bdd_188) then 
            ap_sig_cseq_ST_st4_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_3 assign process. --
    ap_sig_cseq_ST_st5_fsm_3_assign_proc : process(ap_sig_bdd_120)
    begin
        if (ap_sig_bdd_120) then 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_5 assign process. --
    ap_sig_cseq_ST_st8_fsm_5_assign_proc : process(ap_sig_bdd_386)
    begin
        if (ap_sig_bdd_386) then 
            ap_sig_cseq_ST_st8_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- buf_2d_in_address0 assign process. --
    buf_2d_in_address0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it1, ap_sig_cseq_ST_st5_fsm_3, grp_dct_dct_2d_fu_198_in_block_address0, tmp_39_cast_fu_313_p1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) then 
            buf_2d_in_address0 <= tmp_39_cast_fu_313_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
            buf_2d_in_address0 <= grp_dct_dct_2d_fu_198_in_block_address0;
        else 
            buf_2d_in_address0 <= "XXXXXX";
        end if; 
    end process;

    buf_2d_in_address1 <= grp_dct_dct_2d_fu_198_in_block_address1;

    -- buf_2d_in_ce0 assign process. --
    buf_2d_in_ce0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it1, ap_sig_cseq_ST_st5_fsm_3, grp_dct_dct_2d_fu_198_in_block_ce0)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) then 
            buf_2d_in_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
            buf_2d_in_ce0 <= grp_dct_dct_2d_fu_198_in_block_ce0;
        else 
            buf_2d_in_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- buf_2d_in_ce1 assign process. --
    buf_2d_in_ce1_assign_proc : process(ap_sig_cseq_ST_st5_fsm_3, grp_dct_dct_2d_fu_198_in_block_ce1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
            buf_2d_in_ce1 <= grp_dct_dct_2d_fu_198_in_block_ce1;
        else 
            buf_2d_in_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    buf_2d_in_d0 <= input_r_q0;

    -- buf_2d_in_we0 assign process. --
    buf_2d_in_we0_assign_proc : process(exitcond_flatten_reg_417, ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it1)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (exitcond_flatten_reg_417 = ap_const_lv1_0)))) then 
            buf_2d_in_we0 <= ap_const_logic_1;
        else 
            buf_2d_in_we0 <= ap_const_logic_0;
        end if; 
    end process;


    -- buf_2d_out_address0 assign process. --
    buf_2d_out_address0_assign_proc : process(ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it0, ap_sig_cseq_ST_st5_fsm_3, grp_dct_dct_2d_fu_198_out_block_address0, tmp_43_cast_fu_396_p1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0))) then 
            buf_2d_out_address0 <= tmp_43_cast_fu_396_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
            buf_2d_out_address0 <= grp_dct_dct_2d_fu_198_out_block_address0;
        else 
            buf_2d_out_address0 <= "XXXXXX";
        end if; 
    end process;


    -- buf_2d_out_ce0 assign process. --
    buf_2d_out_ce0_assign_proc : process(ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it0, ap_sig_cseq_ST_st5_fsm_3, grp_dct_dct_2d_fu_198_out_block_ce0)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0))) then 
            buf_2d_out_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
            buf_2d_out_ce0 <= grp_dct_dct_2d_fu_198_out_block_ce0;
        else 
            buf_2d_out_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_2d_out_d0 <= grp_dct_dct_2d_fu_198_out_block_d0;

    -- buf_2d_out_we0 assign process. --
    buf_2d_out_we0_assign_proc : process(ap_sig_cseq_ST_st5_fsm_3, grp_dct_dct_2d_fu_198_out_block_we0)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_3)) then 
            buf_2d_out_we0 <= grp_dct_dct_2d_fu_198_out_block_we0;
        else 
            buf_2d_out_we0 <= ap_const_logic_0;
        end if; 
    end process;

    c_1_fu_407_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(c_i6_mid2_fu_342_p3));
    c_fu_287_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(c_i_mid2_fu_244_p3));
    c_i6_cast2_fu_382_p1 <= std_logic_vector(resize(unsigned(c_i6_mid2_fu_342_p3),6));
    c_i6_mid2_fu_342_p3 <= 
        ap_const_lv4_0 when (exitcond_i1_fu_336_p2(0) = '1') else 
        c_i6_reg_187;
    c_i_cast6_fu_272_p1 <= std_logic_vector(resize(unsigned(c_i_mid2_fu_244_p3),6));
    c_i_mid2_fu_244_p3 <= 
        ap_const_lv4_0 when (exitcond_i_fu_238_p2(0) = '1') else 
        c_i_reg_154;
    exitcond_flatten2_fu_318_p2 <= "1" when (indvar_flatten2_reg_165 = ap_const_lv7_40) else "0";
    exitcond_flatten_fu_220_p2 <= "1" when (indvar_flatten_reg_132 = ap_const_lv7_40) else "0";
    exitcond_i1_fu_336_p2 <= "1" when (c_i6_reg_187 = ap_const_lv4_8) else "0";
    exitcond_i_fu_238_p2 <= "1" when (c_i_reg_154 = ap_const_lv4_8) else "0";
    grp_dct_dct_2d_fu_198_ap_start <= grp_dct_dct_2d_fu_198_ap_start_ap_start_reg;
    grp_dct_dct_2d_fu_198_in_block_q0 <= buf_2d_in_q0;
    grp_dct_dct_2d_fu_198_in_block_q1 <= buf_2d_in_q1;
    indvar_flatten_next2_fu_324_p2 <= std_logic_vector(unsigned(indvar_flatten2_reg_165) + unsigned(ap_const_lv7_1));
    indvar_flatten_next_fu_226_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_132) + unsigned(ap_const_lv7_1));
    input_r_address0 <= tmp_i_11_fu_282_p1(6 - 1 downto 0);

    -- input_r_ce0 assign process. --
    input_r_ce0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it0)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0))) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_address0 <= tmp_5_i_fu_413_p1(6 - 1 downto 0);

    -- output_r_ce0 assign process. --
    output_r_ce0_assign_proc : process(ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= buf_2d_out_q0;

    -- output_r_we0 assign process. --
    output_r_we0_assign_proc : process(exitcond_flatten2_reg_447, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and (ap_const_lv1_0 = exitcond_flatten2_reg_447)))) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    r_1_fu_330_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(r_i2_phi_fu_180_p4));
    r_fu_232_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(r_i_phi_fu_147_p4));
    r_i2_mid2_fu_350_p3 <= 
        r_1_fu_330_p2 when (exitcond_i1_fu_336_p2(0) = '1') else 
        r_i2_phi_fu_180_p4;

    -- r_i2_phi_fu_180_p4 assign process. --
    r_i2_phi_fu_180_p4_assign_proc : process(r_i2_reg_176, exitcond_flatten2_reg_447, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1, r_i2_mid2_reg_456)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and (ap_const_lv1_0 = exitcond_flatten2_reg_447))) then 
            r_i2_phi_fu_180_p4 <= r_i2_mid2_reg_456;
        else 
            r_i2_phi_fu_180_p4 <= r_i2_reg_176;
        end if; 
    end process;

    r_i_mid2_fu_252_p3 <= 
        r_fu_232_p2 when (exitcond_i_fu_238_p2(0) = '1') else 
        r_i_phi_fu_147_p4;

    -- r_i_phi_fu_147_p4 assign process. --
    r_i_phi_fu_147_p4_assign_proc : process(r_i_reg_143, exitcond_flatten_reg_417, ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_reg_ppiten_pp0_it1, r_i_mid2_reg_431)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (exitcond_flatten_reg_417 = ap_const_lv1_0))) then 
            r_i_phi_fu_147_p4 <= r_i_mid2_reg_431;
        else 
            r_i_phi_fu_147_p4 <= r_i_reg_143;
        end if; 
    end process;

    tmp_1_fu_370_p1 <= r_i2_mid2_fu_350_p3(3 - 1 downto 0);
    tmp_1_i5_fu_374_p3 <= (tmp_1_fu_370_p1 & ap_const_lv3_0);
    tmp_1_i_cast_fu_304_p1 <= std_logic_vector(resize(unsigned(c_i_mid2_reg_426),8));
    tmp_26_fu_307_p2 <= std_logic_vector(unsigned(tmp_38_cast_fu_300_p1) + unsigned(tmp_1_i_cast_fu_304_p1));
    tmp_27_fu_358_p3 <= (r_i2_mid2_fu_350_p3 & ap_const_lv3_0);
    tmp_28_fu_390_p2 <= std_logic_vector(unsigned(tmp_41_cast_fu_366_p1) + unsigned(tmp_3_i_cast_fu_386_p1));
    tmp_38_cast_fu_300_p1 <= std_logic_vector(resize(unsigned(tmp_s_fu_293_p3),8));
    tmp_39_cast_fu_313_p1 <= std_logic_vector(resize(unsigned(tmp_26_fu_307_p2),64));
    tmp_3_i_cast_fu_386_p1 <= std_logic_vector(resize(unsigned(c_i6_mid2_fu_342_p3),8));
    tmp_41_cast_fu_366_p1 <= std_logic_vector(resize(unsigned(tmp_27_fu_358_p3),8));
    tmp_43_cast_fu_396_p1 <= std_logic_vector(resize(unsigned(tmp_28_fu_390_p2),64));
    tmp_4_i_fu_401_p2 <= std_logic_vector(unsigned(c_i6_cast2_fu_382_p1) + unsigned(tmp_1_i5_fu_374_p3));
    tmp_5_i_fu_413_p1 <= std_logic_vector(resize(unsigned(tmp_4_i_reg_466),64));
    tmp_9_i_fu_276_p2 <= std_logic_vector(unsigned(c_i_cast6_fu_272_p1) + unsigned(tmp_i_fu_264_p3));
    tmp_fu_260_p1 <= r_i_mid2_fu_252_p3(3 - 1 downto 0);
    tmp_i_11_fu_282_p1 <= std_logic_vector(resize(unsigned(tmp_9_i_fu_276_p2),64));
    tmp_i_fu_264_p3 <= (tmp_fu_260_p1 & ap_const_lv3_0);
    tmp_s_fu_293_p3 <= (r_i_mid2_reg_431 & ap_const_lv3_0);
end behav;

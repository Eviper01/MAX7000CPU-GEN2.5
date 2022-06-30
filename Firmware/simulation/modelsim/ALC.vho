-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/30/2022 22:12:42"

-- 
-- Device: Altera EPM7128SLC84-15 Package PLCC84
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	ALC IS
    PORT (
	regA : IN std_logic_vector(15 DOWNTO 0);
	regB : IN std_logic_vector(15 DOWNTO 0);
	MainBus : OUT std_logic_vector(15 DOWNTO 0);
	Ins : IN std_logic_vector(5 DOWNTO 0);
	CLK_Select : IN std_logic;
	FastCLK : IN std_logic;
	UserCLK : IN std_logic;
	CLK : OUT std_logic;
	ALU_Regs : IN std_logic;
	I2CData : IN std_logic;
	I2CCLK : IN std_logic;
	OverflowFlag : OUT std_logic;
	EqualFlag : OUT std_logic
	);
END ALC;

-- Design Ports Information
-- regA[0]	=>  Location: PIN_4
-- regA[1]	=>  Location: PIN_5
-- regA[2]	=>  Location: PIN_6
-- regA[3]	=>  Location: PIN_8
-- regA[4]	=>  Location: PIN_9
-- regA[5]	=>  Location: PIN_10
-- regA[6]	=>  Location: PIN_11
-- regA[7]	=>  Location: PIN_12
-- regA[8]	=>  Location: PIN_15
-- regA[9]	=>  Location: PIN_16
-- regA[10]	=>  Location: PIN_17
-- regA[11]	=>  Location: PIN_18
-- regA[12]	=>  Location: PIN_20
-- regA[13]	=>  Location: PIN_21
-- regA[14]	=>  Location: PIN_22
-- regA[15]	=>  Location: PIN_24
-- regB[0]	=>  Location: PIN_25
-- regB[1]	=>  Location: PIN_27
-- regB[2]	=>  Location: PIN_28
-- regB[3]	=>  Location: PIN_29
-- regB[4]	=>  Location: PIN_30
-- regB[5]	=>  Location: PIN_84
-- regB[6]	=>  Location: PIN_80
-- regB[7]	=>  Location: PIN_79
-- regB[8]	=>  Location: PIN_77
-- regB[9]	=>  Location: PIN_76
-- regB[10]	=>  Location: PIN_75
-- regB[11]	=>  Location: PIN_73
-- regB[12]	=>  Location: PIN_70
-- regB[13]	=>  Location: PIN_69
-- regB[14]	=>  Location: PIN_68
-- regB[15]	=>  Location: PIN_67
-- Ins[0]	=>  Location: PIN_55
-- Ins[1]	=>  Location: PIN_56
-- Ins[2]	=>  Location: PIN_57
-- Ins[3]	=>  Location: PIN_58
-- Ins[4]	=>  Location: PIN_60
-- Ins[5]	=>  Location: PIN_61
-- CLK_Select	=>  Location: PIN_1
-- FastCLK	=>  Location: PIN_2
-- UserCLK	=>  Location: PIN_83
-- ALU_Regs	=>  Location: PIN_63
-- I2CData	=>  Location: PIN_51
-- I2CCLK	=>  Location: PIN_54
-- EqualFlag	=>  Location: PIN_65
-- CLK	=>  Location: PIN_74
-- MainBus[0]	=>  Location: PIN_31
-- MainBus[1]	=>  Location: PIN_33
-- MainBus[2]	=>  Location: PIN_34
-- MainBus[3]	=>  Location: PIN_35
-- MainBus[4]	=>  Location: PIN_36
-- MainBus[7]	=>  Location: PIN_40
-- MainBus[5]	=>  Location: PIN_37
-- MainBus[6]	=>  Location: PIN_39
-- MainBus[8]	=>  Location: PIN_41
-- MainBus[10]	=>  Location: PIN_45
-- MainBus[9]	=>  Location: PIN_44
-- MainBus[11]	=>  Location: PIN_46
-- MainBus[12]	=>  Location: PIN_48
-- MainBus[13]	=>  Location: PIN_49
-- MainBus[14]	=>  Location: PIN_50
-- MainBus[15]	=>  Location: PIN_52
-- OverflowFlag	=>  Location: PIN_64


ARCHITECTURE structure OF ALC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_regA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MainBus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Ins : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_CLK_Select : std_logic;
SIGNAL ww_FastCLK : std_logic;
SIGNAL ww_UserCLK : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ALU_Regs : std_logic;
SIGNAL ww_I2CData : std_logic;
SIGNAL ww_I2CCLK : std_logic;
SIGNAL ww_OverflowFlag : std_logic;
SIGNAL ww_EqualFlag : std_logic;
SIGNAL \CLKFLOP|Q~en_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~en_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~en_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLKFLOP|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~85_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~89_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~93_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~97_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~101_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~105_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~109_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ABFlagFlop|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \interntalCLK~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[0]~66_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~68_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~85_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~96_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~102_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~103_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[4]~110_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~116_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[5]~121_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[6]~125_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~138_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~149_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~155_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~164_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~177_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~182_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~196_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~202_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~16_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CarryFlagFlop|Q~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[1]~203_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|g4~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~209_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~214_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~220_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[7]~226_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~231_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~237_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~243_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~249_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~255_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~25_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~30_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~36_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~41_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~128bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~187bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~127bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~141bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~142bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~75bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~156bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~157bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~167bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|CarryOut~17bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~73sexp1bal_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \ALU_Regs~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[15]~261_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[10]~262_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[9]~263_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[13]~264_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[11]~265_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~266_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~267_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~6_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~7_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~8_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~9_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~10_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~77_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~79_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~29_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~30_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~89_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~41_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~42_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~43_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~56_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~57_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~31_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~126_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[8]~133_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~49_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~50_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~168_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[12]~169_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~184_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[14]~185_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[6]~4sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|ps[5]~6sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|_~8sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Equal2~2sexp1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~53sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~69sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~77sexp2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~20_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~21_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~22_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~23_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~268_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~24_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~25_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~26_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~27_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~269_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~270_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[3]~271_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|O[2]~272_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~76_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~77_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[1]|_~9_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|Add0|adder[0]|bg_out~28_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \mainALU|LessThan0~81_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~85_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~89_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~93_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~97_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~101_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~105_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~109_dataout\ : std_logic;
SIGNAL \ALU_Regs~dataout\ : std_logic;
SIGNAL \mainALU|Equal2~2sexp1_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~8_dataout\ : std_logic;
SIGNAL \mainALU|O[2]~77_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~53sexp2_dataout\ : std_logic;
SIGNAL \mainALU|O[3]~89_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~9_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~10_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~7_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~69sexp2_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~73sexp1bal_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|_~8sexp_dataout\ : std_logic;
SIGNAL \mainALU|LessThan0~77sexp2_dataout\ : std_logic;
SIGNAL \ABFlagFlop|Q~reg0_dataout\ : std_logic;
SIGNAL \CarryFlagFlop|Q~en_dataout\ : std_logic;
SIGNAL \FastCLK~dataout\ : std_logic;
SIGNAL \CLK_Select~dataout\ : std_logic;
SIGNAL \CLKFLOP|Q~en_dataout\ : std_logic;
SIGNAL \CLKFLOP|Q~reg0_dataout\ : std_logic;
SIGNAL \UserCLK~dataout\ : std_logic;
SIGNAL \interntalCLK~7_dataout\ : std_logic;
SIGNAL \mainALU|O[0]~66_dataout\ : std_logic;
SIGNAL \ALU_Regs~0_dataout\ : std_logic;
SIGNAL \mainALU|O[1]~203_pexpout\ : std_logic;
SIGNAL \mainALU|O[1]~68_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~28_dataout\ : std_logic;
SIGNAL \mainALU|O[2]~209_pexpout\ : std_logic;
SIGNAL \mainALU|O[2]~268_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~24_dataout\ : std_logic;
SIGNAL \mainALU|O[2]~79_dataout\ : std_logic;
SIGNAL \mainALU|O[2]~75bal_dataout\ : std_logic;
SIGNAL \mainALU|O[2]~85_dataout\ : std_logic;
SIGNAL \mainALU|O[3]~214_pexpout\ : std_logic;
SIGNAL \mainALU|O[3]~269_dataout\ : std_logic;
SIGNAL \mainALU|O[3]~96_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~6_dataout\ : std_logic;
SIGNAL \mainALU|O[3]~220_pexpout\ : std_logic;
SIGNAL \mainALU|O[3]~270_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~27_dataout\ : std_logic;
SIGNAL \mainALU|O[3]~102_dataout\ : std_logic;
SIGNAL \mainALU|O[3]~103_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~25_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~26_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~29_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~30_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[5]~77_dataout\ : std_logic;
SIGNAL \mainALU|O[4]~110_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~21_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~20_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~22_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~19_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~23_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|bg_out~16_dataout\ : std_logic;
SIGNAL \mainALU|O[7]~226_pexpout\ : std_logic;
SIGNAL \mainALU|O[7]~116_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\ : std_logic;
SIGNAL \mainALU|O[3]~271_dataout\ : std_logic;
SIGNAL \mainALU|O[2]~272_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~42_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~43_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_dataout\ : std_logic;
SIGNAL \mainALU|O[5]~121_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~76_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~56_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~57_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_dataout\ : std_logic;
SIGNAL \mainALU|O[6]~125_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ps[0]~15_dataout\ : std_logic;
SIGNAL \mainALU|O[8]~128bal_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|_~9_dataout\ : std_logic;
SIGNAL \mainALU|O[8]~133_dataout\ : std_logic;
SIGNAL \mainALU|O[8]~126_dataout\ : std_logic;
SIGNAL \mainALU|O[8]~127bal_dataout\ : std_logic;
SIGNAL \mainALU|O[8]~138_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~6_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|gcp[2]~5_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ps[1]~14_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ : std_logic;
SIGNAL \mainALU|O[10]~231_pexpout\ : std_logic;
SIGNAL \mainALU|O[10]~141bal_dataout\ : std_logic;
SIGNAL \mainALU|O[10]~142bal_dataout\ : std_logic;
SIGNAL \mainALU|O[10]~149_dataout\ : std_logic;
SIGNAL \mainALU|O[10]~262_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~31_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_dataout\ : std_logic;
SIGNAL \mainALU|O[9]~155_dataout\ : std_logic;
SIGNAL \mainALU|O[9]~263_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|g4~8_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|g4~14_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|g4~1_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ : std_logic;
SIGNAL \mainALU|O[11]~237_pexpout\ : std_logic;
SIGNAL \mainALU|O[11]~156bal_dataout\ : std_logic;
SIGNAL \mainALU|O[11]~157bal_dataout\ : std_logic;
SIGNAL \mainALU|O[11]~164_dataout\ : std_logic;
SIGNAL \mainALU|O[11]~265_dataout\ : std_logic;
SIGNAL \mainALU|O[12]~168_dataout\ : std_logic;
SIGNAL \mainALU|O[12]~243_pexpout\ : std_logic;
SIGNAL \mainALU|O[12]~169_dataout\ : std_logic;
SIGNAL \mainALU|O[12]~249_pexpout\ : std_logic;
SIGNAL \mainALU|O[12]~167bal_dataout\ : std_logic;
SIGNAL \mainALU|O[12]~177_dataout\ : std_logic;
SIGNAL \mainALU|O[12]~266_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|g2cp[1]~3_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~49_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~50_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_dataout\ : std_logic;
SIGNAL \mainALU|O[13]~182_dataout\ : std_logic;
SIGNAL \mainALU|O[13]~264_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~10_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ps[2]~12_dataout\ : std_logic;
SIGNAL \mainALU|O[14]~187bal_dataout\ : std_logic;
SIGNAL \mainALU|O[14]~184_dataout\ : std_logic;
SIGNAL \mainALU|O[14]~255_pexpout\ : std_logic;
SIGNAL \mainALU|O[14]~185_dataout\ : std_logic;
SIGNAL \mainALU|O[14]~196_dataout\ : std_logic;
SIGNAL \mainALU|O[14]~267_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|genr_node[3]~7_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|genr_node[2]~11_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|prop_node[3]~8_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pexpout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|genr_node[1]~15_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|prop_node[2]~13_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|genr_node[0]~19_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|prop_node[1]~18_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|prop_node[0]~23_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~0_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~1_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_dataout\ : std_logic;
SIGNAL \mainALU|O[15]~202_dataout\ : std_logic;
SIGNAL \mainALU|O[15]~261_dataout\ : std_logic;
SIGNAL \mainALU|CarryOut~17bal_dataout\ : std_logic;
SIGNAL \mainALU|CarryOut~25_pexpout\ : std_logic;
SIGNAL \mainALU|CarryOut~30_pexpout\ : std_logic;
SIGNAL \mainALU|CarryOut~10_dataout\ : std_logic;
SIGNAL \mainALU|CarryOut~36_pexpout\ : std_logic;
SIGNAL \mainALU|CarryOut~41_pexpout\ : std_logic;
SIGNAL \mainALU|CarryOut~16_dataout\ : std_logic;
SIGNAL \CarryFlagFlop|Q~reg0_dataout\ : std_logic;
SIGNAL \Ins~dataout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \regA~dataout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \regB~dataout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_ALU_Regs~dataout\ : std_logic;
SIGNAL \ALT_INV_Ins~dataout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_regB~dataout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_regA~dataout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mainALU|ALT_INV_CarryOut~16_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_CarryOut~10_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|ALT_INV_sout_node[6]~51_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|result_node|ALT_INV_sout_node[2]~33_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_O[3]~102_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_O[3]~96_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|result_node|ALT_INV_sout_node[5]~31_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|ALT_INV_bg_out~16_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ALT_INV_g4~1_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ALT_INV_gcp[2]~5_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ALT_INV_g2cp[2]~9_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|ALT_INV_genr_node[3]~8_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[0]|ALT_INV_prop_node[3]~7_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~109_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~105_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~101_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~97_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~93_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~89_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~85_dataout\ : std_logic;
SIGNAL \mainALU|ALT_INV_LessThan0~81_dataout\ : std_logic;
SIGNAL \CLKFLOP|ALT_INV_Q~reg0_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ALT_INV_ps[0]~15_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ALT_INV_ps[1]~14_dataout\ : std_logic;
SIGNAL \mainALU|Add0|adder[1]|ALT_INV_ps[2]~12_dataout\ : std_logic;
SIGNAL \CLKFLOP|ALT_INV_Q~en_dataout\ : std_logic;

BEGIN

ww_regA <= regA;
ww_regB <= regB;
MainBus <= ww_MainBus;
ww_Ins <= Ins;
ww_CLK_Select <= CLK_Select;
ww_FastCLK <= FastCLK;
ww_UserCLK <= UserCLK;
CLK <= ww_CLK;
ww_ALU_Regs <= ALU_Regs;
ww_I2CData <= I2CData;
ww_I2CCLK <= I2CCLK;
OverflowFlag <= ww_OverflowFlag;
EqualFlag <= ww_EqualFlag;

\CLKFLOP|Q~en_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Q~en_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_Select~dataout\);

\CLKFLOP|Q~en_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Q~en_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~en_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CarryFlagFlop|Q~en_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Regs~dataout\);

\CarryFlagFlop|Q~en_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CarryFlagFlop|Q~en_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~en_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(9) & NOT \regA~dataout\(9));

\mainALU|Add0|adder[1]|ps[2]~12_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|ps[2]~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(8) & NOT \regA~dataout\(8));

\mainALU|Add0|adder[1]|ps[1]~14_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|ps[1]~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[1]~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(7) & NOT \regA~dataout\(7));

\mainALU|Add0|adder[1]|ps[0]~15_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|ps[0]~15_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[0]~15_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLKFLOP|Q~en_dataout\ & \CLKFLOP|Q~reg0_dataout\);

\CLKFLOP|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_Select~dataout\);

\CLKFLOP|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CLKFLOP|Q~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CLKFLOP|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(8));

\mainALU|LessThan0~81_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(8));

\mainALU|LessThan0~81_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~81_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~81_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(9));

\mainALU|LessThan0~85_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9));

\mainALU|LessThan0~85_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~85_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~85_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(10));

\mainALU|LessThan0~89_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(10));

\mainALU|LessThan0~89_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~89_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~89_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(11));

\mainALU|LessThan0~93_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(11));

\mainALU|LessThan0~93_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~93_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~93_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(12));

\mainALU|LessThan0~97_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(12));

\mainALU|LessThan0~97_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~97_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~97_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(13));

\mainALU|LessThan0~101_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(13));

\mainALU|LessThan0~101_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~101_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~101_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(14));

\mainALU|LessThan0~105_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(14));

\mainALU|LessThan0~105_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~105_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~105_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(15));

\mainALU|LessThan0~109_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(15));

\mainALU|LessThan0~109_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~109_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~109_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & 
\mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & \mainALU|Add0|adder[0]|bg_out~10_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ & \mainALU|Add0|adder[0]|bg_out~9_dataout\ & \mainALU|O[3]~89_dataout\ & 
\mainALU|LessThan0~53sexp2_dataout\ & \mainALU|O[2]~77_dataout\ & \mainALU|Add0|adder[0]|bg_out~8_dataout\ & \mainALU|Equal2~2sexp1_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~101_dataout\
& NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \mainALU|LessThan0~81_dataout\);

\ABFlagFlop|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Regs~dataout\);

\ABFlagFlop|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ABFlagFlop|Q~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ABFlagFlop|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[3]~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[3]~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(14) & \regA~dataout\(13));

\mainALU|Add0|adder[1]|prop_node[3]~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(14) & \regA~dataout\(13));

\mainALU|Add0|adder[1]|prop_node[3]~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & \regA~dataout\(14));

\mainALU|Add0|adder[1]|prop_node[3]~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & NOT \regB~dataout\(14));

\mainALU|Add0|adder[1]|prop_node[3]~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[3]~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[3]~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[3]~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|prop_node[3]~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[3]~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[2]~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[2]~13_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(12) & \regA~dataout\(11));

\mainALU|Add0|adder[1]|prop_node[2]~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(12) & \regA~dataout\(11));

\mainALU|Add0|adder[1]|prop_node[2]~13_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|prop_node[2]~13_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & NOT \regB~dataout\(12));

\mainALU|Add0|adder[1]|prop_node[2]~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[2]~13_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[2]~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[2]~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|prop_node[2]~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[2]~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[1]~18_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[1]~18_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(10) & \regA~dataout\(9));

\mainALU|Add0|adder[1]|prop_node[1]~18_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(10) & \regA~dataout\(9));

\mainALU|Add0|adder[1]|prop_node[1]~18_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & \regA~dataout\(10));

\mainALU|Add0|adder[1]|prop_node[1]~18_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & NOT \regB~dataout\(10));

\mainALU|Add0|adder[1]|prop_node[1]~18_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[1]~18_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[1]~18_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[1]~18_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|prop_node[1]~18_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[1]~18_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[0]~23_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[0]~23_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(7) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|prop_node[0]~23_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|prop_node[0]~23_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(8) & \regA~dataout\(7));

\mainALU|Add0|adder[1]|prop_node[0]~23_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(8) & NOT \regB~dataout\(7));

\mainALU|Add0|adder[1]|prop_node[0]~23_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[0]~23_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[0]~23_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[0]~23_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|prop_node[0]~23_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|prop_node[0]~23_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|prop_node[3]~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|prop_node[3]~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(6) & \regA~dataout\(5));

\mainALU|Add0|adder[0]|prop_node[3]~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(6) & \regA~dataout\(5));

\mainALU|Add0|adder[0]|prop_node[3]~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & \regA~dataout\(6));

\mainALU|Add0|adder[0]|prop_node[3]~7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & NOT \regB~dataout\(6));

\mainALU|Add0|adder[0]|prop_node[3]~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|prop_node[3]~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|prop_node[3]~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|prop_node[3]~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|prop_node[3]~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|prop_node[3]~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[3]~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[3]~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(14) & \regA~dataout\(14));

\mainALU|Add0|adder[1]|genr_node[3]~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & \regA~dataout\(13) & \regA~dataout\(14));

\mainALU|Add0|adder[1]|genr_node[3]~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & \regA~dataout\(13) & NOT \regB~dataout\(14));

\mainALU|Add0|adder[1]|genr_node[3]~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[3]~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[3]~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[3]~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[3]~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|genr_node[3]~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[3]~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[2]~11_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[2]~11_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|genr_node[2]~11_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regA~dataout\(11) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|genr_node[2]~11_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regA~dataout\(11) & NOT \regB~dataout\(12));

\mainALU|Add0|adder[1]|genr_node[2]~11_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[2]~11_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[2]~11_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[2]~11_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[2]~11_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|genr_node[2]~11_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[2]~11_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[1]~15_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[1]~15_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(10) & \regA~dataout\(10));

\mainALU|Add0|adder[1]|genr_node[1]~15_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & \regA~dataout\(9) & \regA~dataout\(10));

\mainALU|Add0|adder[1]|genr_node[1]~15_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & \regA~dataout\(9) & NOT \regB~dataout\(10));

\mainALU|Add0|adder[1]|genr_node[1]~15_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[1]~15_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[1]~15_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[1]~15_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[1]~15_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|genr_node[1]~15_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[1]~15_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[0]~19_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[0]~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(8) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|genr_node[0]~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|genr_node[0]~19_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|genr_node[0]~19_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[0]~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[0]~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[0]~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[0]~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|genr_node[0]~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|genr_node[0]~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|genr_node[3]~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|genr_node[3]~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(6) & \regA~dataout\(6));

\mainALU|Add0|adder[0]|genr_node[3]~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & \regA~dataout\(5) & \regA~dataout\(6));

\mainALU|Add0|adder[0]|genr_node[3]~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & \regA~dataout\(5) & NOT \regB~dataout\(6));

\mainALU|Add0|adder[0]|genr_node[3]~8_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|genr_node[3]~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|genr_node[3]~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|genr_node[3]~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|genr_node[3]~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|genr_node[3]~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|genr_node[3]~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[1]~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[1]~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|g2cp[1]~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regA~dataout\(11) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|g2cp[1]~3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regA~dataout\(11) & NOT \regB~dataout\(12));

\mainALU|Add0|adder[1]|g2cp[1]~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[1]~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[1]~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[1]~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[1]~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|g2cp[1]~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[1]~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLKFLOP|Q~en_dataout\ & NOT \CLKFLOP|Q~reg0_dataout\ & \FastCLK~dataout\);

\interntalCLK~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \UserCLK~dataout\ & \CLKFLOP|Q~reg0_dataout\);

\interntalCLK~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \UserCLK~dataout\ & NOT \CLKFLOP|Q~en_dataout\);

\interntalCLK~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\interntalCLK~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\interntalCLK~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \regA~dataout\(0) & NOT \regB~dataout\(0) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0));

\mainALU|O[0]~66_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(0) & \regB~dataout\(0));

\mainALU|O[0]~66_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[0]~66_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[0]~66_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~9_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & \regA~dataout\(13));

\mainALU|Add0|adder[1]|g2cp[2]~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(13) & NOT \regB~dataout\(11) & \regA~dataout\(11) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|g2cp[2]~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & NOT \regB~dataout\(11) & \regA~dataout\(11) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|g2cp[2]~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(12) & \regA~dataout\(13) & NOT \regB~dataout\(11) & \regA~dataout\(11));

\mainALU|Add0|adder[1]|g2cp[2]~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(12) & NOT \regB~dataout\(13) & NOT \regB~dataout\(11) & \regA~dataout\(11));

\mainALU|Add0|adder[1]|g2cp[2]~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|g2cp[2]~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~5_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & \regA~dataout\(9));

\mainALU|Add0|adder[1]|gcp[2]~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9) & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|gcp[2]~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & \regA~dataout\(8) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|gcp[2]~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & \regA~dataout\(8) & NOT \regB~dataout\(7) & \regA~dataout\(7));

\mainALU|Add0|adder[1]|gcp[2]~5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|gcp[2]~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|gcp[2]~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~68_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(0) & NOT \Ins~dataout\(5) & NOT \regA~dataout\(1));

\mainALU|O[1]~68_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~68_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(5) & NOT \regA~dataout\(1) & \regB~dataout\(1));

\mainALU|O[1]~68_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regB~dataout\(0) & NOT \regA~dataout\(0) & NOT \Ins~dataout\(5) & \regA~dataout\(1));

\mainALU|O[1]~68_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regA~dataout\(0) & NOT \Ins~dataout\(5) & NOT \regA~dataout\(1));

\mainALU|O[1]~68_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~68_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1));

\mainALU|O[1]~68_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~68_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[1]~68_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~68_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~1_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9) & NOT \regB~dataout\(9) & \regA~dataout\(10) & \regB~dataout\(10));

\mainALU|Add0|adder[1]|g4~1_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~1_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & \regA~dataout\(10) & \regB~dataout\(10) & NOT \regB~dataout\(8) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|g4~1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regB~dataout\(9) & \regA~dataout\(10) & \regB~dataout\(10) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|g4~1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regB~dataout\(9) & \regA~dataout\(10) & \regB~dataout\(10) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|g4~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~1_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(10) & NOT \regB~dataout\(10));

\mainALU|Add0|adder[1]|g4~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|g4~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~16_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~23_dataout\ & NOT \regB~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~22_dataout\ & \mainALU|Add0|adder[0]|bg_out~21_dataout\ & 
\mainALU|Add0|adder[0]|bg_out~20_dataout\);

\mainALU|Add0|adder[0]|bg_out~16_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(4) & \regA~dataout\(4));

\mainALU|Add0|adder[0]|bg_out~16_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & \regA~dataout\(3) & \mainALU|Add0|adder[0]|bg_out~20_dataout\);

\mainALU|Add0|adder[0]|bg_out~16_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & \regA~dataout\(2) & \mainALU|Add0|adder[0]|bg_out~21_dataout\ & \mainALU|Add0|adder[0]|bg_out~20_dataout\);

\mainALU|Add0|adder[0]|bg_out~16_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(1) & NOT \regB~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~22_dataout\ & \mainALU|Add0|adder[0]|bg_out~21_dataout\ & \mainALU|Add0|adder[0]|bg_out~20_dataout\
);

\mainALU|Add0|adder[0]|bg_out~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~16_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|bg_out~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~85_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & \mainALU|O[2]~79_dataout\);

\mainALU|O[2]~85_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & NOT \regA~dataout\(2) & \regB~dataout\(0) & NOT \regA~dataout\(0) & \mainALU|O[2]~268_dataout\);

\mainALU|O[2]~85_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regB~dataout\(2) & \regA~dataout\(2) & \regB~dataout\(0) & NOT 
\regA~dataout\(0) & \mainALU|O[2]~268_dataout\);

\mainALU|O[2]~85_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~24_dataout\ & NOT \regB~dataout\(2) & \regA~dataout\(2));

\mainALU|O[2]~85_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~24_dataout\ & \regB~dataout\(2) & NOT \regA~dataout\(2));

\mainALU|O[2]~85_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~85_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~85_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~85_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[2]~85_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~85_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~27_dataout\ & \mainALU|Add0|adder[0]|bg_out~26_dataout\ & 
\mainALU|Add0|adder[0]|bg_out~25_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & \regA~dataout\(3));

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & NOT \regB~dataout\(2) & \mainALU|Add0|adder[0]|bg_out~25_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~6_dataout\ & \mainALU|Add0|adder[0]|bg_out~26_dataout\ & \mainALU|Add0|adder[0]|bg_out~25_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|result_node|sout_node[5]~30_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[5]~29_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~96_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(2) & \regB~dataout\(3) & \regA~dataout\(3) & \regB~dataout\(0)
& NOT \regA~dataout\(0) & \mainALU|O[2]~268_dataout\);

\mainALU|O[3]~96_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & NOT \regA~dataout\(3) & \regB~dataout\(0) & NOT \regA~dataout\(0) & \regB~dataout\(2) & \mainALU|O[2]~268_dataout\);

\mainALU|O[3]~96_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(2) & NOT \regB~dataout\(3) & NOT \regA~dataout\(3) & \regB~dataout\(0) & NOT \regA~dataout\(0) & \mainALU|O[2]~268_dataout\);

\mainALU|O[3]~96_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regB~dataout\(3) & \regA~dataout\(3) & \regB~dataout\(0) & NOT \regA~dataout\(0)
& \regB~dataout\(2) & \mainALU|O[2]~268_dataout\);

\mainALU|O[3]~96_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & \regB~dataout\(1) & NOT \regA~dataout\(1) & \mainALU|O[3]~269_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & 
\regB~dataout\(3) & \regA~dataout\(3));

\mainALU|O[3]~96_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~96_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~96_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~96_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[3]~96_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~96_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~102_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & \mainALU|Add0|adder[0]|bg_out~27_dataout\ & \regB~dataout\(3) & NOT \regA~dataout\(3) & NOT \regB~dataout\(1));

\mainALU|O[3]~102_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & NOT \regA~dataout\(3) & \regB~dataout\(1) & NOT \regA~dataout\(1) & \mainALU|O[3]~270_dataout\);

\mainALU|O[3]~102_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & \mainALU|Add0|adder[0]|bg_out~27_dataout\ & NOT \regB~dataout\(3) & \regA~dataout\(3) & NOT \regB~dataout\(1));

\mainALU|O[3]~102_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & \mainALU|Add0|adder[0]|bg_out~27_dataout\ & NOT \regB~dataout\(3) & \regA~dataout\(3) & NOT \regB~dataout\(1));

\mainALU|O[3]~102_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & \mainALU|Add0|adder[0]|bg_out~27_dataout\ & \regB~dataout\(3) & NOT \regA~dataout\(3) & NOT \regB~dataout\(1));

\mainALU|O[3]~102_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~102_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~102_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~102_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[3]~102_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~102_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|O[3]~102_dataout\ & NOT \mainALU|O[3]~96_dataout\);

\mainALU|O[3]~103_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[3]~103_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~103_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0) & \mainALU|O[2]~272_dataout\ & \mainALU|O[3]~271_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\
& \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & NOT \regA~dataout\(3) & \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(2) & \regB~dataout\(2) & \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(1) & NOT \regA~dataout\(1) & \mainALU|O[3]~271_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|result_node|sout_node[6]~43_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~42_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~44_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0) & \mainALU|O[2]~272_dataout\ & \mainALU|O[3]~271_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[7]~76_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & NOT \regA~dataout\(3) & \mainALU|Add0|adder[0]|result_node|sout_node[7]~76_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regA~dataout\(2) & \regB~dataout\(2) & \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[7]~76_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(1) & NOT \regA~dataout\(1) & \mainALU|O[3]~271_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[7]~76_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|result_node|sout_node[7]~57_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~56_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~58_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT 
\mainALU|Add0|adder[0]|result_node|sout_node[5]~31_dataout\);

\mainALU|O[4]~110_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[5]~77_dataout\);

\mainALU|O[4]~110_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[4]~110_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[4]~110_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~116_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|bg_out~16_dataout\ & NOT 
\mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \regA~dataout\(7) & NOT \regB~dataout\(7));

\mainALU|O[7]~116_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & NOT \regA~dataout\(7)
& \regB~dataout\(7) & NOT \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\);

\mainALU|O[7]~116_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|bg_out~16_dataout\ & NOT 
\mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & NOT \regA~dataout\(7) & \regB~dataout\(7));

\mainALU|O[7]~116_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & \regA~dataout\(7) & \regB~dataout\(7));

\mainALU|O[7]~116_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \regA~dataout\(7) & 
NOT \regB~dataout\(7) & NOT \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\);

\mainALU|O[7]~116_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~116_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~116_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~116_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[7]~116_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~116_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[5]~121_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[5]~121_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_dataout\
);

\mainALU|O[5]~121_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regA~dataout\(5));

\mainALU|O[5]~121_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regB~dataout\(5));

\mainALU|O[5]~121_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[5]~121_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[5]~121_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[5]~121_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[5]~121_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[5]~121_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[5]~121_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(8) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[1]~14_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_dataout\ & \mainALU|Add0|adder[1]|result_node|sout_node[2]~31_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[6]~125_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[6]~125_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_dataout\
);

\mainALU|O[6]~125_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regA~dataout\(6));

\mainALU|O[6]~125_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regB~dataout\(6));

\mainALU|O[6]~125_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[6]~125_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[6]~125_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[6]~125_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[6]~125_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[6]~125_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[6]~125_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~138_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|_~9_dataout\ & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & 
\mainALU|O[8]~127bal_dataout\ & NOT \regA~dataout\(8) & \regB~dataout\(8) & \mainALU|O[8]~133_dataout\ & \mainALU|O[8]~128bal_dataout\);

\mainALU|O[8]~138_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~138_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|_~9_dataout\ & \regB~dataout\(7) & NOT \regA~dataout\(7) & NOT 
\regA~dataout\(8) & \regB~dataout\(8) & \mainALU|O[8]~133_dataout\ & \mainALU|O[8]~128bal_dataout\);

\mainALU|O[8]~138_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[8]~126_dataout\ & \regA~dataout\(8) & \regB~dataout\(8) & \mainALU|O[8]~133_dataout\ & \mainALU|O[8]~128bal_dataout\);

\mainALU|O[8]~138_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|_~9_dataout\ & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & 
\mainALU|O[8]~127bal_dataout\ & \regA~dataout\(8) & NOT \regB~dataout\(8) & \mainALU|O[8]~133_dataout\ & \mainALU|O[8]~128bal_dataout\);

\mainALU|O[8]~138_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~138_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[8]~133_dataout\ & \mainALU|O[8]~128bal_dataout\);

\mainALU|O[8]~138_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~138_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[8]~138_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~138_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~149_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[8]~127bal_dataout\
& NOT \regA~dataout\(10) & \regB~dataout\(10) & NOT \mainALU|Add0|adder[1]|gcp[2]~5_dataout\);

\mainALU|O[10]~149_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regA~dataout\(10) & NOT \regB~dataout\(10) & NOT 
\mainALU|Add0|adder[1]|gcp[2]~5_dataout\ & \mainALU|O[10]~141bal_dataout\);

\mainALU|O[10]~149_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(10) & \regB~dataout\(10) & NOT 
\mainALU|Add0|adder[1]|gcp[2]~5_dataout\ & \mainALU|O[10]~141bal_dataout\);

\mainALU|O[10]~149_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[10]~142bal_dataout\ & \regA~dataout\(10) & \regB~dataout\(10));

\mainALU|O[10]~149_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[8]~127bal_dataout\
& \regA~dataout\(10) & NOT \regB~dataout\(10) & NOT \mainALU|Add0|adder[1]|gcp[2]~5_dataout\);

\mainALU|O[10]~149_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~149_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~149_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~149_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[10]~149_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~149_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT 
\mainALU|Add0|adder[1]|result_node|sout_node[2]~33_dataout\);

\mainALU|O[9]~155_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_dataout\);

\mainALU|O[9]~155_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[9]~155_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~155_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~164_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[8]~127bal_dataout\
& NOT \regA~dataout\(11) & \regB~dataout\(11) & NOT \mainALU|Add0|adder[1]|g4~1_dataout\);

\mainALU|O[11]~164_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regA~dataout\(11) & NOT \regB~dataout\(11) & NOT 
\mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[11]~156bal_dataout\);

\mainALU|O[11]~164_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(11) & \regB~dataout\(11) & NOT 
\mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[11]~156bal_dataout\);

\mainALU|O[11]~164_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[11]~157bal_dataout\ & \regA~dataout\(11) & \regB~dataout\(11));

\mainALU|O[11]~164_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[8]~127bal_dataout\
& \regA~dataout\(11) & NOT \regB~dataout\(11) & NOT \mainALU|Add0|adder[1]|g4~1_dataout\);

\mainALU|O[11]~164_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~164_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~164_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~164_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[11]~164_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~164_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|g2cp[1]~3_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|g4~1_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & \mainALU|O[12]~168_dataout\ & 
\mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & \mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & 
\mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|result_node|sout_node[6]~50_dataout\ & \mainALU|Add0|adder[1]|result_node|sout_node[6]~49_dataout\);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & \mainALU|Add0|adder[1]|prop_node[0]~23_dataout\ & 
\mainALU|Add0|adder[1]|prop_node[1]~18_dataout\ & \mainALU|Add0|adder[1]|prop_node[2]~13_dataout\ & \mainALU|Add0|adder[1]|prop_node[3]~8_dataout\);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|prop_node[2]~13_dataout\ & \mainALU|Add0|adder[1]|prop_node[3]~8_dataout\ & \mainALU|Add0|adder[1]|genr_node[1]~15_dataout\);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|prop_node[1]~18_dataout\ & \mainALU|Add0|adder[1]|genr_node[0]~19_dataout\ & \mainALU|Add0|adder[1]|prop_node[2]~13_dataout\ & 
\mainALU|Add0|adder[1]|prop_node[3]~8_dataout\);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|prop_node[0]~23_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|Add0|adder[1]|prop_node[1]~18_dataout\ & 
\mainALU|Add0|adder[1]|prop_node[2]~13_dataout\ & \mainALU|Add0|adder[1]|prop_node[3]~8_dataout\);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[2]|result_node|sout_node[0]~1_dataout\ & \mainALU|Add0|adder[2]|result_node|sout_node[0]~0_dataout\);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~177_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[8]~127bal_dataout\ & NOT 
\mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[12]~167bal_dataout\ & \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|O[12]~177_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regB~dataout\(12) & NOT \regA~dataout\(12) & \regA~dataout\(11));

\mainALU|O[12]~177_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[11]~156bal_dataout\ & \mainALU|O[12]~167bal_dataout\ & NOT \regB~dataout\(12) & NOT \regA~dataout\(12));

\mainALU|O[12]~177_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[11]~156bal_dataout\ & 
\mainALU|O[12]~167bal_dataout\ & \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|O[12]~177_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[8]~127bal_dataout\ & NOT \mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[12]~167bal_dataout\ & NOT \regB~dataout\(12) & NOT 
\regA~dataout\(12));

\mainALU|O[12]~177_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~177_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~177_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~177_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[12]~177_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~177_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT 
\mainALU|Add0|adder[1]|result_node|sout_node[6]~51_dataout\);

\mainALU|O[13]~182_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & \mainALU|Add0|adder[1]|result_node|sout_node[6]~50_dataout\);

\mainALU|O[13]~182_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[13]~182_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~182_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~196_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|g4~1_dataout\ & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\
& \mainALU|O[8]~127bal_dataout\ & NOT \regA~dataout\(14) & \regB~dataout\(14) & NOT \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\ & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~196_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~196_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(14) & \regB~dataout\(14) & NOT 
\mainALU|Add0|adder[1]|g2cp[2]~9_dataout\ & \mainALU|O[14]~184_dataout\ & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~196_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[14]~185_dataout\ & \regA~dataout\(14) & \regB~dataout\(14) & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~196_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|g4~1_dataout\ & NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\
& \mainALU|O[8]~127bal_dataout\ & \regA~dataout\(14) & NOT \regB~dataout\(14) & NOT \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\ & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~196_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~196_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~196_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~196_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[14]~196_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~196_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~202_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~202_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_dataout\
);

\mainALU|O[15]~202_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regA~dataout\(15));

\mainALU|O[15]~202_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regB~dataout\(15));

\mainALU|O[15]~202_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~202_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~202_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~202_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~202_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[15]~202_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~202_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~10_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & 
\Ins~dataout\(0) & NOT \regB~dataout\(5) & \regA~dataout\(5) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\
& NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\);

\mainALU|CarryOut~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & 
\mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & \mainALU|Add0|adder[0]|bg_out~10_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT 
\Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & 
NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \regB~dataout\(2) & \regA~dataout\(2));

\mainALU|CarryOut~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & 
\mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & 
\mainALU|Add0|adder[0]|bg_out~10_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ & \mainALU|Add0|adder[0]|bg_out~9_dataout\ & \mainALU|O[3]~89_dataout\ & \mainALU|LessThan0~53sexp2_dataout\ & \mainALU|O[2]~77_dataout\ & NOT 
\Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(0) & \regA~dataout\(0) & NOT \mainALU|LessThan0~105_dataout\ & NOT 
\mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\
);

\mainALU|CarryOut~10_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & 
\mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & \mainALU|Add0|adder[0]|bg_out~10_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ & \mainALU|Add0|adder[0]|bg_out~9_dataout\ & \mainALU|O[3]~89_dataout\ & NOT 
\Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(1) & \regA~dataout\(1) & NOT \mainALU|LessThan0~105_dataout\ & NOT 
\mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\
);

\mainALU|CarryOut~10_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & 
\mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(3) & \regA~dataout\(3)
& NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT 
\mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\);

\mainALU|CarryOut~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|CarryOut~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~16_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(11) & \regA~dataout\(11) & NOT \mainALU|LessThan0~105_dataout\
& NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\);

\mainALU|CarryOut~16_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT 
\mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \regB~dataout\(10) & \regA~dataout\(10));

\mainALU|CarryOut~16_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & NOT \regB~dataout\(8) & \regA~dataout\(8) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|LessThan0~89_dataout\ & NOT 
\mainALU|LessThan0~85_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~93_dataout\);

\mainALU|CarryOut~16_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \mainALU|LessThan0~81_dataout\ & NOT 
\mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~93_dataout\
);

\mainALU|CarryOut~16_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(9) & \regA~dataout\(9) & NOT \mainALU|LessThan0~89_dataout\ & NOT 
\mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~93_dataout\);

\mainALU|CarryOut~16_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~16_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~16_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~16_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|CarryOut~16_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~16_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|CarryOut~16_dataout\ & NOT \mainALU|CarryOut~10_dataout\ & \mainALU|CarryOut~17bal_dataout\);

\CarryFlagFlop|Q~reg0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \ALU_Regs~dataout\);

\CarryFlagFlop|Q~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CarryFlagFlop|Q~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CarryFlagFlop|Q~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(13) & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|g2cp[2]~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|Add0|adder[1]|g2cp[2]~10_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|g2cp[2]~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g2cp[2]~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9) & NOT \regB~dataout\(8) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|gcp[2]~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & \regA~dataout\(9) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|gcp[2]~6_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|gcp[2]~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|gcp[2]~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~203_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(4) & NOT \regA~dataout\(1) & \regB~dataout\(1));

\mainALU|O[1]~203_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(0) & NOT \regA~dataout\(1) & \regB~dataout\(1));

\mainALU|O[1]~203_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(1) & NOT \regA~dataout\(1) & \regB~dataout\(1));

\mainALU|O[1]~203_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(2) & NOT \regA~dataout\(1) & \regB~dataout\(1));

\mainALU|O[1]~203_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Ins~dataout\(3) & NOT \regA~dataout\(1) & \regB~dataout\(1));

\mainALU|O[1]~203_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~203_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~203_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~203_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[1]~203_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[1]~203_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~8_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|g4~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10) & NOT \regB~dataout\(8) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|g4~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & \regA~dataout\(9) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|g4~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7) & \regA~dataout\(9) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|g4~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10) & NOT \regB~dataout\(8) & \regA~dataout\(8));

\mainALU|Add0|adder[1]|g4~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|g4~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~14_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9) & \regA~dataout\(10) & \regB~dataout\(10) & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|g4~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10) & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|g4~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9) & NOT \regB~dataout\(9) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10));

\mainALU|Add0|adder[1]|g4~14_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(8) & \regA~dataout\(9) & \regA~dataout\(10) & \regB~dataout\(10) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|g4~14_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(8) & \regA~dataout\(9) & \regA~dataout\(10) & \regB~dataout\(10) & NOT \regB~dataout\(7) & \regA~dataout\(7));

\mainALU|Add0|adder[1]|g4~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|g4~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|g4~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~209_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~209_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(2) & NOT \regA~dataout\(2) & \regB~dataout\(1) & NOT \regA~dataout\(1));

\mainALU|O[2]~209_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regB~dataout\(2) & \regA~dataout\(2) & \regB~dataout\(1) & NOT 
\regA~dataout\(1));

\mainALU|O[2]~209_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~28_dataout\ & NOT \regB~dataout\(2) & \regA~dataout\(2) & \regA~dataout\(1));

\mainALU|O[2]~209_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~28_dataout\ & \regB~dataout\(2) & NOT \regA~dataout\(2) & \regA~dataout\(1));

\mainALU|O[2]~209_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~209_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~209_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~209_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[2]~209_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~209_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~214_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~28_dataout\ & NOT \regB~dataout\(3) & \regA~dataout\(3) & \regA~dataout\(2));

\mainALU|O[3]~214_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & NOT \Ins~dataout\(5) & \regA~dataout\(3) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(2) & 
\regB~dataout\(2));

\mainALU|O[3]~214_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regA~dataout\(3));

\mainALU|O[3]~214_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & NOT \regB~dataout\(3));

\mainALU|O[3]~214_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~28_dataout\ & NOT \regB~dataout\(3) & \regA~dataout\(3) & NOT \regB~dataout\(2));

\mainALU|O[3]~214_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~214_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~214_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~214_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[3]~214_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~214_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~220_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~6_dataout\ & \regB~dataout\(3) & NOT \regA~dataout\(3) & \regA~dataout\(2));

\mainALU|O[3]~220_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & NOT \regA~dataout\(3) & NOT \regA~dataout\(2) & \regB~dataout\(2));

\mainALU|O[3]~220_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & \regA~dataout\(3) & \regA~dataout\(2) & NOT \regB~dataout\(2));

\mainALU|O[3]~220_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & NOT \regA~dataout\(3) & \regA~dataout\(2) & NOT \regB~dataout\(2));

\mainALU|O[3]~220_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~6_dataout\ & \regB~dataout\(3) & NOT \regA~dataout\(3) & NOT \regB~dataout\(2));

\mainALU|O[3]~220_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~220_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~220_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~220_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[3]~220_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[3]~220_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(4) & NOT \regA~dataout\(4));

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[6]~69_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(5) & NOT \regA~dataout\(5));

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(4) & NOT \regA~dataout\(4) & \mainALU|Add0|adder[0]|result_node|sout_node[7]~76_dataout\);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|result_node|sout_node[7]~71_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~226_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~226_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \regA~dataout\(7) & \regB~dataout\(7));

\mainALU|O[7]~226_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & NOT 
\regA~dataout\(7) & NOT \regB~dataout\(7));

\mainALU|O[7]~226_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & \regA~dataout\(7) & \regB~dataout\(7));

\mainALU|O[7]~226_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & 
\mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \regA~dataout\(7) & NOT \regB~dataout\(7));

\mainALU|O[7]~226_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~226_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~226_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~226_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[7]~226_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[7]~226_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~231_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \regA~dataout\(10) & \regB~dataout\(10));

\mainALU|O[10]~231_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(10) & NOT \regB~dataout\(10) & 
\mainALU|Add0|adder[1]|gcp[2]~5_dataout\);

\mainALU|O[10]~231_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & NOT \regA~dataout\(10) & NOT \regB~dataout\(10));

\mainALU|O[10]~231_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & 
\regA~dataout\(10) & \regB~dataout\(10));

\mainALU|O[10]~231_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & 
\mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & NOT \regA~dataout\(10) & NOT \regB~dataout\(10));

\mainALU|O[10]~231_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~231_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~231_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~231_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[10]~231_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~231_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~237_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \regA~dataout\(11) & \regB~dataout\(11));

\mainALU|O[11]~237_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(11) & NOT \regB~dataout\(11) & 
\mainALU|Add0|adder[1]|g4~1_dataout\);

\mainALU|O[11]~237_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & 
\mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & NOT \regA~dataout\(11) & NOT \regB~dataout\(11));

\mainALU|O[11]~237_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & 
\mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \regA~dataout\(11) & \regB~dataout\(11));

\mainALU|O[11]~237_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & 
\mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & NOT \regA~dataout\(11) & NOT \regB~dataout\(11));

\mainALU|O[11]~237_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~237_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~237_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~237_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[11]~237_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~237_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|genr_node[3]~7_dataout\);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|prop_node[3]~8_dataout\ & \mainALU|Add0|adder[1]|genr_node[2]~11_dataout\);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[2]|result_node|sout_node[0]~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~243_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \mainALU|O[12]~168_dataout\ & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|O[12]~243_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(12) & NOT \regA~dataout\(12) & \regB~dataout\(11) & NOT \regA~dataout\(11));

\mainALU|O[12]~243_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \regB~dataout\(12) & \regA~dataout\(12) & \regB~dataout\(11) & NOT 
\regA~dataout\(11));

\mainALU|O[12]~243_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[12]~168_dataout\ & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|O[12]~243_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & 
\mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[12]~168_dataout\ & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|O[12]~243_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~243_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~243_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~243_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[12]~243_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~243_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~249_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regA~dataout\(11) & NOT \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|O[12]~249_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(12) & NOT \regA~dataout\(12) & \mainALU|Add0|adder[1]|g4~1_dataout\ & \mainALU|O[12]~168_dataout\);

\mainALU|O[12]~249_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & 
\mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \regB~dataout\(12) & NOT \regA~dataout\(12) & \mainALU|O[12]~168_dataout\);

\mainALU|O[12]~249_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & \regB~dataout\(12) & NOT \regA~dataout\(12) & \mainALU|O[12]~168_dataout\);

\mainALU|O[12]~249_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[2]~75bal_dataout\ & \mainALU|O[12]~169_dataout\);

\mainALU|O[12]~249_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~249_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~249_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~249_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[12]~249_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~249_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~255_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|O[14]~184_dataout\ & NOT \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\ & 
\regA~dataout\(14) & NOT \regB~dataout\(14) & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~255_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & \mainALU|O[12]~168_dataout\ & 
\mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\ & NOT \regA~dataout\(14) & NOT \regB~dataout\(14) & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[2]~12_dataout\ & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~255_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & \mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\ & \regA~dataout\(14) & \regB~dataout\(14) & NOT 
\mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & NOT \mainALU|Add0|adder[1]|ps[2]~12_dataout\ & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & 
\mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~255_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\ & NOT \mainALU|Add0|adder[1]|g4~1_dataout\
& \mainALU|O[11]~156bal_dataout\ & \regA~dataout\(14) & NOT \regB~dataout\(14) & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~255_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\ & NOT \mainALU|Add0|adder[1]|g4~1_dataout\
& \mainALU|O[11]~156bal_dataout\ & NOT \regA~dataout\(14) & \regB~dataout\(14) & \mainALU|O[14]~187bal_dataout\);

\mainALU|O[14]~255_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~255_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~255_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~255_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[14]~255_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~255_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~25_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~25_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT 
\mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & \regB~dataout\(6) & NOT \regA~dataout\(6) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT 
\Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~25_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \regB~dataout\(5) & NOT \regA~dataout\(5) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT 
\mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \Ins~dataout\(5) & NOT 
\Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~25_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \regB~dataout\(4) & NOT 
\regA~dataout\(4) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT 
\mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~25_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & 
\mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & \regB~dataout\(3) & NOT \regA~dataout\(3) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT 
\mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3)
& NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~25_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~25_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~25_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~25_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|CarryOut~25_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~25_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~30_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & NOT \regB~dataout\(4) & 
\regA~dataout\(4) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT 
\mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0));

\mainALU|CarryOut~30_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & 
\mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & \mainALU|Add0|adder[0]|bg_out~10_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT 
\mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & \regB~dataout\(2) & NOT 
\regA~dataout\(2) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~30_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & 
\mainALU|Add0|adder[1]|_~8sexp_dataout\ & \mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & 
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & \mainALU|Add0|adder[0]|bg_out~10_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ & \mainALU|Add0|adder[0]|bg_out~9_dataout\ & \mainALU|O[3]~89_dataout\ & 
\regB~dataout\(1) & NOT \regA~dataout\(1) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT 
\mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~30_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & 
\mainALU|LessThan0~73sexp1bal_dataout\ & \mainALU|LessThan0~69sexp2_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\ & \mainALU|Add0|adder[0]|bg_out~7_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\ & 
\mainALU|Add0|adder[0]|bg_out~10_dataout\ & \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\ & \mainALU|Add0|adder[0]|bg_out~9_dataout\ & \mainALU|O[3]~89_dataout\ & \mainALU|LessThan0~53sexp2_dataout\ & \mainALU|O[2]~77_dataout\ & 
\regB~dataout\(0) & NOT \regA~dataout\(0) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT 
\mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~30_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\mainALU|LessThan0~77sexp2_dataout\ & \mainALU|Add0|adder[1]|_~8sexp_dataout\ & NOT \regB~dataout\(6) & \regA~dataout\(6) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT 
\mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \mainALU|LessThan0~81_dataout\ & NOT \mainALU|LessThan0~85_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3)
& NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0));

\mainALU|CarryOut~30_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~30_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~30_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~30_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|CarryOut~30_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~30_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~36_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~36_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|LessThan0~109_dataout\ & \regB~dataout\(14) & NOT \regA~dataout\(14) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT 
\Ins~dataout\(0));

\mainALU|CarryOut~36_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(13) & NOT \regA~dataout\(13) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT 
\Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~36_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & NOT \mainALU|LessThan0~101_dataout\ & \regB~dataout\(12) & NOT \regA~dataout\(12) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT 
\Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~36_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & \regB~dataout\(11) & NOT \regA~dataout\(11) & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \Ins~dataout\(5) & NOT 
\Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~36_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~36_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~36_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~36_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|CarryOut~36_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~36_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~41_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(12) & \regA~dataout\(12) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT 
\Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0));

\mainALU|CarryOut~41_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & \regB~dataout\(10) & NOT \regA~dataout\(10) & 
NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~41_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & \regB~dataout\(9) & NOT \regA~dataout\(9) & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT 
\mainALU|LessThan0~93_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~41_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & NOT \mainALU|LessThan0~85_dataout\ & \regB~dataout\(8) & NOT \regA~dataout\(8) & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \mainALU|LessThan0~97_dataout\ & NOT 
\mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~41_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
NOT \mainALU|LessThan0~81_dataout\ & \regB~dataout\(7) & NOT \regA~dataout\(7) & NOT \mainALU|LessThan0~85_dataout\ & NOT \mainALU|LessThan0~89_dataout\ & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT 
\mainALU|LessThan0~97_dataout\ & NOT \mainALU|LessThan0~101_dataout\ & NOT \mainALU|LessThan0~93_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~41_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~41_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~41_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~41_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|CarryOut~41_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~41_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~22_dataout\ & \mainALU|Add0|adder[0]|bg_out~20_dataout\ & \mainALU|Add0|adder[0]|bg_out~21_dataout\ & \regA~dataout\(0));

\mainALU|Add0|adder[0]|bg_out~19_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(0) & \regA~dataout\(1) & \mainALU|Add0|adder[0]|bg_out~22_dataout\ & \mainALU|Add0|adder[0]|bg_out~20_dataout\ & \mainALU|Add0|adder[0]|bg_out~21_dataout\
);

\mainALU|Add0|adder[0]|bg_out~19_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[0]|bg_out~19_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~19_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~128bal_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & \regA~dataout\(8) & \regB~dataout\(8));

\mainALU|O[8]~128bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regB~dataout\(7) & \regA~dataout\(7) & NOT \regA~dataout\(8)
& NOT \regB~dataout\(8));

\mainALU|O[8]~128bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1)
& \Ins~dataout\(0) & NOT \regA~dataout\(8) & NOT \regB~dataout\(8));

\mainALU|O[8]~128bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \regA~dataout\(8) & \regB~dataout\(8));

\mainALU|O[8]~128bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT 
\Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(8) & NOT \regB~dataout\(8));

\mainALU|O[8]~128bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~128bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~128bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~128bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[8]~128bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~128bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~187bal_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & NOT \mainALU|Add0|adder[1]|ps[2]~12_dataout\ & 
\mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & \mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\ & \regA~dataout\(14) & \regB~dataout\(14));

\mainALU|O[14]~187bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(14) & NOT \regB~dataout\(14) & 
\mainALU|Add0|adder[1]|g2cp[2]~9_dataout\);

\mainALU|O[14]~187bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & \mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\ & \mainALU|Add0|adder[1]|g4~1_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT 
\Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \regA~dataout\(14) & NOT \regB~dataout\(14));

\mainALU|O[14]~187bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\ & \mainALU|Add0|adder[1]|g4~1_dataout\ & \regA~dataout\(14) & 
\regB~dataout\(14));

\mainALU|O[14]~187bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\ & NOT \mainALU|Add0|adder[1]|ps[2]~12_dataout\ & \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\ & 
\mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & 
\Ins~dataout\(0) & NOT \regA~dataout\(14) & NOT \regB~dataout\(14));

\mainALU|O[14]~187bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~187bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~187bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~187bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[14]~187bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~187bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[0]|bg_out~16_dataout\ & \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\);

\mainALU|O[8]~127bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[8]~127bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[8]~127bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\);

\mainALU|O[10]~141bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[10]~141bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~141bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|gcp[2]~5_dataout\);

\mainALU|O[10]~142bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[10]~142bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~142bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(9) & NOT \regA~dataout\(9));

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[2]~12sexpbal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(9) & \regB~dataout\(9));

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0));

\mainALU|O[2]~75bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[2]~75bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[2]~75bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\ & \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\ & NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\ & NOT 
\mainALU|Add0|adder[1]|ps[1]~14_dataout\);

\mainALU|O[11]~156bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[11]~156bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~156bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|g4~1_dataout\);

\mainALU|O[11]~157bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[11]~157bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~157bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(10) & NOT \regA~dataout\(10));

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[1]|ps[3]~10sexpbal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(11) & \regA~dataout\(11));

\mainALU|O[12]~167bal_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[12]~167bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~167bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~17bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~17bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(15) & NOT \regA~dataout\(15) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & \Ins~dataout\(1) & NOT \Ins~dataout\(0));

\mainALU|CarryOut~17bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(15) & \regA~dataout\(15) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0));

\mainALU|CarryOut~17bal_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \mainALU|LessThan0~109_dataout\ & NOT \regB~dataout\(14) & \regA~dataout\(14) & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & 
\Ins~dataout\(0));

\mainALU|CarryOut~17bal_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & \regA~dataout\(13) & NOT \mainALU|LessThan0~105_dataout\ & NOT \mainALU|LessThan0~109_dataout\ & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT 
\Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0));

\mainALU|CarryOut~17bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~17bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~17bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~17bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|CarryOut~17bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|CarryOut~17bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(6) & \regA~dataout\(6));

\mainALU|LessThan0~73sexp1bal_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(6) & NOT \regA~dataout\(6));

\mainALU|LessThan0~73sexp1bal_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|LessThan0~73sexp1bal_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|LessThan0~73sexp1bal_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \ALU_Regs~dataout\);

\ALU_Regs~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\ALU_Regs~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\ALU_Regs~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[15]~202_dataout\);

\mainALU|O[15]~261_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[15]~261_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[15]~261_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[10]~149_dataout\);

\mainALU|O[10]~262_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[10]~262_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[10]~262_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[9]~155_dataout\);

\mainALU|O[9]~263_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[9]~263_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[9]~263_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[13]~182_dataout\);

\mainALU|O[13]~264_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[13]~264_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[13]~264_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[11]~164_dataout\);

\mainALU|O[11]~265_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[11]~265_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[11]~265_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[12]~177_dataout\);

\mainALU|O[12]~266_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[12]~266_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[12]~266_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[14]~196_dataout\);

\mainALU|O[14]~267_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\mainALU|O[14]~267_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|O[14]~267_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\mainALU|Add0|adder[0]|bg_out~6_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0) & \regB~dataout\(1));

\mainALU|Add0|adder[0]|bg_out~7_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(4) & NOT \regA~dataout\(4));

\mainALU|Add0|adder[0]|bg_out~8_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0));

\mainALU|Add0|adder[0]|bg_out~9_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(2) & NOT \regA~dataout\(2));

\mainALU|Add0|adder[0]|bg_out~10_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & NOT \regA~dataout\(3));

\mainALU|O[2]~77_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \regA~dataout\(1));

\mainALU|O[2]~79_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(2) & \regA~dataout\(2));

\mainALU|Add0|adder[0]|result_node|sout_node[5]~29_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(4) & NOT \regA~dataout\(4));

\mainALU|Add0|adder[0]|result_node|sout_node[5]~30_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(4) & \regB~dataout\(4));

\mainALU|O[3]~89_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & NOT \regB~dataout\(2));

\mainALU|Add0|adder[0]|result_node|sout_node[6]~39_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & \regA~dataout\(3));

\mainALU|Add0|adder[0]|result_node|sout_node[6]~41_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(4) & \regA~dataout\(4));

\mainALU|Add0|adder[0]|result_node|sout_node[6]~42_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & NOT \regA~dataout\(5));

\mainALU|Add0|adder[0]|result_node|sout_node[6]~43_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(5) & \regB~dataout\(5));

\mainALU|Add0|adder[0]|result_node|sout_node[7]~52_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & \regA~dataout\(5));

\mainALU|Add0|adder[0]|result_node|sout_node[7]~56_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(6) & NOT \regA~dataout\(6));

\mainALU|Add0|adder[0]|result_node|sout_node[7]~57_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(6) & \regB~dataout\(6));

\mainALU|Add0|adder[1]|result_node|sout_node[2]~31_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(9) & NOT \regA~dataout\(9));

\mainALU|O[8]~126_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|_~9_dataout\);

\mainALU|O[8]~133_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & \mainALU|Add0|adder[1]|_~9_dataout\ & \regB~dataout\(7) & NOT \regA~dataout\(7)
& \regA~dataout\(8) & NOT \regB~dataout\(8));

\mainALU|Add0|adder[1]|result_node|sout_node[6]~49_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(13) & NOT \regA~dataout\(13));

\mainALU|Add0|adder[1]|result_node|sout_node[6]~50_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(13) & \regB~dataout\(13));

\mainALU|Add0|adder[2]|result_node|sout_node[0]~0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(15) & NOT \regA~dataout\(15));

\mainALU|Add0|adder[2]|result_node|sout_node[0]~1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(15) & \regA~dataout\(15));

\mainALU|O[12]~168_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(11) & NOT \regA~dataout\(11));

\mainALU|O[12]~169_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(12) & \regA~dataout\(12));

\mainALU|O[14]~184_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \mainALU|O[12]~168_dataout\ & \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\ & \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\);

\mainALU|O[14]~185_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Ins~dataout\(5) & NOT \Ins~dataout\(4) & NOT \Ins~dataout\(3) & NOT \Ins~dataout\(2) & NOT \Ins~dataout\(1) & \Ins~dataout\(0) & NOT \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\);

\mainALU|Add0|adder[1]|ps[6]~4sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(13) & NOT \regA~dataout\(13));

\mainALU|Add0|adder[1]|ps[5]~6sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(12) & NOT \regA~dataout\(12));

\mainALU|Add0|adder[1]|_~8sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7));

\mainALU|Equal2~2sexp1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(0) & \regA~dataout\(0));

\mainALU|LessThan0~53sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(1) & NOT \regA~dataout\(1));

\mainALU|LessThan0~69sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(5) & NOT \regA~dataout\(5));

\mainALU|LessThan0~77sexp2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(7) & NOT \regA~dataout\(7));

\mainALU|Add0|adder[0]|bg_out~20_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(4) & NOT \regA~dataout\(4));

\mainALU|Add0|adder[0]|bg_out~21_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & NOT \regA~dataout\(3));

\mainALU|Add0|adder[0]|bg_out~22_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(2) & NOT \regA~dataout\(2));

\mainALU|Add0|adder[0]|bg_out~23_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0));

\mainALU|O[2]~268_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \regA~dataout\(1));

\mainALU|Add0|adder[0]|bg_out~24_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0));

\mainALU|Add0|adder[0]|bg_out~25_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(3) & NOT \regA~dataout\(3));

\mainALU|Add0|adder[0]|bg_out~26_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(2) & NOT \regA~dataout\(2));

\mainALU|Add0|adder[0]|bg_out~27_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0));

\mainALU|O[3]~269_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & NOT \regB~dataout\(2));

\mainALU|O[3]~270_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & NOT \regB~dataout\(2));

\mainALU|Add0|adder[0]|result_node|sout_node[6]~74_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(4) & \regA~dataout\(4));

\mainALU|Add0|adder[0]|result_node|sout_node[6]~75_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(3) & \regA~dataout\(3));

\mainALU|O[3]~271_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(2) & NOT \regB~dataout\(2));

\mainALU|O[2]~272_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(1) & \regA~dataout\(1));

\mainALU|Add0|adder[0]|result_node|sout_node[7]~76_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(5) & \regA~dataout\(5));

\mainALU|Add0|adder[0]|result_node|sout_node[5]~77_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regA~dataout\(4) & \regB~dataout\(4));

\mainALU|Add0|adder[1]|_~9_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \regB~dataout\(7) & \regA~dataout\(7));

\mainALU|Add0|adder[0]|bg_out~28_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \regB~dataout\(0) & NOT \regA~dataout\(0) & \regB~dataout\(1));
\ALT_INV_ALU_Regs~dataout\ <= NOT \ALU_Regs~dataout\;
\ALT_INV_Ins~dataout\(5) <= NOT \Ins~dataout\(5);
\ALT_INV_Ins~dataout\(4) <= NOT \Ins~dataout\(4);
\ALT_INV_Ins~dataout\(3) <= NOT \Ins~dataout\(3);
\ALT_INV_Ins~dataout\(2) <= NOT \Ins~dataout\(2);
\ALT_INV_Ins~dataout\(1) <= NOT \Ins~dataout\(1);
\ALT_INV_Ins~dataout\(0) <= NOT \Ins~dataout\(0);
\ALT_INV_regB~dataout\(15) <= NOT \regB~dataout\(15);
\ALT_INV_regB~dataout\(14) <= NOT \regB~dataout\(14);
\ALT_INV_regB~dataout\(13) <= NOT \regB~dataout\(13);
\ALT_INV_regB~dataout\(11) <= NOT \regB~dataout\(11);
\ALT_INV_regB~dataout\(12) <= NOT \regB~dataout\(12);
\ALT_INV_regB~dataout\(10) <= NOT \regB~dataout\(10);
\ALT_INV_regB~dataout\(8) <= NOT \regB~dataout\(8);
\ALT_INV_regB~dataout\(7) <= NOT \regB~dataout\(7);
\ALT_INV_regB~dataout\(9) <= NOT \regB~dataout\(9);
\ALT_INV_regB~dataout\(6) <= NOT \regB~dataout\(6);
\ALT_INV_regB~dataout\(5) <= NOT \regB~dataout\(5);
\ALT_INV_regB~dataout\(3) <= NOT \regB~dataout\(3);
\ALT_INV_regB~dataout\(4) <= NOT \regB~dataout\(4);
\ALT_INV_regB~dataout\(1) <= NOT \regB~dataout\(1);
\ALT_INV_regB~dataout\(0) <= NOT \regB~dataout\(0);
\ALT_INV_regB~dataout\(2) <= NOT \regB~dataout\(2);
\ALT_INV_regA~dataout\(15) <= NOT \regA~dataout\(15);
\ALT_INV_regA~dataout\(14) <= NOT \regA~dataout\(14);
\ALT_INV_regA~dataout\(13) <= NOT \regA~dataout\(13);
\ALT_INV_regA~dataout\(11) <= NOT \regA~dataout\(11);
\ALT_INV_regA~dataout\(12) <= NOT \regA~dataout\(12);
\ALT_INV_regA~dataout\(9) <= NOT \regA~dataout\(9);
\ALT_INV_regA~dataout\(8) <= NOT \regA~dataout\(8);
\ALT_INV_regA~dataout\(7) <= NOT \regA~dataout\(7);
\ALT_INV_regA~dataout\(10) <= NOT \regA~dataout\(10);
\ALT_INV_regA~dataout\(6) <= NOT \regA~dataout\(6);
\ALT_INV_regA~dataout\(5) <= NOT \regA~dataout\(5);
\ALT_INV_regA~dataout\(3) <= NOT \regA~dataout\(3);
\ALT_INV_regA~dataout\(4) <= NOT \regA~dataout\(4);
\ALT_INV_regA~dataout\(1) <= NOT \regA~dataout\(1);
\ALT_INV_regA~dataout\(0) <= NOT \regA~dataout\(0);
\ALT_INV_regA~dataout\(2) <= NOT \regA~dataout\(2);
\mainALU|ALT_INV_CarryOut~16_dataout\ <= NOT \mainALU|CarryOut~16_dataout\;
\mainALU|ALT_INV_CarryOut~10_dataout\ <= NOT \mainALU|CarryOut~10_dataout\;
\mainALU|Add0|adder[1]|result_node|ALT_INV_sout_node[6]~51_dataout\ <= NOT \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_dataout\;
\mainALU|Add0|adder[1]|result_node|ALT_INV_sout_node[2]~33_dataout\ <= NOT \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_dataout\;
\mainALU|ALT_INV_O[3]~102_dataout\ <= NOT \mainALU|O[3]~102_dataout\;
\mainALU|ALT_INV_O[3]~96_dataout\ <= NOT \mainALU|O[3]~96_dataout\;
\mainALU|Add0|adder[0]|result_node|ALT_INV_sout_node[5]~31_dataout\ <= NOT \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_dataout\;
\mainALU|Add0|adder[0]|ALT_INV_bg_out~16_dataout\ <= NOT \mainALU|Add0|adder[0]|bg_out~16_dataout\;
\mainALU|Add0|adder[1]|ALT_INV_g4~1_dataout\ <= NOT \mainALU|Add0|adder[1]|g4~1_dataout\;
\mainALU|Add0|adder[1]|ALT_INV_gcp[2]~5_dataout\ <= NOT \mainALU|Add0|adder[1]|gcp[2]~5_dataout\;
\mainALU|Add0|adder[1]|ALT_INV_g2cp[2]~9_dataout\ <= NOT \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\;
\mainALU|Add0|adder[0]|ALT_INV_genr_node[3]~8_dataout\ <= NOT \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\;
\mainALU|Add0|adder[0]|ALT_INV_prop_node[3]~7_dataout\ <= NOT \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\;
\mainALU|ALT_INV_LessThan0~109_dataout\ <= NOT \mainALU|LessThan0~109_dataout\;
\mainALU|ALT_INV_LessThan0~105_dataout\ <= NOT \mainALU|LessThan0~105_dataout\;
\mainALU|ALT_INV_LessThan0~101_dataout\ <= NOT \mainALU|LessThan0~101_dataout\;
\mainALU|ALT_INV_LessThan0~97_dataout\ <= NOT \mainALU|LessThan0~97_dataout\;
\mainALU|ALT_INV_LessThan0~93_dataout\ <= NOT \mainALU|LessThan0~93_dataout\;
\mainALU|ALT_INV_LessThan0~89_dataout\ <= NOT \mainALU|LessThan0~89_dataout\;
\mainALU|ALT_INV_LessThan0~85_dataout\ <= NOT \mainALU|LessThan0~85_dataout\;
\mainALU|ALT_INV_LessThan0~81_dataout\ <= NOT \mainALU|LessThan0~81_dataout\;
\CLKFLOP|ALT_INV_Q~reg0_dataout\ <= NOT \CLKFLOP|Q~reg0_dataout\;
\mainALU|Add0|adder[1]|ALT_INV_ps[0]~15_dataout\ <= NOT \mainALU|Add0|adder[1]|ps[0]~15_dataout\;
\mainALU|Add0|adder[1]|ALT_INV_ps[1]~14_dataout\ <= NOT \mainALU|Add0|adder[1]|ps[1]~14_dataout\;
\mainALU|Add0|adder[1]|ALT_INV_ps[2]~12_dataout\ <= NOT \mainALU|Add0|adder[1]|ps[2]~12_dataout\;
\CLKFLOP|ALT_INV_Q~en_dataout\ <= NOT \CLKFLOP|Q~en_dataout\;

-- Location: PIN_15
\regA[8]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(8),
	dataout => \regA~dataout\(8));

-- Location: PIN_77
\regB[8]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(8),
	dataout => \regB~dataout\(8));

-- Location: LC27
\mainALU|LessThan0~81\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~81_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~81_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~81_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~81_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~81_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~81_pterm5_bus\,
	pxor => \mainALU|LessThan0~81_pxor_bus\,
	pclk => \mainALU|LessThan0~81_pclk_bus\,
	papre => \mainALU|LessThan0~81_papre_bus\,
	paclr => \mainALU|LessThan0~81_paclr_bus\,
	pena => \mainALU|LessThan0~81_pena_bus\,
	dataout => \mainALU|LessThan0~81_dataout\);

-- Location: PIN_16
\regA[9]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(9),
	dataout => \regA~dataout\(9));

-- Location: PIN_76
\regB[9]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(9),
	dataout => \regB~dataout\(9));

-- Location: LC88
\mainALU|LessThan0~85\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~85_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~85_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~85_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~85_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~85_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~85_pterm5_bus\,
	pxor => \mainALU|LessThan0~85_pxor_bus\,
	pclk => \mainALU|LessThan0~85_pclk_bus\,
	papre => \mainALU|LessThan0~85_papre_bus\,
	paclr => \mainALU|LessThan0~85_paclr_bus\,
	pena => \mainALU|LessThan0~85_pena_bus\,
	dataout => \mainALU|LessThan0~85_dataout\);

-- Location: PIN_17
\regA[10]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(10),
	dataout => \regA~dataout\(10));

-- Location: PIN_75
\regB[10]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(10),
	dataout => \regB~dataout\(10));

-- Location: LC32
\mainALU|LessThan0~89\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~89_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~89_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~89_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~89_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~89_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~89_pterm5_bus\,
	pxor => \mainALU|LessThan0~89_pxor_bus\,
	pclk => \mainALU|LessThan0~89_pclk_bus\,
	papre => \mainALU|LessThan0~89_papre_bus\,
	paclr => \mainALU|LessThan0~89_paclr_bus\,
	pena => \mainALU|LessThan0~89_pena_bus\,
	dataout => \mainALU|LessThan0~89_dataout\);

-- Location: PIN_18
\regA[11]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(11),
	dataout => \regA~dataout\(11));

-- Location: PIN_73
\regB[11]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(11),
	dataout => \regB~dataout\(11));

-- Location: LC31
\mainALU|LessThan0~93\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~93_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~93_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~93_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~93_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~93_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~93_pterm5_bus\,
	pxor => \mainALU|LessThan0~93_pxor_bus\,
	pclk => \mainALU|LessThan0~93_pclk_bus\,
	papre => \mainALU|LessThan0~93_papre_bus\,
	paclr => \mainALU|LessThan0~93_paclr_bus\,
	pena => \mainALU|LessThan0~93_pena_bus\,
	dataout => \mainALU|LessThan0~93_dataout\);

-- Location: PIN_20
\regA[12]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(12),
	dataout => \regA~dataout\(12));

-- Location: PIN_70
\regB[12]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(12),
	dataout => \regB~dataout\(12));

-- Location: LC16
\mainALU|LessThan0~97\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~97_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~97_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~97_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~97_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~97_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~97_pterm5_bus\,
	pxor => \mainALU|LessThan0~97_pxor_bus\,
	pclk => \mainALU|LessThan0~97_pclk_bus\,
	papre => \mainALU|LessThan0~97_papre_bus\,
	paclr => \mainALU|LessThan0~97_paclr_bus\,
	pena => \mainALU|LessThan0~97_pena_bus\,
	dataout => \mainALU|LessThan0~97_dataout\);

-- Location: PIN_21
\regA[13]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(13),
	dataout => \regA~dataout\(13));

-- Location: PIN_69
\regB[13]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(13),
	dataout => \regB~dataout\(13));

-- Location: LC10
\mainALU|LessThan0~101\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~101_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~101_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~101_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~101_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~101_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~101_pterm5_bus\,
	pxor => \mainALU|LessThan0~101_pxor_bus\,
	pclk => \mainALU|LessThan0~101_pclk_bus\,
	papre => \mainALU|LessThan0~101_papre_bus\,
	paclr => \mainALU|LessThan0~101_paclr_bus\,
	pena => \mainALU|LessThan0~101_pena_bus\,
	dataout => \mainALU|LessThan0~101_dataout\);

-- Location: PIN_22
\regA[14]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(14),
	dataout => \regA~dataout\(14));

-- Location: PIN_68
\regB[14]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(14),
	dataout => \regB~dataout\(14));

-- Location: LC8
\mainALU|LessThan0~105\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~105_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~105_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~105_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~105_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~105_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~105_pterm5_bus\,
	pxor => \mainALU|LessThan0~105_pxor_bus\,
	pclk => \mainALU|LessThan0~105_pclk_bus\,
	papre => \mainALU|LessThan0~105_papre_bus\,
	paclr => \mainALU|LessThan0~105_paclr_bus\,
	pena => \mainALU|LessThan0~105_pena_bus\,
	dataout => \mainALU|LessThan0~105_dataout\);

-- Location: PIN_24
\regA[15]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(15),
	dataout => \regA~dataout\(15));

-- Location: PIN_67
\regB[15]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(15),
	dataout => \regB~dataout\(15));

-- Location: LC81
\mainALU|LessThan0~109\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~109_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~109_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~109_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~109_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~109_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~109_pterm5_bus\,
	pxor => \mainALU|LessThan0~109_pxor_bus\,
	pclk => \mainALU|LessThan0~109_pclk_bus\,
	papre => \mainALU|LessThan0~109_papre_bus\,
	paclr => \mainALU|LessThan0~109_paclr_bus\,
	pena => \mainALU|LessThan0~109_pena_bus\,
	dataout => \mainALU|LessThan0~109_dataout\);

-- Location: PIN_63
\ALU_Regs~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ALU_Regs,
	dataout => \ALU_Regs~dataout\);

-- Location: PIN_25
\regB[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(0),
	dataout => \regB~dataout\(0));

-- Location: SEXP106
\mainALU|Equal2~2sexp1\ : max_sexp
PORT MAP (
	datain => \mainALU|Equal2~2sexp1_datain_bus\,
	dataout => \mainALU|Equal2~2sexp1_dataout\);

-- Location: SEXP107
\mainALU|Add0|adder[0]|bg_out~8\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~8_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~8_dataout\);

-- Location: PIN_27
\regB[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(1),
	dataout => \regB~dataout\(1));

-- Location: SEXP111
\mainALU|O[2]~77\ : max_sexp
PORT MAP (
	datain => \mainALU|O[2]~77_datain_bus\,
	dataout => \mainALU|O[2]~77_dataout\);

-- Location: SEXP99
\mainALU|LessThan0~53sexp2\ : max_sexp
PORT MAP (
	datain => \mainALU|LessThan0~53sexp2_datain_bus\,
	dataout => \mainALU|LessThan0~53sexp2_dataout\);

-- Location: PIN_6
\regA[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(2),
	dataout => \regA~dataout\(2));

-- Location: SEXP101
\mainALU|O[3]~89\ : max_sexp
PORT MAP (
	datain => \mainALU|O[3]~89_datain_bus\,
	dataout => \mainALU|O[3]~89_dataout\);

-- Location: PIN_28
\regB[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(2),
	dataout => \regB~dataout\(2));

-- Location: SEXP109
\mainALU|Add0|adder[0]|bg_out~9\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~9_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~9_dataout\);

-- Location: PIN_29
\regB[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(3),
	dataout => \regB~dataout\(3));

-- Location: SEXP103
\mainALU|Add0|adder[0]|result_node|sout_node[6]~39\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~39_dataout\);

-- Location: SEXP108
\mainALU|Add0|adder[0]|bg_out~10\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~10_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~10_dataout\);

-- Location: PIN_30
\regB[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(4),
	dataout => \regB~dataout\(4));

-- Location: SEXP110
\mainALU|Add0|adder[0]|result_node|sout_node[6]~41\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[6]~41_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~41_dataout\);

-- Location: SEXP102
\mainALU|Add0|adder[0]|bg_out~7\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~7_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~7_dataout\);

-- Location: PIN_84
\regB[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(5),
	dataout => \regB~dataout\(5));

-- Location: SEXP100
\mainALU|Add0|adder[0]|result_node|sout_node[7]~52\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[7]~52_dataout\);

-- Location: SEXP112
\mainALU|LessThan0~69sexp2\ : max_sexp
PORT MAP (
	datain => \mainALU|LessThan0~69sexp2_datain_bus\,
	dataout => \mainALU|LessThan0~69sexp2_dataout\);

-- Location: PIN_11
\regA[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(6),
	dataout => \regA~dataout\(6));

-- Location: PIN_80
\regB[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(6),
	dataout => \regB~dataout\(6));

-- Location: LC102
\mainALU|LessThan0~73sexp1bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|LessThan0~73sexp1bal_pterm0_bus\,
	pterm1 => \mainALU|LessThan0~73sexp1bal_pterm1_bus\,
	pterm2 => \mainALU|LessThan0~73sexp1bal_pterm2_bus\,
	pterm3 => \mainALU|LessThan0~73sexp1bal_pterm3_bus\,
	pterm4 => \mainALU|LessThan0~73sexp1bal_pterm4_bus\,
	pterm5 => \mainALU|LessThan0~73sexp1bal_pterm5_bus\,
	pxor => \mainALU|LessThan0~73sexp1bal_pxor_bus\,
	pclk => \mainALU|LessThan0~73sexp1bal_pclk_bus\,
	papre => \mainALU|LessThan0~73sexp1bal_papre_bus\,
	paclr => \mainALU|LessThan0~73sexp1bal_paclr_bus\,
	pena => \mainALU|LessThan0~73sexp1bal_pena_bus\,
	dataout => \mainALU|LessThan0~73sexp1bal_dataout\);

-- Location: PIN_79
\regB[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regB(7),
	dataout => \regB~dataout\(7));

-- Location: SEXP97
\mainALU|Add0|adder[1]|_~8sexp\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[1]|_~8sexp_datain_bus\,
	dataout => \mainALU|Add0|adder[1]|_~8sexp_dataout\);

-- Location: SEXP98
\mainALU|LessThan0~77sexp2\ : max_sexp
PORT MAP (
	datain => \mainALU|LessThan0~77sexp2_datain_bus\,
	dataout => \mainALU|LessThan0~77sexp2_dataout\);

-- Location: LC101
\ABFlagFlop|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \ABFlagFlop|Q~reg0_pterm0_bus\,
	pterm1 => \ABFlagFlop|Q~reg0_pterm1_bus\,
	pterm2 => \ABFlagFlop|Q~reg0_pterm2_bus\,
	pterm3 => \ABFlagFlop|Q~reg0_pterm3_bus\,
	pterm4 => \ABFlagFlop|Q~reg0_pterm4_bus\,
	pterm5 => \ABFlagFlop|Q~reg0_pterm5_bus\,
	pxor => \ABFlagFlop|Q~reg0_pxor_bus\,
	pclk => \ABFlagFlop|Q~reg0_pclk_bus\,
	papre => \ABFlagFlop|Q~reg0_papre_bus\,
	paclr => \ABFlagFlop|Q~reg0_paclr_bus\,
	pena => \ABFlagFlop|Q~reg0_pena_bus\,
	dataout => \ABFlagFlop|Q~reg0_dataout\);

-- Location: LC112
\CarryFlagFlop|Q~en\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CarryFlagFlop|Q~en_pterm0_bus\,
	pterm1 => \CarryFlagFlop|Q~en_pterm1_bus\,
	pterm2 => \CarryFlagFlop|Q~en_pterm2_bus\,
	pterm3 => \CarryFlagFlop|Q~en_pterm3_bus\,
	pterm4 => \CarryFlagFlop|Q~en_pterm4_bus\,
	pterm5 => \CarryFlagFlop|Q~en_pterm5_bus\,
	pxor => \CarryFlagFlop|Q~en_pxor_bus\,
	pclk => \CarryFlagFlop|Q~en_pclk_bus\,
	papre => \CarryFlagFlop|Q~en_papre_bus\,
	paclr => \CarryFlagFlop|Q~en_paclr_bus\,
	pena => \CarryFlagFlop|Q~en_pena_bus\,
	dataout => \CarryFlagFlop|Q~en_dataout\);

-- Location: PIN_2
\FastCLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FastCLK,
	dataout => \FastCLK~dataout\);

-- Location: PIN_1
\CLK_Select~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK_Select,
	dataout => \CLK_Select~dataout\);

-- Location: LC115
\CLKFLOP|Q~en\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CLKFLOP|Q~en_pterm0_bus\,
	pterm1 => \CLKFLOP|Q~en_pterm1_bus\,
	pterm2 => \CLKFLOP|Q~en_pterm2_bus\,
	pterm3 => \CLKFLOP|Q~en_pterm3_bus\,
	pterm4 => \CLKFLOP|Q~en_pterm4_bus\,
	pterm5 => \CLKFLOP|Q~en_pterm5_bus\,
	pxor => \CLKFLOP|Q~en_pxor_bus\,
	pclk => \CLKFLOP|Q~en_pclk_bus\,
	papre => \CLKFLOP|Q~en_papre_bus\,
	paclr => \CLKFLOP|Q~en_paclr_bus\,
	pena => \CLKFLOP|Q~en_pena_bus\,
	dataout => \CLKFLOP|Q~en_dataout\);

-- Location: LC118
\CLKFLOP|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CLKFLOP|Q~reg0_pterm0_bus\,
	pterm1 => \CLKFLOP|Q~reg0_pterm1_bus\,
	pterm2 => \CLKFLOP|Q~reg0_pterm2_bus\,
	pterm3 => \CLKFLOP|Q~reg0_pterm3_bus\,
	pterm4 => \CLKFLOP|Q~reg0_pterm4_bus\,
	pterm5 => \CLKFLOP|Q~reg0_pterm5_bus\,
	pxor => \CLKFLOP|Q~reg0_pxor_bus\,
	pclk => \CLKFLOP|Q~reg0_pclk_bus\,
	papre => \CLKFLOP|Q~reg0_papre_bus\,
	paclr => \CLKFLOP|Q~reg0_paclr_bus\,
	pena => \CLKFLOP|Q~reg0_pena_bus\,
	dataout => \CLKFLOP|Q~reg0_dataout\);

-- Location: PIN_83
\UserCLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_UserCLK,
	dataout => \UserCLK~dataout\);

-- Location: LC117
\interntalCLK~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \interntalCLK~7_pterm0_bus\,
	pterm1 => \interntalCLK~7_pterm1_bus\,
	pterm2 => \interntalCLK~7_pterm2_bus\,
	pterm3 => \interntalCLK~7_pterm3_bus\,
	pterm4 => \interntalCLK~7_pterm4_bus\,
	pterm5 => \interntalCLK~7_pterm5_bus\,
	pxor => \interntalCLK~7_pxor_bus\,
	pclk => \interntalCLK~7_pclk_bus\,
	papre => \interntalCLK~7_papre_bus\,
	paclr => \interntalCLK~7_paclr_bus\,
	pena => \interntalCLK~7_pena_bus\,
	dataout => \interntalCLK~7_dataout\);

-- Location: PIN_55
\Ins[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(0),
	dataout => \Ins~dataout\(0));

-- Location: PIN_56
\Ins[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(1),
	dataout => \Ins~dataout\(1));

-- Location: PIN_57
\Ins[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(2),
	dataout => \Ins~dataout\(2));

-- Location: PIN_58
\Ins[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(3),
	dataout => \Ins~dataout\(3));

-- Location: PIN_60
\Ins[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(4),
	dataout => \Ins~dataout\(4));

-- Location: PIN_4
\regA[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(0),
	dataout => \regA~dataout\(0));

-- Location: PIN_61
\Ins[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Ins(5),
	dataout => \Ins~dataout\(5));

-- Location: LC35
\mainALU|O[0]~66\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[0]~66_pterm0_bus\,
	pterm1 => \mainALU|O[0]~66_pterm1_bus\,
	pterm2 => \mainALU|O[0]~66_pterm2_bus\,
	pterm3 => \mainALU|O[0]~66_pterm3_bus\,
	pterm4 => \mainALU|O[0]~66_pterm4_bus\,
	pterm5 => \mainALU|O[0]~66_pterm5_bus\,
	pxor => \mainALU|O[0]~66_pxor_bus\,
	pclk => \mainALU|O[0]~66_pclk_bus\,
	papre => \mainALU|O[0]~66_papre_bus\,
	paclr => \mainALU|O[0]~66_paclr_bus\,
	pena => \mainALU|O[0]~66_pena_bus\,
	dataout => \mainALU|O[0]~66_dataout\);

-- Location: LC107
\ALU_Regs~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \ALU_Regs~0_pterm0_bus\,
	pterm1 => \ALU_Regs~0_pterm1_bus\,
	pterm2 => \ALU_Regs~0_pterm2_bus\,
	pterm3 => \ALU_Regs~0_pterm3_bus\,
	pterm4 => \ALU_Regs~0_pterm4_bus\,
	pterm5 => \ALU_Regs~0_pterm5_bus\,
	pxor => \ALU_Regs~0_pxor_bus\,
	pclk => \ALU_Regs~0_pclk_bus\,
	papre => \ALU_Regs~0_papre_bus\,
	paclr => \ALU_Regs~0_paclr_bus\,
	pena => \ALU_Regs~0_pena_bus\,
	dataout => \ALU_Regs~0_dataout\);

-- Location: PIN_5
\regA[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(1),
	dataout => \regA~dataout\(1));

-- Location: LC63
\mainALU|O[1]~203\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[1]~203_pterm0_bus\,
	pterm1 => \mainALU|O[1]~203_pterm1_bus\,
	pterm2 => \mainALU|O[1]~203_pterm2_bus\,
	pterm3 => \mainALU|O[1]~203_pterm3_bus\,
	pterm4 => \mainALU|O[1]~203_pterm4_bus\,
	pterm5 => \mainALU|O[1]~203_pterm5_bus\,
	pxor => \mainALU|O[1]~203_pxor_bus\,
	pclk => \mainALU|O[1]~203_pclk_bus\,
	papre => \mainALU|O[1]~203_papre_bus\,
	paclr => \mainALU|O[1]~203_paclr_bus\,
	pena => \mainALU|O[1]~203_pena_bus\,
	pexpout => \mainALU|O[1]~203_pexpout\);

-- Location: LC64
\mainALU|O[1]~68\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[1]~203_pexpout\,
	pterm0 => \mainALU|O[1]~68_pterm0_bus\,
	pterm1 => \mainALU|O[1]~68_pterm1_bus\,
	pterm2 => \mainALU|O[1]~68_pterm2_bus\,
	pterm3 => \mainALU|O[1]~68_pterm3_bus\,
	pterm4 => \mainALU|O[1]~68_pterm4_bus\,
	pterm5 => \mainALU|O[1]~68_pterm5_bus\,
	pxor => \mainALU|O[1]~68_pxor_bus\,
	pclk => \mainALU|O[1]~68_pclk_bus\,
	papre => \mainALU|O[1]~68_papre_bus\,
	paclr => \mainALU|O[1]~68_paclr_bus\,
	pena => \mainALU|O[1]~68_pena_bus\,
	dataout => \mainALU|O[1]~68_dataout\);

-- Location: SEXP62
\mainALU|Add0|adder[0]|bg_out~28\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~28_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~28_dataout\);

-- Location: LC60
\mainALU|O[2]~209\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[2]~209_pterm0_bus\,
	pterm1 => \mainALU|O[2]~209_pterm1_bus\,
	pterm2 => \mainALU|O[2]~209_pterm2_bus\,
	pterm3 => \mainALU|O[2]~209_pterm3_bus\,
	pterm4 => \mainALU|O[2]~209_pterm4_bus\,
	pterm5 => \mainALU|O[2]~209_pterm5_bus\,
	pxor => \mainALU|O[2]~209_pxor_bus\,
	pclk => \mainALU|O[2]~209_pclk_bus\,
	papre => \mainALU|O[2]~209_papre_bus\,
	paclr => \mainALU|O[2]~209_paclr_bus\,
	pena => \mainALU|O[2]~209_pena_bus\,
	pexpout => \mainALU|O[2]~209_pexpout\);

-- Location: SEXP57
\mainALU|O[2]~268\ : max_sexp
PORT MAP (
	datain => \mainALU|O[2]~268_datain_bus\,
	dataout => \mainALU|O[2]~268_dataout\);

-- Location: SEXP59
\mainALU|Add0|adder[0]|bg_out~24\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~24_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~24_dataout\);

-- Location: SEXP56
\mainALU|O[2]~79\ : max_sexp
PORT MAP (
	datain => \mainALU|O[2]~79_datain_bus\,
	dataout => \mainALU|O[2]~79_dataout\);

-- Location: LC100
\mainALU|O[2]~75bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[2]~75bal_pterm0_bus\,
	pterm1 => \mainALU|O[2]~75bal_pterm1_bus\,
	pterm2 => \mainALU|O[2]~75bal_pterm2_bus\,
	pterm3 => \mainALU|O[2]~75bal_pterm3_bus\,
	pterm4 => \mainALU|O[2]~75bal_pterm4_bus\,
	pterm5 => \mainALU|O[2]~75bal_pterm5_bus\,
	pxor => \mainALU|O[2]~75bal_pxor_bus\,
	pclk => \mainALU|O[2]~75bal_pclk_bus\,
	papre => \mainALU|O[2]~75bal_papre_bus\,
	paclr => \mainALU|O[2]~75bal_paclr_bus\,
	pena => \mainALU|O[2]~75bal_pena_bus\,
	dataout => \mainALU|O[2]~75bal_dataout\);

-- Location: LC61
\mainALU|O[2]~85\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[2]~209_pexpout\,
	pterm0 => \mainALU|O[2]~85_pterm0_bus\,
	pterm1 => \mainALU|O[2]~85_pterm1_bus\,
	pterm2 => \mainALU|O[2]~85_pterm2_bus\,
	pterm3 => \mainALU|O[2]~85_pterm3_bus\,
	pterm4 => \mainALU|O[2]~85_pterm4_bus\,
	pterm5 => \mainALU|O[2]~85_pterm5_bus\,
	pxor => \mainALU|O[2]~85_pxor_bus\,
	pclk => \mainALU|O[2]~85_pclk_bus\,
	papre => \mainALU|O[2]~85_papre_bus\,
	paclr => \mainALU|O[2]~85_paclr_bus\,
	pena => \mainALU|O[2]~85_pena_bus\,
	dataout => \mainALU|O[2]~85_dataout\);

-- Location: PIN_8
\regA[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(3),
	dataout => \regA~dataout\(3));

-- Location: LC54
\mainALU|O[3]~214\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[3]~214_pterm0_bus\,
	pterm1 => \mainALU|O[3]~214_pterm1_bus\,
	pterm2 => \mainALU|O[3]~214_pterm2_bus\,
	pterm3 => \mainALU|O[3]~214_pterm3_bus\,
	pterm4 => \mainALU|O[3]~214_pterm4_bus\,
	pterm5 => \mainALU|O[3]~214_pterm5_bus\,
	pxor => \mainALU|O[3]~214_pxor_bus\,
	pclk => \mainALU|O[3]~214_pclk_bus\,
	papre => \mainALU|O[3]~214_papre_bus\,
	paclr => \mainALU|O[3]~214_paclr_bus\,
	pena => \mainALU|O[3]~214_pena_bus\,
	pexpout => \mainALU|O[3]~214_pexpout\);

-- Location: SEXP60
\mainALU|O[3]~269\ : max_sexp
PORT MAP (
	datain => \mainALU|O[3]~269_datain_bus\,
	dataout => \mainALU|O[3]~269_dataout\);

-- Location: LC55
\mainALU|O[3]~96\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[3]~214_pexpout\,
	pterm0 => \mainALU|O[3]~96_pterm0_bus\,
	pterm1 => \mainALU|O[3]~96_pterm1_bus\,
	pterm2 => \mainALU|O[3]~96_pterm2_bus\,
	pterm3 => \mainALU|O[3]~96_pterm3_bus\,
	pterm4 => \mainALU|O[3]~96_pterm4_bus\,
	pterm5 => \mainALU|O[3]~96_pterm5_bus\,
	pxor => \mainALU|O[3]~96_pxor_bus\,
	pclk => \mainALU|O[3]~96_pclk_bus\,
	papre => \mainALU|O[3]~96_papre_bus\,
	paclr => \mainALU|O[3]~96_paclr_bus\,
	pena => \mainALU|O[3]~96_pena_bus\,
	dataout => \mainALU|O[3]~96_dataout\);

-- Location: SEXP69
\mainALU|Add0|adder[0]|bg_out~6\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~6_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~6_dataout\);

-- Location: LC77
\mainALU|O[3]~220\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[3]~220_pterm0_bus\,
	pterm1 => \mainALU|O[3]~220_pterm1_bus\,
	pterm2 => \mainALU|O[3]~220_pterm2_bus\,
	pterm3 => \mainALU|O[3]~220_pterm3_bus\,
	pterm4 => \mainALU|O[3]~220_pterm4_bus\,
	pterm5 => \mainALU|O[3]~220_pterm5_bus\,
	pxor => \mainALU|O[3]~220_pxor_bus\,
	pclk => \mainALU|O[3]~220_pclk_bus\,
	papre => \mainALU|O[3]~220_papre_bus\,
	paclr => \mainALU|O[3]~220_paclr_bus\,
	pena => \mainALU|O[3]~220_pena_bus\,
	pexpout => \mainALU|O[3]~220_pexpout\);

-- Location: SEXP80
\mainALU|O[3]~270\ : max_sexp
PORT MAP (
	datain => \mainALU|O[3]~270_datain_bus\,
	dataout => \mainALU|O[3]~270_dataout\);

-- Location: SEXP75
\mainALU|Add0|adder[0]|bg_out~27\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~27_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~27_dataout\);

-- Location: LC78
\mainALU|O[3]~102\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[3]~220_pexpout\,
	pterm0 => \mainALU|O[3]~102_pterm0_bus\,
	pterm1 => \mainALU|O[3]~102_pterm1_bus\,
	pterm2 => \mainALU|O[3]~102_pterm2_bus\,
	pterm3 => \mainALU|O[3]~102_pterm3_bus\,
	pterm4 => \mainALU|O[3]~102_pterm4_bus\,
	pterm5 => \mainALU|O[3]~102_pterm5_bus\,
	pxor => \mainALU|O[3]~102_pxor_bus\,
	pclk => \mainALU|O[3]~102_pclk_bus\,
	papre => \mainALU|O[3]~102_papre_bus\,
	paclr => \mainALU|O[3]~102_paclr_bus\,
	pena => \mainALU|O[3]~102_pena_bus\,
	dataout => \mainALU|O[3]~102_dataout\);

-- Location: LC59
\mainALU|O[3]~103\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[3]~103_pterm0_bus\,
	pterm1 => \mainALU|O[3]~103_pterm1_bus\,
	pterm2 => \mainALU|O[3]~103_pterm2_bus\,
	pterm3 => \mainALU|O[3]~103_pterm3_bus\,
	pterm4 => \mainALU|O[3]~103_pterm4_bus\,
	pterm5 => \mainALU|O[3]~103_pterm5_bus\,
	pxor => \mainALU|O[3]~103_pxor_bus\,
	pclk => \mainALU|O[3]~103_pclk_bus\,
	papre => \mainALU|O[3]~103_papre_bus\,
	paclr => \mainALU|O[3]~103_paclr_bus\,
	pena => \mainALU|O[3]~103_pena_bus\,
	dataout => \mainALU|O[3]~103_dataout\);

-- Location: SEXP72
\mainALU|Add0|adder[0]|bg_out~25\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~25_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~25_dataout\);

-- Location: SEXP73
\mainALU|Add0|adder[0]|bg_out~26\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~26_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~26_dataout\);

-- Location: SEXP65
\mainALU|Add0|adder[0]|result_node|sout_node[5]~29\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[5]~29_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[5]~29_dataout\);

-- Location: PIN_9
\regA[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(4),
	dataout => \regA~dataout\(4));

-- Location: SEXP67
\mainALU|Add0|adder[0]|result_node|sout_node[5]~30\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[5]~30_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[5]~30_dataout\);

-- Location: LC70
\mainALU|Add0|adder[0]|result_node|sout_node[5]~31\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_pena_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[5]~31_dataout\);

-- Location: SEXP52
\mainALU|Add0|adder[0]|result_node|sout_node[5]~77\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[5]~77_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[5]~77_dataout\);

-- Location: LC57
\mainALU|O[4]~110\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[4]~110_pterm0_bus\,
	pterm1 => \mainALU|O[4]~110_pterm1_bus\,
	pterm2 => \mainALU|O[4]~110_pterm2_bus\,
	pterm3 => \mainALU|O[4]~110_pterm3_bus\,
	pterm4 => \mainALU|O[4]~110_pterm4_bus\,
	pterm5 => \mainALU|O[4]~110_pterm5_bus\,
	pxor => \mainALU|O[4]~110_pxor_bus\,
	pclk => \mainALU|O[4]~110_pclk_bus\,
	papre => \mainALU|O[4]~110_papre_bus\,
	paclr => \mainALU|O[4]~110_paclr_bus\,
	pena => \mainALU|O[4]~110_pena_bus\,
	dataout => \mainALU|O[4]~110_dataout\);

-- Location: PIN_12
\regA[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(7),
	dataout => \regA~dataout\(7));

-- Location: PIN_10
\regA[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_regA(5),
	dataout => \regA~dataout\(5));

-- Location: LC110
\mainALU|Add0|adder[0]|genr_node[3]~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[0]|genr_node[3]~8_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|genr_node[3]~8_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|genr_node[3]~8_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|genr_node[3]~8_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|genr_node[3]~8_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|genr_node[3]~8_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|genr_node[3]~8_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|genr_node[3]~8_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|genr_node[3]~8_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|genr_node[3]~8_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|genr_node[3]~8_pena_bus\,
	dataout => \mainALU|Add0|adder[0]|genr_node[3]~8_dataout\);

-- Location: LC109
\mainALU|Add0|adder[0]|prop_node[3]~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[0]|prop_node[3]~7_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|prop_node[3]~7_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|prop_node[3]~7_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|prop_node[3]~7_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|prop_node[3]~7_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|prop_node[3]~7_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|prop_node[3]~7_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|prop_node[3]~7_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|prop_node[3]~7_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|prop_node[3]~7_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|prop_node[3]~7_pena_bus\,
	dataout => \mainALU|Add0|adder[0]|prop_node[3]~7_dataout\);

-- Location: SEXP88
\mainALU|Add0|adder[0]|bg_out~21\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~21_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~21_dataout\);

-- Location: SEXP87
\mainALU|Add0|adder[0]|bg_out~20\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~20_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~20_dataout\);

-- Location: SEXP90
\mainALU|Add0|adder[0]|bg_out~22\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~22_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~22_dataout\);

-- Location: LC83
\mainALU|Add0|adder[0]|bg_out~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[0]|bg_out~19_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|bg_out~19_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|bg_out~19_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|bg_out~19_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|bg_out~19_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|bg_out~19_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|bg_out~19_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|bg_out~19_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|bg_out~19_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|bg_out~19_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|bg_out~19_pena_bus\,
	pexpout => \mainALU|Add0|adder[0]|bg_out~19_pexpout\);

-- Location: SEXP94
\mainALU|Add0|adder[0]|bg_out~23\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|bg_out~23_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~23_dataout\);

-- Location: LC84
\mainALU|Add0|adder[0]|bg_out~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[0]|bg_out~19_pexpout\,
	pterm0 => \mainALU|Add0|adder[0]|bg_out~16_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|bg_out~16_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|bg_out~16_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|bg_out~16_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|bg_out~16_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|bg_out~16_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|bg_out~16_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|bg_out~16_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|bg_out~16_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|bg_out~16_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|bg_out~16_pena_bus\,
	dataout => \mainALU|Add0|adder[0]|bg_out~16_dataout\);

-- Location: LC50
\mainALU|O[7]~226\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[7]~226_pterm0_bus\,
	pterm1 => \mainALU|O[7]~226_pterm1_bus\,
	pterm2 => \mainALU|O[7]~226_pterm2_bus\,
	pterm3 => \mainALU|O[7]~226_pterm3_bus\,
	pterm4 => \mainALU|O[7]~226_pterm4_bus\,
	pterm5 => \mainALU|O[7]~226_pterm5_bus\,
	pxor => \mainALU|O[7]~226_pxor_bus\,
	pclk => \mainALU|O[7]~226_pclk_bus\,
	papre => \mainALU|O[7]~226_papre_bus\,
	paclr => \mainALU|O[7]~226_paclr_bus\,
	pena => \mainALU|O[7]~226_pena_bus\,
	pexpout => \mainALU|O[7]~226_pexpout\);

-- Location: LC51
\mainALU|O[7]~116\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[7]~226_pexpout\,
	pterm0 => \mainALU|O[7]~116_pterm0_bus\,
	pterm1 => \mainALU|O[7]~116_pterm1_bus\,
	pterm2 => \mainALU|O[7]~116_pterm2_bus\,
	pterm3 => \mainALU|O[7]~116_pterm3_bus\,
	pterm4 => \mainALU|O[7]~116_pterm4_bus\,
	pterm5 => \mainALU|O[7]~116_pterm5_bus\,
	pxor => \mainALU|O[7]~116_pxor_bus\,
	pclk => \mainALU|O[7]~116_pclk_bus\,
	papre => \mainALU|O[7]~116_papre_bus\,
	paclr => \mainALU|O[7]~116_paclr_bus\,
	pena => \mainALU|O[7]~116_pena_bus\,
	dataout => \mainALU|O[7]~116_dataout\);

-- Location: LC95
\mainALU|Add0|adder[0]|result_node|sout_node[6]~69\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pena_bus\,
	pexpout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pexpout\);

-- Location: SEXP95
\mainALU|Add0|adder[0]|result_node|sout_node[6]~74\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~74_dataout\);

-- Location: SEXP82
\mainALU|Add0|adder[0]|result_node|sout_node[6]~75\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~75_dataout\);

-- Location: SEXP89
\mainALU|O[3]~271\ : max_sexp
PORT MAP (
	datain => \mainALU|O[3]~271_datain_bus\,
	dataout => \mainALU|O[3]~271_dataout\);

-- Location: SEXP92
\mainALU|O[2]~272\ : max_sexp
PORT MAP (
	datain => \mainALU|O[2]~272_datain_bus\,
	dataout => \mainALU|O[2]~272_dataout\);

-- Location: SEXP86
\mainALU|Add0|adder[0]|result_node|sout_node[6]~42\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[6]~42_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~42_dataout\);

-- Location: SEXP85
\mainALU|Add0|adder[0]|result_node|sout_node[6]~43\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[6]~43_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~43_dataout\);

-- Location: LC96
\mainALU|Add0|adder[0]|result_node|sout_node[6]~44\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[0]|result_node|sout_node[6]~69_pexpout\,
	pterm0 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_pena_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[6]~44_dataout\);

-- Location: LC56
\mainALU|O[5]~121\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[5]~121_pterm0_bus\,
	pterm1 => \mainALU|O[5]~121_pterm1_bus\,
	pterm2 => \mainALU|O[5]~121_pterm2_bus\,
	pterm3 => \mainALU|O[5]~121_pterm3_bus\,
	pterm4 => \mainALU|O[5]~121_pterm4_bus\,
	pterm5 => \mainALU|O[5]~121_pterm5_bus\,
	pxor => \mainALU|O[5]~121_pxor_bus\,
	pclk => \mainALU|O[5]~121_pclk_bus\,
	papre => \mainALU|O[5]~121_papre_bus\,
	paclr => \mainALU|O[5]~121_paclr_bus\,
	pena => \mainALU|O[5]~121_pena_bus\,
	dataout => \mainALU|O[5]~121_dataout\);

-- Location: SEXP93
\mainALU|Add0|adder[0]|result_node|sout_node[7]~76\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[7]~76_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[7]~76_dataout\);

-- Location: LC90
\mainALU|Add0|adder[0]|result_node|sout_node[7]~71\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pena_bus\,
	pexpout => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pexpout\);

-- Location: SEXP83
\mainALU|Add0|adder[0]|result_node|sout_node[7]~56\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[7]~56_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[7]~56_dataout\);

-- Location: SEXP81
\mainALU|Add0|adder[0]|result_node|sout_node[7]~57\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[0]|result_node|sout_node[7]~57_datain_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[7]~57_dataout\);

-- Location: LC91
\mainALU|Add0|adder[0]|result_node|sout_node[7]~58\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[0]|result_node|sout_node[7]~71_pexpout\,
	pterm0 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pterm5_bus\,
	pxor => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pxor_bus\,
	pclk => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pclk_bus\,
	papre => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_papre_bus\,
	paclr => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_paclr_bus\,
	pena => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_pena_bus\,
	dataout => \mainALU|Add0|adder[0]|result_node|sout_node[7]~58_dataout\);

-- Location: LC53
\mainALU|O[6]~125\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[6]~125_pterm0_bus\,
	pterm1 => \mainALU|O[6]~125_pterm1_bus\,
	pterm2 => \mainALU|O[6]~125_pterm2_bus\,
	pterm3 => \mainALU|O[6]~125_pterm3_bus\,
	pterm4 => \mainALU|O[6]~125_pterm4_bus\,
	pterm5 => \mainALU|O[6]~125_pterm5_bus\,
	pxor => \mainALU|O[6]~125_pxor_bus\,
	pclk => \mainALU|O[6]~125_pclk_bus\,
	papre => \mainALU|O[6]~125_papre_bus\,
	paclr => \mainALU|O[6]~125_paclr_bus\,
	pena => \mainALU|O[6]~125_pena_bus\,
	dataout => \mainALU|O[6]~125_dataout\);

-- Location: LC97
\mainALU|Add0|adder[1]|ps[0]~15\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|ps[0]~15_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|ps[0]~15_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|ps[0]~15_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|ps[0]~15_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|ps[0]~15_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|ps[0]~15_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|ps[0]~15_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|ps[0]~15_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|ps[0]~15_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|ps[0]~15_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|ps[0]~15_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|ps[0]~15_dataout\);

-- Location: LC26
\mainALU|O[8]~128bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[8]~128bal_pterm0_bus\,
	pterm1 => \mainALU|O[8]~128bal_pterm1_bus\,
	pterm2 => \mainALU|O[8]~128bal_pterm2_bus\,
	pterm3 => \mainALU|O[8]~128bal_pterm3_bus\,
	pterm4 => \mainALU|O[8]~128bal_pterm4_bus\,
	pterm5 => \mainALU|O[8]~128bal_pterm5_bus\,
	pxor => \mainALU|O[8]~128bal_pxor_bus\,
	pclk => \mainALU|O[8]~128bal_pclk_bus\,
	papre => \mainALU|O[8]~128bal_papre_bus\,
	paclr => \mainALU|O[8]~128bal_paclr_bus\,
	pena => \mainALU|O[8]~128bal_pena_bus\,
	dataout => \mainALU|O[8]~128bal_dataout\);

-- Location: SEXP58
\mainALU|Add0|adder[1]|_~9\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[1]|_~9_datain_bus\,
	dataout => \mainALU|Add0|adder[1]|_~9_dataout\);

-- Location: SEXP50
\mainALU|O[8]~133\ : max_sexp
PORT MAP (
	datain => \mainALU|O[8]~133_datain_bus\,
	dataout => \mainALU|O[8]~133_dataout\);

-- Location: SEXP53
\mainALU|O[8]~126\ : max_sexp
PORT MAP (
	datain => \mainALU|O[8]~126_datain_bus\,
	dataout => \mainALU|O[8]~126_dataout\);

-- Location: LC113
\mainALU|O[8]~127bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[8]~127bal_pterm0_bus\,
	pterm1 => \mainALU|O[8]~127bal_pterm1_bus\,
	pterm2 => \mainALU|O[8]~127bal_pterm2_bus\,
	pterm3 => \mainALU|O[8]~127bal_pterm3_bus\,
	pterm4 => \mainALU|O[8]~127bal_pterm4_bus\,
	pterm5 => \mainALU|O[8]~127bal_pterm5_bus\,
	pxor => \mainALU|O[8]~127bal_pxor_bus\,
	pclk => \mainALU|O[8]~127bal_pclk_bus\,
	papre => \mainALU|O[8]~127bal_papre_bus\,
	paclr => \mainALU|O[8]~127bal_paclr_bus\,
	pena => \mainALU|O[8]~127bal_pena_bus\,
	dataout => \mainALU|O[8]~127bal_dataout\);

-- Location: LC49
\mainALU|O[8]~138\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[8]~138_pterm0_bus\,
	pterm1 => \mainALU|O[8]~138_pterm1_bus\,
	pterm2 => \mainALU|O[8]~138_pterm2_bus\,
	pterm3 => \mainALU|O[8]~138_pterm3_bus\,
	pterm4 => \mainALU|O[8]~138_pterm4_bus\,
	pterm5 => \mainALU|O[8]~138_pterm5_bus\,
	pxor => \mainALU|O[8]~138_pxor_bus\,
	pclk => \mainALU|O[8]~138_pclk_bus\,
	papre => \mainALU|O[8]~138_papre_bus\,
	paclr => \mainALU|O[8]~138_paclr_bus\,
	pena => \mainALU|O[8]~138_pena_bus\,
	dataout => \mainALU|O[8]~138_dataout\);

-- Location: LC18
\mainALU|Add0|adder[1]|gcp[2]~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|gcp[2]~6_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|gcp[2]~6_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|gcp[2]~6_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|gcp[2]~6_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|gcp[2]~6_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|gcp[2]~6_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|gcp[2]~6_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|gcp[2]~6_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|gcp[2]~6_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|gcp[2]~6_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|gcp[2]~6_pena_bus\,
	pexpout => \mainALU|Add0|adder[1]|gcp[2]~6_pexpout\);

-- Location: LC19
\mainALU|Add0|adder[1]|gcp[2]~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[1]|gcp[2]~6_pexpout\,
	pterm0 => \mainALU|Add0|adder[1]|gcp[2]~5_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|gcp[2]~5_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|gcp[2]~5_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|gcp[2]~5_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|gcp[2]~5_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|gcp[2]~5_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|gcp[2]~5_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|gcp[2]~5_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|gcp[2]~5_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|gcp[2]~5_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|gcp[2]~5_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|gcp[2]~5_dataout\);

-- Location: LC22
\mainALU|Add0|adder[1]|ps[1]~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|ps[1]~14_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|ps[1]~14_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|ps[1]~14_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|ps[1]~14_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|ps[1]~14_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|ps[1]~14_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|ps[1]~14_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|ps[1]~14_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|ps[1]~14_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|ps[1]~14_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|ps[1]~14_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|ps[1]~14_dataout\);

-- Location: LC87
\mainALU|Add0|adder[1]|ps[2]~12sexpbal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|ps[2]~12sexpbal_dataout\);

-- Location: LC20
\mainALU|O[10]~231\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[10]~231_pterm0_bus\,
	pterm1 => \mainALU|O[10]~231_pterm1_bus\,
	pterm2 => \mainALU|O[10]~231_pterm2_bus\,
	pterm3 => \mainALU|O[10]~231_pterm3_bus\,
	pterm4 => \mainALU|O[10]~231_pterm4_bus\,
	pterm5 => \mainALU|O[10]~231_pterm5_bus\,
	pxor => \mainALU|O[10]~231_pxor_bus\,
	pclk => \mainALU|O[10]~231_pclk_bus\,
	papre => \mainALU|O[10]~231_papre_bus\,
	paclr => \mainALU|O[10]~231_paclr_bus\,
	pena => \mainALU|O[10]~231_pena_bus\,
	pexpout => \mainALU|O[10]~231_pexpout\);

-- Location: LC15
\mainALU|O[10]~141bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[10]~141bal_pterm0_bus\,
	pterm1 => \mainALU|O[10]~141bal_pterm1_bus\,
	pterm2 => \mainALU|O[10]~141bal_pterm2_bus\,
	pterm3 => \mainALU|O[10]~141bal_pterm3_bus\,
	pterm4 => \mainALU|O[10]~141bal_pterm4_bus\,
	pterm5 => \mainALU|O[10]~141bal_pterm5_bus\,
	pxor => \mainALU|O[10]~141bal_pxor_bus\,
	pclk => \mainALU|O[10]~141bal_pclk_bus\,
	papre => \mainALU|O[10]~141bal_papre_bus\,
	paclr => \mainALU|O[10]~141bal_paclr_bus\,
	pena => \mainALU|O[10]~141bal_pena_bus\,
	dataout => \mainALU|O[10]~141bal_dataout\);

-- Location: LC114
\mainALU|O[10]~142bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[10]~142bal_pterm0_bus\,
	pterm1 => \mainALU|O[10]~142bal_pterm1_bus\,
	pterm2 => \mainALU|O[10]~142bal_pterm2_bus\,
	pterm3 => \mainALU|O[10]~142bal_pterm3_bus\,
	pterm4 => \mainALU|O[10]~142bal_pterm4_bus\,
	pterm5 => \mainALU|O[10]~142bal_pterm5_bus\,
	pxor => \mainALU|O[10]~142bal_pxor_bus\,
	pclk => \mainALU|O[10]~142bal_pclk_bus\,
	papre => \mainALU|O[10]~142bal_papre_bus\,
	paclr => \mainALU|O[10]~142bal_paclr_bus\,
	pena => \mainALU|O[10]~142bal_pena_bus\,
	dataout => \mainALU|O[10]~142bal_dataout\);

-- Location: LC21
\mainALU|O[10]~149\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[10]~231_pexpout\,
	pterm0 => \mainALU|O[10]~149_pterm0_bus\,
	pterm1 => \mainALU|O[10]~149_pterm1_bus\,
	pterm2 => \mainALU|O[10]~149_pterm2_bus\,
	pterm3 => \mainALU|O[10]~149_pterm3_bus\,
	pterm4 => \mainALU|O[10]~149_pterm4_bus\,
	pterm5 => \mainALU|O[10]~149_pterm5_bus\,
	pxor => \mainALU|O[10]~149_pxor_bus\,
	pclk => \mainALU|O[10]~149_pclk_bus\,
	papre => \mainALU|O[10]~149_papre_bus\,
	paclr => \mainALU|O[10]~149_paclr_bus\,
	pena => \mainALU|O[10]~149_pena_bus\,
	dataout => \mainALU|O[10]~149_dataout\);

-- Location: LC67
\mainALU|O[10]~262\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[10]~262_pterm0_bus\,
	pterm1 => \mainALU|O[10]~262_pterm1_bus\,
	pterm2 => \mainALU|O[10]~262_pterm2_bus\,
	pterm3 => \mainALU|O[10]~262_pterm3_bus\,
	pterm4 => \mainALU|O[10]~262_pterm4_bus\,
	pterm5 => \mainALU|O[10]~262_pterm5_bus\,
	pxor => \mainALU|O[10]~262_pxor_bus\,
	pclk => \mainALU|O[10]~262_pclk_bus\,
	papre => \mainALU|O[10]~262_papre_bus\,
	paclr => \mainALU|O[10]~262_paclr_bus\,
	pena => \mainALU|O[10]~262_pena_bus\,
	dataout => \mainALU|O[10]~262_dataout\);

-- Location: SEXP18
\mainALU|Add0|adder[1]|result_node|sout_node[2]~31\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[1]|result_node|sout_node[2]~31_datain_bus\,
	dataout => \mainALU|Add0|adder[1]|result_node|sout_node[2]~31_dataout\);

-- Location: LC94
\mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|result_node|sout_node[2]~32bal_dataout\);

-- Location: LC17
\mainALU|Add0|adder[1]|result_node|sout_node[2]~33\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|result_node|sout_node[2]~33_dataout\);

-- Location: LC86
\mainALU|O[9]~155\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[9]~155_pterm0_bus\,
	pterm1 => \mainALU|O[9]~155_pterm1_bus\,
	pterm2 => \mainALU|O[9]~155_pterm2_bus\,
	pterm3 => \mainALU|O[9]~155_pterm3_bus\,
	pterm4 => \mainALU|O[9]~155_pterm4_bus\,
	pterm5 => \mainALU|O[9]~155_pterm5_bus\,
	pxor => \mainALU|O[9]~155_pxor_bus\,
	pclk => \mainALU|O[9]~155_pclk_bus\,
	papre => \mainALU|O[9]~155_papre_bus\,
	paclr => \mainALU|O[9]~155_paclr_bus\,
	pena => \mainALU|O[9]~155_pena_bus\,
	dataout => \mainALU|O[9]~155_dataout\);

-- Location: LC65
\mainALU|O[9]~263\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[9]~263_pterm0_bus\,
	pterm1 => \mainALU|O[9]~263_pterm1_bus\,
	pterm2 => \mainALU|O[9]~263_pterm2_bus\,
	pterm3 => \mainALU|O[9]~263_pterm3_bus\,
	pterm4 => \mainALU|O[9]~263_pterm4_bus\,
	pterm5 => \mainALU|O[9]~263_pterm5_bus\,
	pxor => \mainALU|O[9]~263_pxor_bus\,
	pclk => \mainALU|O[9]~263_pclk_bus\,
	papre => \mainALU|O[9]~263_papre_bus\,
	paclr => \mainALU|O[9]~263_paclr_bus\,
	pena => \mainALU|O[9]~263_pena_bus\,
	dataout => \mainALU|O[9]~263_dataout\);

-- Location: LC42
\mainALU|Add0|adder[1]|g4~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|g4~8_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|g4~8_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|g4~8_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|g4~8_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|g4~8_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|g4~8_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|g4~8_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|g4~8_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|g4~8_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|g4~8_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|g4~8_pena_bus\,
	pexpout => \mainALU|Add0|adder[1]|g4~8_pexpout\);

-- Location: LC43
\mainALU|Add0|adder[1]|g4~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[1]|g4~8_pexpout\,
	pterm0 => \mainALU|Add0|adder[1]|g4~14_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|g4~14_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|g4~14_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|g4~14_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|g4~14_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|g4~14_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|g4~14_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|g4~14_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|g4~14_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|g4~14_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|g4~14_pena_bus\,
	pexpout => \mainALU|Add0|adder[1]|g4~14_pexpout\);

-- Location: LC44
\mainALU|Add0|adder[1]|g4~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[1]|g4~14_pexpout\,
	pterm0 => \mainALU|Add0|adder[1]|g4~1_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|g4~1_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|g4~1_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|g4~1_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|g4~1_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|g4~1_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|g4~1_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|g4~1_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|g4~1_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|g4~1_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|g4~1_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|g4~1_dataout\);

-- Location: LC29
\mainALU|Add0|adder[1]|ps[3]~10sexpbal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|ps[3]~10sexpbal_dataout\);

-- Location: LC23
\mainALU|O[11]~237\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[11]~237_pterm0_bus\,
	pterm1 => \mainALU|O[11]~237_pterm1_bus\,
	pterm2 => \mainALU|O[11]~237_pterm2_bus\,
	pterm3 => \mainALU|O[11]~237_pterm3_bus\,
	pterm4 => \mainALU|O[11]~237_pterm4_bus\,
	pterm5 => \mainALU|O[11]~237_pterm5_bus\,
	pxor => \mainALU|O[11]~237_pxor_bus\,
	pclk => \mainALU|O[11]~237_pclk_bus\,
	papre => \mainALU|O[11]~237_papre_bus\,
	paclr => \mainALU|O[11]~237_paclr_bus\,
	pena => \mainALU|O[11]~237_pena_bus\,
	pexpout => \mainALU|O[11]~237_pexpout\);

-- Location: LC12
\mainALU|O[11]~156bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[11]~156bal_pterm0_bus\,
	pterm1 => \mainALU|O[11]~156bal_pterm1_bus\,
	pterm2 => \mainALU|O[11]~156bal_pterm2_bus\,
	pterm3 => \mainALU|O[11]~156bal_pterm3_bus\,
	pterm4 => \mainALU|O[11]~156bal_pterm4_bus\,
	pterm5 => \mainALU|O[11]~156bal_pterm5_bus\,
	pxor => \mainALU|O[11]~156bal_pxor_bus\,
	pclk => \mainALU|O[11]~156bal_pclk_bus\,
	papre => \mainALU|O[11]~156bal_papre_bus\,
	paclr => \mainALU|O[11]~156bal_paclr_bus\,
	pena => \mainALU|O[11]~156bal_pena_bus\,
	dataout => \mainALU|O[11]~156bal_dataout\);

-- Location: LC13
\mainALU|O[11]~157bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[11]~157bal_pterm0_bus\,
	pterm1 => \mainALU|O[11]~157bal_pterm1_bus\,
	pterm2 => \mainALU|O[11]~157bal_pterm2_bus\,
	pterm3 => \mainALU|O[11]~157bal_pterm3_bus\,
	pterm4 => \mainALU|O[11]~157bal_pterm4_bus\,
	pterm5 => \mainALU|O[11]~157bal_pterm5_bus\,
	pxor => \mainALU|O[11]~157bal_pxor_bus\,
	pclk => \mainALU|O[11]~157bal_pclk_bus\,
	papre => \mainALU|O[11]~157bal_papre_bus\,
	paclr => \mainALU|O[11]~157bal_paclr_bus\,
	pena => \mainALU|O[11]~157bal_pena_bus\,
	dataout => \mainALU|O[11]~157bal_dataout\);

-- Location: LC24
\mainALU|O[11]~164\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[11]~237_pexpout\,
	pterm0 => \mainALU|O[11]~164_pterm0_bus\,
	pterm1 => \mainALU|O[11]~164_pterm1_bus\,
	pterm2 => \mainALU|O[11]~164_pterm2_bus\,
	pterm3 => \mainALU|O[11]~164_pterm3_bus\,
	pterm4 => \mainALU|O[11]~164_pterm4_bus\,
	pterm5 => \mainALU|O[11]~164_pterm5_bus\,
	pxor => \mainALU|O[11]~164_pxor_bus\,
	pclk => \mainALU|O[11]~164_pclk_bus\,
	papre => \mainALU|O[11]~164_papre_bus\,
	paclr => \mainALU|O[11]~164_paclr_bus\,
	pena => \mainALU|O[11]~164_pena_bus\,
	dataout => \mainALU|O[11]~164_dataout\);

-- Location: LC69
\mainALU|O[11]~265\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[11]~265_pterm0_bus\,
	pterm1 => \mainALU|O[11]~265_pterm1_bus\,
	pterm2 => \mainALU|O[11]~265_pterm2_bus\,
	pterm3 => \mainALU|O[11]~265_pterm3_bus\,
	pterm4 => \mainALU|O[11]~265_pterm4_bus\,
	pterm5 => \mainALU|O[11]~265_pterm5_bus\,
	pxor => \mainALU|O[11]~265_pxor_bus\,
	pclk => \mainALU|O[11]~265_pclk_bus\,
	papre => \mainALU|O[11]~265_papre_bus\,
	paclr => \mainALU|O[11]~265_paclr_bus\,
	pena => \mainALU|O[11]~265_pena_bus\,
	dataout => \mainALU|O[11]~265_dataout\);

-- Location: SEXP12
\mainALU|O[12]~168\ : max_sexp
PORT MAP (
	datain => \mainALU|O[12]~168_datain_bus\,
	dataout => \mainALU|O[12]~168_dataout\);

-- Location: LC1
\mainALU|O[12]~243\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[12]~243_pterm0_bus\,
	pterm1 => \mainALU|O[12]~243_pterm1_bus\,
	pterm2 => \mainALU|O[12]~243_pterm2_bus\,
	pterm3 => \mainALU|O[12]~243_pterm3_bus\,
	pterm4 => \mainALU|O[12]~243_pterm4_bus\,
	pterm5 => \mainALU|O[12]~243_pterm5_bus\,
	pxor => \mainALU|O[12]~243_pxor_bus\,
	pclk => \mainALU|O[12]~243_pclk_bus\,
	papre => \mainALU|O[12]~243_papre_bus\,
	paclr => \mainALU|O[12]~243_paclr_bus\,
	pena => \mainALU|O[12]~243_pena_bus\,
	pexpout => \mainALU|O[12]~243_pexpout\);

-- Location: SEXP11
\mainALU|O[12]~169\ : max_sexp
PORT MAP (
	datain => \mainALU|O[12]~169_datain_bus\,
	dataout => \mainALU|O[12]~169_dataout\);

-- Location: LC2
\mainALU|O[12]~249\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[12]~243_pexpout\,
	pterm0 => \mainALU|O[12]~249_pterm0_bus\,
	pterm1 => \mainALU|O[12]~249_pterm1_bus\,
	pterm2 => \mainALU|O[12]~249_pterm2_bus\,
	pterm3 => \mainALU|O[12]~249_pterm3_bus\,
	pterm4 => \mainALU|O[12]~249_pterm4_bus\,
	pterm5 => \mainALU|O[12]~249_pterm5_bus\,
	pxor => \mainALU|O[12]~249_pxor_bus\,
	pclk => \mainALU|O[12]~249_pclk_bus\,
	papre => \mainALU|O[12]~249_papre_bus\,
	paclr => \mainALU|O[12]~249_paclr_bus\,
	pena => \mainALU|O[12]~249_pena_bus\,
	pexpout => \mainALU|O[12]~249_pexpout\);

-- Location: LC25
\mainALU|O[12]~167bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[12]~167bal_pterm0_bus\,
	pterm1 => \mainALU|O[12]~167bal_pterm1_bus\,
	pterm2 => \mainALU|O[12]~167bal_pterm2_bus\,
	pterm3 => \mainALU|O[12]~167bal_pterm3_bus\,
	pterm4 => \mainALU|O[12]~167bal_pterm4_bus\,
	pterm5 => \mainALU|O[12]~167bal_pterm5_bus\,
	pxor => \mainALU|O[12]~167bal_pxor_bus\,
	pclk => \mainALU|O[12]~167bal_pclk_bus\,
	papre => \mainALU|O[12]~167bal_papre_bus\,
	paclr => \mainALU|O[12]~167bal_paclr_bus\,
	pena => \mainALU|O[12]~167bal_pena_bus\,
	dataout => \mainALU|O[12]~167bal_dataout\);

-- Location: LC3
\mainALU|O[12]~177\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[12]~249_pexpout\,
	pterm0 => \mainALU|O[12]~177_pterm0_bus\,
	pterm1 => \mainALU|O[12]~177_pterm1_bus\,
	pterm2 => \mainALU|O[12]~177_pterm2_bus\,
	pterm3 => \mainALU|O[12]~177_pterm3_bus\,
	pterm4 => \mainALU|O[12]~177_pterm4_bus\,
	pterm5 => \mainALU|O[12]~177_pterm5_bus\,
	pxor => \mainALU|O[12]~177_pxor_bus\,
	pclk => \mainALU|O[12]~177_pclk_bus\,
	papre => \mainALU|O[12]~177_papre_bus\,
	paclr => \mainALU|O[12]~177_paclr_bus\,
	pena => \mainALU|O[12]~177_pena_bus\,
	dataout => \mainALU|O[12]~177_dataout\);

-- Location: LC72
\mainALU|O[12]~266\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[12]~266_pterm0_bus\,
	pterm1 => \mainALU|O[12]~266_pterm1_bus\,
	pterm2 => \mainALU|O[12]~266_pterm2_bus\,
	pterm3 => \mainALU|O[12]~266_pterm3_bus\,
	pterm4 => \mainALU|O[12]~266_pterm4_bus\,
	pterm5 => \mainALU|O[12]~266_pterm5_bus\,
	pxor => \mainALU|O[12]~266_pxor_bus\,
	pclk => \mainALU|O[12]~266_pclk_bus\,
	papre => \mainALU|O[12]~266_papre_bus\,
	paclr => \mainALU|O[12]~266_paclr_bus\,
	pena => \mainALU|O[12]~266_pena_bus\,
	dataout => \mainALU|O[12]~266_dataout\);

-- Location: LC7
\mainALU|Add0|adder[1]|g2cp[1]~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|g2cp[1]~3_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|g2cp[1]~3_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|g2cp[1]~3_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|g2cp[1]~3_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|g2cp[1]~3_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|g2cp[1]~3_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|g2cp[1]~3_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|g2cp[1]~3_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|g2cp[1]~3_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|g2cp[1]~3_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|g2cp[1]~3_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|g2cp[1]~3_dataout\);

-- Location: SEXP15
\mainALU|Add0|adder[1]|result_node|sout_node[6]~49\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[1]|result_node|sout_node[6]~49_datain_bus\,
	dataout => \mainALU|Add0|adder[1]|result_node|sout_node[6]~49_dataout\);

-- Location: SEXP13
\mainALU|Add0|adder[1]|result_node|sout_node[6]~50\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[1]|result_node|sout_node[6]~50_datain_bus\,
	dataout => \mainALU|Add0|adder[1]|result_node|sout_node[6]~50_dataout\);

-- Location: SEXP6
\mainALU|Add0|adder[1]|ps[5]~6sexp\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[1]|ps[5]~6sexp_datain_bus\,
	dataout => \mainALU|Add0|adder[1]|ps[5]~6sexp_dataout\);

-- Location: LC9
\mainALU|Add0|adder[1]|result_node|sout_node[6]~51\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|result_node|sout_node[6]~51_dataout\);

-- Location: LC6
\mainALU|O[13]~182\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[13]~182_pterm0_bus\,
	pterm1 => \mainALU|O[13]~182_pterm1_bus\,
	pterm2 => \mainALU|O[13]~182_pterm2_bus\,
	pterm3 => \mainALU|O[13]~182_pterm3_bus\,
	pterm4 => \mainALU|O[13]~182_pterm4_bus\,
	pterm5 => \mainALU|O[13]~182_pterm5_bus\,
	pxor => \mainALU|O[13]~182_pxor_bus\,
	pclk => \mainALU|O[13]~182_pclk_bus\,
	papre => \mainALU|O[13]~182_papre_bus\,
	paclr => \mainALU|O[13]~182_paclr_bus\,
	pena => \mainALU|O[13]~182_pena_bus\,
	dataout => \mainALU|O[13]~182_dataout\);

-- Location: LC73
\mainALU|O[13]~264\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[13]~264_pterm0_bus\,
	pterm1 => \mainALU|O[13]~264_pterm1_bus\,
	pterm2 => \mainALU|O[13]~264_pterm2_bus\,
	pterm3 => \mainALU|O[13]~264_pterm3_bus\,
	pterm4 => \mainALU|O[13]~264_pterm4_bus\,
	pterm5 => \mainALU|O[13]~264_pterm5_bus\,
	pxor => \mainALU|O[13]~264_pxor_bus\,
	pclk => \mainALU|O[13]~264_pclk_bus\,
	papre => \mainALU|O[13]~264_papre_bus\,
	paclr => \mainALU|O[13]~264_paclr_bus\,
	pena => \mainALU|O[13]~264_pena_bus\,
	dataout => \mainALU|O[13]~264_dataout\);

-- Location: LC33
\mainALU|Add0|adder[1]|g2cp[2]~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|g2cp[2]~10_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|g2cp[2]~10_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|g2cp[2]~10_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|g2cp[2]~10_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|g2cp[2]~10_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|g2cp[2]~10_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|g2cp[2]~10_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|g2cp[2]~10_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|g2cp[2]~10_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|g2cp[2]~10_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|g2cp[2]~10_pena_bus\,
	pexpout => \mainALU|Add0|adder[1]|g2cp[2]~10_pexpout\);

-- Location: LC34
\mainALU|Add0|adder[1]|g2cp[2]~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[1]|g2cp[2]~10_pexpout\,
	pterm0 => \mainALU|Add0|adder[1]|g2cp[2]~9_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|g2cp[2]~9_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|g2cp[2]~9_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|g2cp[2]~9_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|g2cp[2]~9_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|g2cp[2]~9_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|g2cp[2]~9_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|g2cp[2]~9_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|g2cp[2]~9_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|g2cp[2]~9_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|g2cp[2]~9_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|g2cp[2]~9_dataout\);

-- Location: SEXP7
\mainALU|Add0|adder[1]|ps[6]~4sexp\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[1]|ps[6]~4sexp_datain_bus\,
	dataout => \mainALU|Add0|adder[1]|ps[6]~4sexp_dataout\);

-- Location: LC28
\mainALU|Add0|adder[1]|ps[2]~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|ps[2]~12_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|ps[2]~12_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|ps[2]~12_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|ps[2]~12_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|ps[2]~12_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|ps[2]~12_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|ps[2]~12_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|ps[2]~12_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|ps[2]~12_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|ps[2]~12_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|ps[2]~12_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|ps[2]~12_dataout\);

-- Location: LC14
\mainALU|O[14]~187bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[14]~187bal_pterm0_bus\,
	pterm1 => \mainALU|O[14]~187bal_pterm1_bus\,
	pterm2 => \mainALU|O[14]~187bal_pterm2_bus\,
	pterm3 => \mainALU|O[14]~187bal_pterm3_bus\,
	pterm4 => \mainALU|O[14]~187bal_pterm4_bus\,
	pterm5 => \mainALU|O[14]~187bal_pterm5_bus\,
	pxor => \mainALU|O[14]~187bal_pxor_bus\,
	pclk => \mainALU|O[14]~187bal_pclk_bus\,
	papre => \mainALU|O[14]~187bal_papre_bus\,
	paclr => \mainALU|O[14]~187bal_paclr_bus\,
	pena => \mainALU|O[14]~187bal_pena_bus\,
	dataout => \mainALU|O[14]~187bal_dataout\);

-- Location: SEXP10
\mainALU|O[14]~184\ : max_sexp
PORT MAP (
	datain => \mainALU|O[14]~184_datain_bus\,
	dataout => \mainALU|O[14]~184_dataout\);

-- Location: LC4
\mainALU|O[14]~255\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[14]~255_pterm0_bus\,
	pterm1 => \mainALU|O[14]~255_pterm1_bus\,
	pterm2 => \mainALU|O[14]~255_pterm2_bus\,
	pterm3 => \mainALU|O[14]~255_pterm3_bus\,
	pterm4 => \mainALU|O[14]~255_pterm4_bus\,
	pterm5 => \mainALU|O[14]~255_pterm5_bus\,
	pxor => \mainALU|O[14]~255_pxor_bus\,
	pclk => \mainALU|O[14]~255_pclk_bus\,
	papre => \mainALU|O[14]~255_papre_bus\,
	paclr => \mainALU|O[14]~255_paclr_bus\,
	pena => \mainALU|O[14]~255_pena_bus\,
	pexpout => \mainALU|O[14]~255_pexpout\);

-- Location: SEXP8
\mainALU|O[14]~185\ : max_sexp
PORT MAP (
	datain => \mainALU|O[14]~185_datain_bus\,
	dataout => \mainALU|O[14]~185_dataout\);

-- Location: LC5
\mainALU|O[14]~196\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|O[14]~255_pexpout\,
	pterm0 => \mainALU|O[14]~196_pterm0_bus\,
	pterm1 => \mainALU|O[14]~196_pterm1_bus\,
	pterm2 => \mainALU|O[14]~196_pterm2_bus\,
	pterm3 => \mainALU|O[14]~196_pterm3_bus\,
	pterm4 => \mainALU|O[14]~196_pterm4_bus\,
	pterm5 => \mainALU|O[14]~196_pterm5_bus\,
	pxor => \mainALU|O[14]~196_pxor_bus\,
	pclk => \mainALU|O[14]~196_pclk_bus\,
	papre => \mainALU|O[14]~196_papre_bus\,
	paclr => \mainALU|O[14]~196_paclr_bus\,
	pena => \mainALU|O[14]~196_pena_bus\,
	dataout => \mainALU|O[14]~196_dataout\);

-- Location: LC75
\mainALU|O[14]~267\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[14]~267_pterm0_bus\,
	pterm1 => \mainALU|O[14]~267_pterm1_bus\,
	pterm2 => \mainALU|O[14]~267_pterm2_bus\,
	pterm3 => \mainALU|O[14]~267_pterm3_bus\,
	pterm4 => \mainALU|O[14]~267_pterm4_bus\,
	pterm5 => \mainALU|O[14]~267_pterm5_bus\,
	pxor => \mainALU|O[14]~267_pxor_bus\,
	pclk => \mainALU|O[14]~267_pclk_bus\,
	papre => \mainALU|O[14]~267_papre_bus\,
	paclr => \mainALU|O[14]~267_paclr_bus\,
	pena => \mainALU|O[14]~267_pena_bus\,
	dataout => \mainALU|O[14]~267_dataout\);

-- Location: LC46
\mainALU|Add0|adder[1]|genr_node[3]~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|genr_node[3]~7_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|genr_node[3]~7_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|genr_node[3]~7_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|genr_node[3]~7_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|genr_node[3]~7_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|genr_node[3]~7_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|genr_node[3]~7_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|genr_node[3]~7_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|genr_node[3]~7_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|genr_node[3]~7_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|genr_node[3]~7_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|genr_node[3]~7_dataout\);

-- Location: LC45
\mainALU|Add0|adder[1]|genr_node[2]~11\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|genr_node[2]~11_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|genr_node[2]~11_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|genr_node[2]~11_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|genr_node[2]~11_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|genr_node[2]~11_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|genr_node[2]~11_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|genr_node[2]~11_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|genr_node[2]~11_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|genr_node[2]~11_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|genr_node[2]~11_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|genr_node[2]~11_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|genr_node[2]~11_dataout\);

-- Location: LC11
\mainALU|Add0|adder[1]|prop_node[3]~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|prop_node[3]~8_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|prop_node[3]~8_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|prop_node[3]~8_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|prop_node[3]~8_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|prop_node[3]~8_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|prop_node[3]~8_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|prop_node[3]~8_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|prop_node[3]~8_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|prop_node[3]~8_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|prop_node[3]~8_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|prop_node[3]~8_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|prop_node[3]~8_dataout\);

-- Location: LC120
\mainALU|Add0|adder[2]|result_node|sout_node[0]~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pterm5_bus\,
	pxor => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pxor_bus\,
	pclk => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pclk_bus\,
	papre => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_papre_bus\,
	paclr => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_paclr_bus\,
	pena => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pena_bus\,
	pexpout => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pexpout\);

-- Location: LC40
\mainALU|Add0|adder[1]|genr_node[1]~15\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|genr_node[1]~15_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|genr_node[1]~15_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|genr_node[1]~15_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|genr_node[1]~15_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|genr_node[1]~15_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|genr_node[1]~15_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|genr_node[1]~15_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|genr_node[1]~15_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|genr_node[1]~15_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|genr_node[1]~15_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|genr_node[1]~15_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|genr_node[1]~15_dataout\);

-- Location: LC41
\mainALU|Add0|adder[1]|prop_node[2]~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|prop_node[2]~13_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|prop_node[2]~13_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|prop_node[2]~13_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|prop_node[2]~13_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|prop_node[2]~13_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|prop_node[2]~13_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|prop_node[2]~13_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|prop_node[2]~13_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|prop_node[2]~13_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|prop_node[2]~13_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|prop_node[2]~13_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|prop_node[2]~13_dataout\);

-- Location: LC30
\mainALU|Add0|adder[1]|genr_node[0]~19\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|genr_node[0]~19_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|genr_node[0]~19_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|genr_node[0]~19_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|genr_node[0]~19_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|genr_node[0]~19_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|genr_node[0]~19_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|genr_node[0]~19_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|genr_node[0]~19_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|genr_node[0]~19_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|genr_node[0]~19_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|genr_node[0]~19_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|genr_node[0]~19_dataout\);

-- Location: LC47
\mainALU|Add0|adder[1]|prop_node[1]~18\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|prop_node[1]~18_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|prop_node[1]~18_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|prop_node[1]~18_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|prop_node[1]~18_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|prop_node[1]~18_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|prop_node[1]~18_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|prop_node[1]~18_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|prop_node[1]~18_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|prop_node[1]~18_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|prop_node[1]~18_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|prop_node[1]~18_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|prop_node[1]~18_dataout\);

-- Location: LC48
\mainALU|Add0|adder[1]|prop_node[0]~23\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|Add0|adder[1]|prop_node[0]~23_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[1]|prop_node[0]~23_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[1]|prop_node[0]~23_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[1]|prop_node[0]~23_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[1]|prop_node[0]~23_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[1]|prop_node[0]~23_pterm5_bus\,
	pxor => \mainALU|Add0|adder[1]|prop_node[0]~23_pxor_bus\,
	pclk => \mainALU|Add0|adder[1]|prop_node[0]~23_pclk_bus\,
	papre => \mainALU|Add0|adder[1]|prop_node[0]~23_papre_bus\,
	paclr => \mainALU|Add0|adder[1]|prop_node[0]~23_paclr_bus\,
	pena => \mainALU|Add0|adder[1]|prop_node[0]~23_pena_bus\,
	dataout => \mainALU|Add0|adder[1]|prop_node[0]~23_dataout\);

-- Location: SEXP114
\mainALU|Add0|adder[2]|result_node|sout_node[0]~0\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[2]|result_node|sout_node[0]~0_datain_bus\,
	dataout => \mainALU|Add0|adder[2]|result_node|sout_node[0]~0_dataout\);

-- Location: SEXP113
\mainALU|Add0|adder[2]|result_node|sout_node[0]~1\ : max_sexp
PORT MAP (
	datain => \mainALU|Add0|adder[2]|result_node|sout_node[0]~1_datain_bus\,
	dataout => \mainALU|Add0|adder[2]|result_node|sout_node[0]~1_dataout\);

-- Location: LC121
\mainALU|Add0|adder[2]|result_node|sout_node[0]~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|Add0|adder[2]|result_node|sout_node[0]~9_pexpout\,
	pterm0 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm0_bus\,
	pterm1 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm1_bus\,
	pterm2 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm2_bus\,
	pterm3 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm3_bus\,
	pterm4 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm4_bus\,
	pterm5 => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pterm5_bus\,
	pxor => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pxor_bus\,
	pclk => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pclk_bus\,
	papre => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_papre_bus\,
	paclr => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_paclr_bus\,
	pena => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_pena_bus\,
	dataout => \mainALU|Add0|adder[2]|result_node|sout_node[0]~2_dataout\);

-- Location: LC85
\mainALU|O[15]~202\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[15]~202_pterm0_bus\,
	pterm1 => \mainALU|O[15]~202_pterm1_bus\,
	pterm2 => \mainALU|O[15]~202_pterm2_bus\,
	pterm3 => \mainALU|O[15]~202_pterm3_bus\,
	pterm4 => \mainALU|O[15]~202_pterm4_bus\,
	pterm5 => \mainALU|O[15]~202_pterm5_bus\,
	pxor => \mainALU|O[15]~202_pxor_bus\,
	pclk => \mainALU|O[15]~202_pclk_bus\,
	papre => \mainALU|O[15]~202_papre_bus\,
	paclr => \mainALU|O[15]~202_paclr_bus\,
	pena => \mainALU|O[15]~202_pena_bus\,
	dataout => \mainALU|O[15]~202_dataout\);

-- Location: LC80
\mainALU|O[15]~261\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|O[15]~261_pterm0_bus\,
	pterm1 => \mainALU|O[15]~261_pterm1_bus\,
	pterm2 => \mainALU|O[15]~261_pterm2_bus\,
	pterm3 => \mainALU|O[15]~261_pterm3_bus\,
	pterm4 => \mainALU|O[15]~261_pterm4_bus\,
	pterm5 => \mainALU|O[15]~261_pterm5_bus\,
	pxor => \mainALU|O[15]~261_pxor_bus\,
	pclk => \mainALU|O[15]~261_pclk_bus\,
	papre => \mainALU|O[15]~261_papre_bus\,
	paclr => \mainALU|O[15]~261_paclr_bus\,
	pena => \mainALU|O[15]~261_pena_bus\,
	dataout => \mainALU|O[15]~261_dataout\);

-- Location: LC36
\mainALU|CarryOut~17bal\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|CarryOut~17bal_pterm0_bus\,
	pterm1 => \mainALU|CarryOut~17bal_pterm1_bus\,
	pterm2 => \mainALU|CarryOut~17bal_pterm2_bus\,
	pterm3 => \mainALU|CarryOut~17bal_pterm3_bus\,
	pterm4 => \mainALU|CarryOut~17bal_pterm4_bus\,
	pterm5 => \mainALU|CarryOut~17bal_pterm5_bus\,
	pxor => \mainALU|CarryOut~17bal_pxor_bus\,
	pclk => \mainALU|CarryOut~17bal_pclk_bus\,
	papre => \mainALU|CarryOut~17bal_papre_bus\,
	paclr => \mainALU|CarryOut~17bal_paclr_bus\,
	pena => \mainALU|CarryOut~17bal_pena_bus\,
	dataout => \mainALU|CarryOut~17bal_dataout\);

-- Location: LC103
\mainALU|CarryOut~25\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|CarryOut~25_pterm0_bus\,
	pterm1 => \mainALU|CarryOut~25_pterm1_bus\,
	pterm2 => \mainALU|CarryOut~25_pterm2_bus\,
	pterm3 => \mainALU|CarryOut~25_pterm3_bus\,
	pterm4 => \mainALU|CarryOut~25_pterm4_bus\,
	pterm5 => \mainALU|CarryOut~25_pterm5_bus\,
	pxor => \mainALU|CarryOut~25_pxor_bus\,
	pclk => \mainALU|CarryOut~25_pclk_bus\,
	papre => \mainALU|CarryOut~25_papre_bus\,
	paclr => \mainALU|CarryOut~25_paclr_bus\,
	pena => \mainALU|CarryOut~25_pena_bus\,
	pexpout => \mainALU|CarryOut~25_pexpout\);

-- Location: LC104
\mainALU|CarryOut~30\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|CarryOut~25_pexpout\,
	pterm0 => \mainALU|CarryOut~30_pterm0_bus\,
	pterm1 => \mainALU|CarryOut~30_pterm1_bus\,
	pterm2 => \mainALU|CarryOut~30_pterm2_bus\,
	pterm3 => \mainALU|CarryOut~30_pterm3_bus\,
	pterm4 => \mainALU|CarryOut~30_pterm4_bus\,
	pterm5 => \mainALU|CarryOut~30_pterm5_bus\,
	pxor => \mainALU|CarryOut~30_pxor_bus\,
	pclk => \mainALU|CarryOut~30_pclk_bus\,
	papre => \mainALU|CarryOut~30_papre_bus\,
	paclr => \mainALU|CarryOut~30_paclr_bus\,
	pena => \mainALU|CarryOut~30_pena_bus\,
	pexpout => \mainALU|CarryOut~30_pexpout\);

-- Location: LC105
\mainALU|CarryOut~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|CarryOut~30_pexpout\,
	pterm0 => \mainALU|CarryOut~10_pterm0_bus\,
	pterm1 => \mainALU|CarryOut~10_pterm1_bus\,
	pterm2 => \mainALU|CarryOut~10_pterm2_bus\,
	pterm3 => \mainALU|CarryOut~10_pterm3_bus\,
	pterm4 => \mainALU|CarryOut~10_pterm4_bus\,
	pterm5 => \mainALU|CarryOut~10_pterm5_bus\,
	pxor => \mainALU|CarryOut~10_pxor_bus\,
	pclk => \mainALU|CarryOut~10_pclk_bus\,
	papre => \mainALU|CarryOut~10_papre_bus\,
	paclr => \mainALU|CarryOut~10_paclr_bus\,
	pena => \mainALU|CarryOut~10_pena_bus\,
	dataout => \mainALU|CarryOut~10_dataout\);

-- Location: LC37
\mainALU|CarryOut~36\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \mainALU|CarryOut~36_pterm0_bus\,
	pterm1 => \mainALU|CarryOut~36_pterm1_bus\,
	pterm2 => \mainALU|CarryOut~36_pterm2_bus\,
	pterm3 => \mainALU|CarryOut~36_pterm3_bus\,
	pterm4 => \mainALU|CarryOut~36_pterm4_bus\,
	pterm5 => \mainALU|CarryOut~36_pterm5_bus\,
	pxor => \mainALU|CarryOut~36_pxor_bus\,
	pclk => \mainALU|CarryOut~36_pclk_bus\,
	papre => \mainALU|CarryOut~36_papre_bus\,
	paclr => \mainALU|CarryOut~36_paclr_bus\,
	pena => \mainALU|CarryOut~36_pena_bus\,
	pexpout => \mainALU|CarryOut~36_pexpout\);

-- Location: LC38
\mainALU|CarryOut~41\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|CarryOut~36_pexpout\,
	pterm0 => \mainALU|CarryOut~41_pterm0_bus\,
	pterm1 => \mainALU|CarryOut~41_pterm1_bus\,
	pterm2 => \mainALU|CarryOut~41_pterm2_bus\,
	pterm3 => \mainALU|CarryOut~41_pterm3_bus\,
	pterm4 => \mainALU|CarryOut~41_pterm4_bus\,
	pterm5 => \mainALU|CarryOut~41_pterm5_bus\,
	pxor => \mainALU|CarryOut~41_pxor_bus\,
	pclk => \mainALU|CarryOut~41_pclk_bus\,
	papre => \mainALU|CarryOut~41_papre_bus\,
	paclr => \mainALU|CarryOut~41_paclr_bus\,
	pena => \mainALU|CarryOut~41_pena_bus\,
	pexpout => \mainALU|CarryOut~41_pexpout\);

-- Location: LC39
\mainALU|CarryOut~16\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \mainALU|CarryOut~41_pexpout\,
	pterm0 => \mainALU|CarryOut~16_pterm0_bus\,
	pterm1 => \mainALU|CarryOut~16_pterm1_bus\,
	pterm2 => \mainALU|CarryOut~16_pterm2_bus\,
	pterm3 => \mainALU|CarryOut~16_pterm3_bus\,
	pterm4 => \mainALU|CarryOut~16_pterm4_bus\,
	pterm5 => \mainALU|CarryOut~16_pterm5_bus\,
	pxor => \mainALU|CarryOut~16_pxor_bus\,
	pclk => \mainALU|CarryOut~16_pclk_bus\,
	papre => \mainALU|CarryOut~16_papre_bus\,
	paclr => \mainALU|CarryOut~16_paclr_bus\,
	pena => \mainALU|CarryOut~16_pena_bus\,
	dataout => \mainALU|CarryOut~16_dataout\);

-- Location: LC99
\CarryFlagFlop|Q~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CarryFlagFlop|Q~reg0_pterm0_bus\,
	pterm1 => \CarryFlagFlop|Q~reg0_pterm1_bus\,
	pterm2 => \CarryFlagFlop|Q~reg0_pterm2_bus\,
	pterm3 => \CarryFlagFlop|Q~reg0_pterm3_bus\,
	pterm4 => \CarryFlagFlop|Q~reg0_pterm4_bus\,
	pterm5 => \CarryFlagFlop|Q~reg0_pterm5_bus\,
	pxor => \CarryFlagFlop|Q~reg0_pxor_bus\,
	pclk => \CarryFlagFlop|Q~reg0_pclk_bus\,
	papre => \CarryFlagFlop|Q~reg0_papre_bus\,
	paclr => \CarryFlagFlop|Q~reg0_paclr_bus\,
	pena => \CarryFlagFlop|Q~reg0_pena_bus\,
	dataout => \CarryFlagFlop|Q~reg0_dataout\);

-- Location: PIN_51
\I2CData~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I2CData);

-- Location: PIN_54
\I2CCLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_I2CCLK);

-- Location: PIN_65
\EqualFlag~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \ABFlagFlop|Q~reg0_dataout\,
	oe => \CarryFlagFlop|Q~en_dataout\,
	padio => ww_EqualFlag);

-- Location: PIN_74
\CLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \interntalCLK~7_dataout\,
	oe => VCC,
	padio => ww_CLK);

-- Location: PIN_31
\MainBus[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[0]~66_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(0));

-- Location: PIN_33
\MainBus[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[1]~68_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(1));

-- Location: PIN_34
\MainBus[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[2]~85_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(2));

-- Location: PIN_35
\MainBus[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[3]~103_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(3));

-- Location: PIN_36
\MainBus[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[4]~110_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(4));

-- Location: PIN_40
\MainBus[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[7]~116_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(7));

-- Location: PIN_37
\MainBus[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[5]~121_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(5));

-- Location: PIN_39
\MainBus[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[6]~125_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(6));

-- Location: PIN_41
\MainBus[8]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[8]~138_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(8));

-- Location: PIN_45
\MainBus[10]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[10]~262_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(10));

-- Location: PIN_44
\MainBus[9]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[9]~263_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(9));

-- Location: PIN_46
\MainBus[11]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[11]~265_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(11));

-- Location: PIN_48
\MainBus[12]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[12]~266_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(12));

-- Location: PIN_49
\MainBus[13]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[13]~264_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(13));

-- Location: PIN_50
\MainBus[14]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[14]~267_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(14));

-- Location: PIN_52
\MainBus[15]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \mainALU|O[15]~261_dataout\,
	oe => \ALU_Regs~0_dataout\,
	padio => ww_MainBus(15));

-- Location: PIN_64
\OverflowFlag~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \CarryFlagFlop|Q~reg0_dataout\,
	oe => \CarryFlagFlop|Q~en_dataout\,
	padio => ww_OverflowFlag);
END structure;



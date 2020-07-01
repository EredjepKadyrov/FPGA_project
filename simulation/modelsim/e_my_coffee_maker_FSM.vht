-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/13/2018 18:37:22"
                                                            
-- Vhdl Test Bench template for design  :  e_my_coffee_maker_FSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY e_my_coffee_maker_FSM_vhd_tst IS
END e_my_coffee_maker_FSM_vhd_tst;

ARCHITECTURE e_my_coffee_maker_FSM_arch OF e_my_coffee_maker_FSM_vhd_tst IS

-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC := '0';
SIGNAL HEX0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX3 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111";
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 9);

COMPONENT e_my_coffee_maker_FSM
	generic(	n3: positive := 28; k3: positive := 150000000;
				n6: positive := 29; k6: positive := 300000000);
	PORT (
		CLOCK_50 : IN STD_LOGIC;
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6);
		KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 9)
	);
END COMPONENT;

BEGIN
	i1 : e_my_coffee_maker_FSM
	generic map (n3 => 2, k3 => 4, n6 => 3, k6 => 8)
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);
	
	CLOCK_50 <= not CLOCK_50 after 10 ns;
	
	p_stimulus: process
	
		procedure P_sync_app(constant c_loop: integer) is
			variable v_count: integer := 0;
		begin
			loop_cnt: while v_count <= c_loop loop
				wait until rising_edge(CLOCK_50);
					v_count := v_count + 1;
			end loop loop_cnt;
		end procedure P_sync_app;

		procedure P_stable is
		begin
			SW(9)	<= '0';
			SW <= (others => '0');
			wait for 30 ns;
			SW(9)	<= '1';
		end procedure P_stable;

		procedure P_coffee is
		begin
			KEY(0) <= '0';
			wait for 30 ns;
			KEY(0) <= '1';
		end procedure P_coffee;
	
		procedure P_cappu is
		begin
			KEY(1) <= '0';
			wait for 30 ns;
			KEY(1) <= '1';
		end procedure P_cappu;

		procedure P_espresso is
		begin
			KEY(2) <= '0';
			wait for 30 ns;
			KEY(2) <= '1';
		end procedure P_espresso;	

		procedure P_hot_choc is
		begin
			KEY(3) <= '0';
			wait for 30 ns;
			KEY(3) <= '1';
		end procedure P_hot_choc;		
	
	begin
	
		P_stable;
		P_sync_app(5);
	   P_coffee;
		P_sync_app(100);
	   P_cappu;
		P_sync_app(100);	   
		P_espresso;
		P_sync_app(100);	   
		P_hot_choc;
		P_sync_app(100);	
	
		assert false report "--- END OF SIMULATION ---" severity failure;
	
	end process p_stimulus;
	
	
--init : PROCESS                                               
---- variable declarations                                     
--BEGIN                                                        
--        -- code that executes only once                      
--WAIT;                                                       
--END PROCESS init;                                           
--always : PROCESS                                              
---- optional sensitivity list                                  
---- (        )                                                 
---- variable declarations                                      
--BEGIN                                                         
--        -- code executes for every event on sensitivity list  
--WAIT;                                                        
--END PROCESS always;                 

                         
END e_my_coffee_maker_FSM_arch;

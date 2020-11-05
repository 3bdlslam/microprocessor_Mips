----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:04:07 04/17/2019 
-- Design Name: 
-- Module Name:    zero_register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity zero_register is
port (  zero_flag : in std_logic ;
			clk 		: in std_logic;
			zero_load : in std_logic;
			zero_reg :out std_logic);
end zero_register;

architecture Behavioral of zero_register is

begin

process(clk)
begin
	if(clk' event and clk = '0') then
		if (zero_load = '1') then
			zero_reg <= zero_flag;
		end if;
	end if;
end process;
end Behavioral;


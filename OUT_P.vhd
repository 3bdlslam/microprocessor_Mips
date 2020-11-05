----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:06:27 04/17/2019 
-- Design Name: 
-- Module Name:    OUT_P - Behavioral 
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

entity OUT_P is
port ( data_out1 : in std_logic_vector (15 downto 0);
			clk: in std_logic;
			out_select: in std_logic;
			out_port : out std_logic_vector (15 downto 0));
end OUT_P;

architecture Behavioral of OUT_P is

begin

process(clk)
begin
	if(clk' event and clk = '0')then 
		if(out_select = '1') then
			out_port <= data_out1;	end if;
		end if;
end process;

end Behavioral;


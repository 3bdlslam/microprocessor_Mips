----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:17 04/17/2019 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
port ( PC_entry :in std_logic_vector ( 31 downto 0);
		clk,reset :in std_logic;
		PC_out    :out std_logic_vector (31 downto 0));
end PC;

architecture Behavioral of PC is

begin
process(clk,reset)
begin
	if(reset = '1') then
			PC_out <= X"00000000";
	else
		if(clk' event and clk = '0') then
			PC_out <= PC_entry;
		end if;
	end if;
end process;

end Behavioral;


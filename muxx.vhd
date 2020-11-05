library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity muxx is
port( 		data0 : in  STD_LOGIC_VECTOR (4 downto 0);
           data1 : in  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (4 downto 0));
end muxx;

architecture Behavioral of muxx is

begin
with sel select
data_out <= data0 when '0',
			   data1 when '1',
				(others => '0') when others;

end Behavioral;


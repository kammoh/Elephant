--------------------------------------------------------------------------------
--! @file       register_elephant.vhd
--! @brief      
--! @author     Richard Haeussler
--! @copyright  Copyright (c) 2020 Cryptographic Engineering Research Group
--!             ECE Department, George Mason University Fairfax, VA, U.S.A.
--!             All rights Reserved.
--! @license    This project is released under the GNU Public License.
--!             The license and distribution terms for this file may be
--!             found in the file LICENSE in this distribution or at
--!             http://www.gnu.org/licenses/gpl-3.0.txt
--! @note       This is publicly available encryption source code that falls
--!             under the License Exception TSU (Technology and software-
--!             unrestricted)
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity register_elephant is
    generic (num_bits: integer := 8 );
    port(
        clk : std_logic;
        en : std_logic;
		din : in std_logic_vector(num_bits - 1 downto 0);
        q: out std_logic_vector(num_bits - 1 downto 0)
        );
end register_elephant;

architecture Behavioral of register_elephant is
begin
    process (clk, en)
    begin
        if rising_edge(clk) and en = '1' then
            q <= din;
        end if;
    end process;
end Behavioral;

----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library neural;
use neural.package_type.all;
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity axis_top_level is
  generic
(
  -- ADD USER GENERICS BELOW THIS LINE ---------------
  --USER generics added here
	SIZE_WIDTH :natural := SIZE_WIDTH_T;
    NBR_NEURON :natural := NBR_NEURON_T;
    NBR_PIXELS :natural := NBR_PIXELS_T  
  -- ADD USER GENERICS ABOVE THIS LINE ---------------
  -- DO NOT EDIT ABOVE THIS LINE ---------------------
);
port
(
--------------------------------------------------------------------------------
-- AXIS Clock
--------------------------------------------------------------------------------
      aclk : in std_logic;
      arestn : in std_logic;
--------------------------------------------------------------------------------
-- AXIS Slave 0 side
--------------------------------------------------------------------------------
      S00_AXIS_TVALID : in std_logic;
      --S00_AXIS_TUSER : in std_logic;
      S00_AXIS_TLAST : in std_logic;
      S00_AXIS_TREADY : out std_logic;
      --S00_AXIS_TDATA : in std_logic_vector(31 downto 0); -- Commented by Fred
      S00_AXIS_TDATA : in std_logic_vector(SIZE_WIDTH_T-1 downto 0);
      -- AXIS Slave 1 side
      --------------------------------------------------------------------------------
      S01_AXIS_TVALID : in std_logic;
    --  S01_AXIS_TUSER : in std_logic;
      S01_AXIS_TLAST : in std_logic;
      S01_AXIS_TREADY : out std_logic;
      S01_AXIS_TDATA : in std_logic_vector(SIZE_WIDTH_T-1 downto 0);    
      --------------------------------------------------------------------------------
      -- AXIS Master 0 side
      --------------------------------------------------------------------------------
      M00_AXIS_TVALID : out std_logic;
  --    M00_AXIS_TUSER : out std_logic;
      M00_AXIS_TLAST : out std_logic;
      M00_AXIS_TREADY : in std_logic;
      --        M00_AXIS_TDATA : out std_logic_vector(31 downto 0);
      M00_AXIS_TDATA : out std_logic_vector(SIZE_WIDTH_T-1 downto 0)
      );
end axis_top_level;

architecture Behavioral of axis_top_level is

signal m_axis_tdata_t : std_logic_vector(SIZE_WIDTH_T-1 downto 0);

component   top_level
generic (
	SIZE_WIDTH :natural := SIZE_WIDTH_T;
  	NBR_NEURON :natural := NBR_NEURON_T;
  	NBR_PIXELS :natural := NBR_PIXELS_T
    );
  port (
    clk 		: in std_logic;
    reset       : in std_logic;
	pixel 		: in std_logic_vector(SIZE_WIDTH_T-1 downto 0);
  	weight      : in std_logic_vector(SIZE_WIDTH_T-1 downto 0);
	
  	--VecOut_weighted_sum 		: out table;
  	VecOut_mux 		            : out std_logic_vector(SIZE_WIDTH_T-1 downto 0)
  	);
end component;

begin

M00_AXIS_TDATA  <= m_axis_tdata_t;

M00_AXIS_TVALID <= S01_AXIS_TVALID or  S00_AXIS_TVALID;
--M00_AXIS_TUSER  <= S01_AXIS_TUSER  or  S00_AXIS_TUSER;
M00_AXIS_TLAST  <= S01_AXIS_TLAST  or  S00_AXIS_TLAST;
S01_AXIS_TREADY <= M00_AXIS_TREADY;
S00_AXIS_TREADY <= M00_AXIS_TREADY;

top_level_inst: top_level
  generic map(
	SIZE_WIDTH => SIZE_WIDTH_T,
  	NBR_NEURON => NBR_NEURON_T,
  	NBR_PIXELS => NBR_PIXELS
    )
  port map(
    clk     => aclk,
    reset   => arestn,
	pixel   => S01_AXIS_TDATA,
  	weight  => S00_AXIS_TDATA,
	
  	--VecOut_weighted_sum 		: out table;
  	VecOut_mux => m_axis_tdata_t
  	);
end Behavioral;

	component nios is
		port (
			board_led_export : out std_logic_vector(3 downto 0);        -- export
			clk_clk          : in  std_logic                    := 'X'; -- clk
			reset_reset_n    : in  std_logic                    := 'X'  -- reset_n
		);
	end component nios;

	u0 : component nios
		port map (
			board_led_export => CONNECTED_TO_board_led_export, -- board_led.export
			clk_clk          => CONNECTED_TO_clk_clk,          --       clk.clk
			reset_reset_n    => CONNECTED_TO_reset_reset_n     --     reset.reset_n
		);


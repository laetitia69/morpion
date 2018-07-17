class Player

attr_accessor :player_name, :symbol, :score

	def initialize(player_name, symbol)
		@player_name = player_name
		@symbol = symbol
		@score = 0
	end

	def counter
		@score += 1
	end

end

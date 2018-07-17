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

player1 = Player.new("Carlos", "X")
player2 = Player.new("Mario", "O" )

puts "Le joueur #{player1.player_name} ayant le symbole #{player1.symbol} a pour score: #{player1.score}"
puts "Le joueur #{player2.player_name} ayant le symbole #{player2.symbol} a pour score: #{player2.score}"


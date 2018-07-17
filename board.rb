require_relative "board_case"

class Board
	include Enumerable
	#attributs getter et setter réunis
	attr_accessor :cases

	
	def initialize
		@cases = Array.new(9)#création de l'array 

		#on rempli le tableau 9 fois par la class BoardCases qui définit une seule case
		9.times {|i|
			@cases.push(BoardCases.new(i))
		}
	end

	#Afficher le quadrillage
	def display
		print @cases[0..2]
		print @cases[3..5]
		print @cases[6..8]
	end

end
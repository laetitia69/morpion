require_relative "board_case"

class Board
	include Enumerable
	#attributs getter et setter réunis
	attr_accessor :cases


	def initialize
		@cases = Array.new(9)#création de l'array

		#on remplit le tableau case par case
		@cases.fill(BoardCase.new)




	end

	#Afficher le quadrillage
	def display

		#a chaque index on appelle l'attribut symbol du fichier board_case
		puts "#{@cases[0].symbol}|#{@cases[1].symbol}|#{@cases[2].symbol}"
		puts "#{@cases[3].symbol}|#{@cases[4].symbol}|#{@cases[5].symbol}"
		puts "#{@cases[6].symbol}|#{@cases[7].symbol}|#{@cases[8].symbol}"
	end

	#Mettre à jour le board avec nouvelles entrées de chaque tour
	def update_case(i, symbol)
		#renvoie l'index de la case choisie et utilise methode update de board_case pour le symbol
		return @cases[i].update_symbol(symbol)
	end
end

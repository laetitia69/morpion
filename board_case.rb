
class BoardCase
	attr_reader :symbol 
	#definit l'état de boardcase à l'initialisation
	def initialize #index variable qui vient de la méthode de la classe board
		@symbol = "" #case vide à l'initialisation du jeu en attente de symbole X, O
	
	end

	def update_symbol(symbol)
		if @symbol == "" #verifie s'il y a un symbole ou pas
			
			@symbol = symbol #pour afficher le symbole
			return 1
		else  
			return 0	
		end	
	end
		def is_empty #si la case est vide
			return @symbol == "" #renvoie true si vide ou false si presence symbole
		end	
end		







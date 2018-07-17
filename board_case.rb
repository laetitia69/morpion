class BoardCase
	attr_accessor :symbol, :case_index, :case_status
	#definit l'état de boardcase à l'initialisation
	def initialize(index) #index variable qui vient de la méthode de la classe board
		@symbol = "" #case vide à l'initialisation du jeu en attente de symbole X, O, ""
		@case_index = index #position de la case suivant les valeurs d'index
		@case_status = false #les cases du morpion sont vides à l'initialisation
	end
end		
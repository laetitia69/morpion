require_relative "board"
require_relative "player"

class Game 

  attr_accessor :rules, :ending, :turn

  def initialize(rules)
    @rules = rules                  # initialise les règles du jeu
    @ending = false                 # initialise la fin du jeu
    @turn = Random.rand(0..1)       # choisit le premier joueur 
    @players = []                   # initialise et récupère les noms des joueurs
    puts " Veuillez entrer le nom du 1er joueur ( o ) "
    name = gets.chomp 
    @players.push(addPlayer(name,"o"))
    puts " Veuillez entrer le nom du 2eme joueur ( x )"
    name = gets.chomp 
    @players.push(addPlayer(name,"x"))
  end

  def altern                        # définit l'alternance entre les joueurs tour par tour
    if @turn == 0
      @turn += 1
    else @turn -= 1
    end
  end

  def go                            # affiche la grille
    @board = Board.new
    #@board.display
    #board.
    @board.display
end

  def action                        # demande une case au joueur
    9.times {
      if @turn == 0
        puts "Joueur 1, choisis une case."
        cases = gets.chomp
        puts "Le joueur 1 a choisi la case #{cases}"
        problem = @board.update_case(cases.to_i, @players[0].symbol)
      else 
        puts "Joueur 2, choisis une case."
        cases = gets.chomp
        puts "Le joueur 2 a choisi la case #{cases}"
        problem = @board.update_case(cases.to_i, @players[1].symbol)
      end 
      if problem == 1
        altern
      end
    }
  end


  def addPlayer(name,symbol)       # définit le joueur et son symbole
    player = Player.new(name,symbol)
    return player
end

end
game = Game.new("")
game.go
game.action
# puts game.turn
# game.altern
# puts game.turn
#Game.altern
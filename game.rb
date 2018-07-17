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
    @board.display
    #board.
    #@board.display
end

  def action                        # demande une case au joueur et update le fichier board avec les valeurs des cases
    begin
    
    puts "Bienvenue sur le TicTacToe lyonnais !"
    puts "Tape 1 pour jouer"
    puts "Tape 2 pour afficher les règles"
    puts "Tape 3 pour afficher les cases"
    puts "Tape 4 pour sortir du jeu"
    i = gets.chomp.to_i
    if i == 1
      9.times {

        puts "#{@players[@turn].player_name}, choisis une case."
        cases = gets.chomp.to_i
        while cases < 1 || cases > 9
          puts"Merci d'entrer un nombre entre 1 et 9"
          print ">"
          cases = gets.chomp.to_i
        end
        puts "#{@players[@turn].player_name} a choisi la case #{cases}"
        problem = @board.update_case(cases.to_i - 1, @players[@turn].symbol)
        
         @board.display
      if problem == 1
        altern
      else
        puts "Cette case est déjà prise, essaie encore !"
      end
    }
    elsif i == 2
      puts "règles ici"
    elsif i == 3
      # @board.
    elsif i == 4
    else 
      puts "Mauvaise commande, recommence !"
    end 
  end while i != 4


    
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
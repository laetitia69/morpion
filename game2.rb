require_relative "board_case"
require_relative "board"
require_relative "player"

class Game
    
  def initialize
    @players = []
      puts " Veuillez entrer le nom du 1er joueur ( o ) "
      name = gets.chomp 
      @players.push(addPlayer(name,"o"))
      #puts " Veuillez entrer le nom du 2eme joueur ( x )"
      #name = gets.chomp 
      #@players.push(addPlayer(name,"x"))
    
  end
    
    
  def addPlayer(name,symbole)
      player = Player.new(name,symbole)
      puts "Joueur 1 s'appelle : #{player.player_name}"
      return player
  end

  def go
      @board = Board.new
      @board.display
      #board.
      @board.display
  end

end


game = Game.new
game.go
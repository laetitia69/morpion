class Game 

  attr_accessor :rules, :ending, :turn

  def initialize(rules)
    @rules = rules
    @ending = false
    @turn = Random.rand(0..1)
    puts @turn
  end

  a = 0
  def altern 

    if @turn == 0
      @turn += 1
    else @turn -= 1
      puts @turn
    end

  end

  def action
    if @turn == 0
      puts "Joueur 1, choisis une case."
      bc = gets.chomp 
      

end
Game.new("")
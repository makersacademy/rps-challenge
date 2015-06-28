require_relative 'player'


class Game

  attr_reader :comp_pick, :winner, :computer_choice, :player

  #Are these two lines initializing with an instance of player?
  def initialize(playerClass)
    @player = initialize_player playerClass
  end

  def initialize_player(playerClass)
    player = playerClass.new
    player
  end

  def comp_choice 
    ['rock','paper','scissors'].sample
  end

  def play player_choice

    logic = {
      paper: {paper: "tie", rock: "wins", scissors: "lose"},
      rock: {paper: "lose", rock: "tie", scissors: "wins"},
      scissors: {paper: "wins", rock: "lose", scissors: "tie"}  
    }
    @computer_choice = comp_choice
    @winner = logic[player_choice.to_sym][@computer_choice.to_sym] 

  end

  def winner
    if @winner == 'wins'
      'Player'
    elsif @winner == 'lose'
      'Computer'
    else 
      'Tie'       
    end
  end

end

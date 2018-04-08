class Game

  attr_reader :player, :final

  def initialize name
    @player = name
    @@game = self
  end

  def Game.get_game
    @@game
  end

  def check_winner player_choice
    comp_choice = auto_select
    winner = message comp_choice, player_choice  
    @final = "You chose #{player_choice}. Computer chose #{comp_choice}. #{winner}"
    self
  end 

  private
  def auto_select
    ['rock', 'paper', 'scissors'].sample
  end

  def message comp_choice, player_choice
    choices = ['rock', 'scissors', 'paper', 'rock']
    return "Even!" if comp_choice === player_choice
    return "Computer wins!" if choices[choices.index(comp_choice) + 1] == player_choice
    return "You win!"
  end
end

class Game
  attr_accessor :player1, :player2

  def initialize(player1, player2) # user is a string representing the choice of the player 
    @player1 = player1              # computer is a string, representing the computer choice 
    @player2 = player2
  end 

  def winner
    return nil if @player1.choice == @player2.choice
    options = ['rock', 'paper', 'scissors']
    first_play = options.find_index(@player1.choice)
    options[first_play - 1] == @player2.choice
  end
end

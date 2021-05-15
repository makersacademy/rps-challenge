require_relative './player.rb'

class Game
  attr_reader :player1, :opponent
  
  def initialize(player1, opponent=Player.new('Computer'))
    @player1 = player1
    @opponent = opponent
  end 

  # def win?
  #   result(user_input = @player_choice, computer_input = @opponent_choice) == 'win'
  # end

  def result(user_input = @player_choice, computer_input = @opponent_choice)
    return 'draw' if user_input == computer_input
    winning_couples[user_input.to_sym] == computer_input ? 'win' : 'lose'
  end 

private

  def winning_couples
    {
      rock: 'scissors',
      scissors: 'paper',
      paper: 'rock'
    }
  end

end 

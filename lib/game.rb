require_relative './player.rb'

class Game
  attr_reader :player1, :opponent
  
  def initialize(player1, opponent = Player.new('Computer'))
    @player1 = player1
    @opponent = opponent
  end 

  # def win?
  #   result(user_input = @player_choice, computer_input = @opponent_choice) == 'win'
  # end

  def result(user_input = @player_choice, computer_input = @opponent_choice)
    return 'draw' if user_input == computer_input

    winning_couples[user_input.to_sym].include?(computer_input) ? 'win' : 'lose'
  end

  def confirmation_message(result)

    if result == 'win'
      "You win!"
    elsif result == 'lose'
      "Bad luck - next time!"
    else
      "Draw!"
    end

  end 

private

  def winning_couples
    {
      rock: ['scissors', 'lizard'],
      scissors: ['paper', 'lizard'],
      paper: ['rock', 'spock'],
      spock: ['scissors', 'rock'],
      lizard: ['spock', 'paper']
    }
  end

end 

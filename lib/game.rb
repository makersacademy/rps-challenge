class Game 
  attr_reader :player_turn, :random_turn

  def initialize(player_turn)
    @rps_array = ['rock', 'paper', 'scissors']
    'player turn in game'
    @player_turn = player_turn
  end

  def cpu_turn
    'cpu random pick'
    @random_turn = @rps_array.sample
  end

  def who_won
    'who won'
    if (player_turn == 'rock' && random_turn == 'scissors') || (player_turn == 'paper' && random_turn == 'rock') || (player_turn == 'scissors' && random_turn == 'paper')
      return player_won
    elsif player_turn == random_turn
      return draw
    else 
      return cpu_won
    end
  end

  def player_won
    'You won!'
  end

  def cpu_won
    'You lost, better luck next time!'
  end

  def draw
    'Draw!'
  end
end

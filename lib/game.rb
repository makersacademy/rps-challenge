require './lib/player'

class RPS
attr_reader :player_1

WEAPONS = ['rock', 'paper', 'scissors']

def initialize(player_1)
  @player_1 = player_1
end

def computer_move
  WEAPONS.sample
end

def result(player)
  if ( player == 'rock' && computer_move == 'scissors' ) || (player == 'paper' && computer_move == 'rock') || ( player == 'scissors' && computer_move == 'paper')
    return "Congratulations, you won!"
  elsif ( player == 'scissors' && computer_move == 'rock') || ( player == 'rock' && computer_move == 'paper' ) || ( player == 'paper' && computer_move == 'scissors' )
    return "Unlucky, you lost!"
  else
    return "It's a draw!"
  end
end

end
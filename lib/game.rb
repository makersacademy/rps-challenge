require_relative 'player'
class Game

attr_reader :player_1, :player_2, :player_move


def initialize(player1 = Player.new, player2 = Player.new)
  @player_1 = player1
  @player_2 = player2
end

def player_1_move(move)
  @player_1_move = move
end

def player_2_move(move)
  @player_2_move = move
end

def winner
  if @player_1_move == @player_2_move
    "It's a tie!"
  elsif (@player_1_move - @player_2_move)%3 ==1
    "You Win!"
  else
    "You Lose!"
  end
end


end

require './lib/player.rb'
class Game
  attr_reader :player, :random_move
  def initialize(player)
    @player = player
    @random_move = nil
  end

  # this might seem weird but it was the only way for me to run a complete test
  def random(moves = ['paper', 'scissors', 'rock'])
    moves.sample
  end

  def make_random_move
    @random_move = random
  end
# the following method needs to be refactored, it's too long
  def play
    make_random_move
    if player.player_move == random_move
      "It's a draw"
    elsif player.player_move == "scissors" && random_move == "paper"
      "You won!"
    elsif player.player_move == "rock" && random_move == "scissors"
      "You won!"
    elsif random_move == "rock" && player.player_move == "paper"
      "You won!"
    else
      "You lost"
    end
  end
end

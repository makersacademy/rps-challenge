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

  def draw?(random_move)
    player.player_move == random_move
  end

  def won?(random_move)
    player.player_move == "scissors" && random_move == "paper" ||
    player.player_move == "rock" && random_move == "scissors" ||
    random_move == "rock" && player.player_move == "paper"
  end
end

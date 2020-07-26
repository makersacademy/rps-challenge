##require 'player'

class Game
  attr_reader :player, :rps, :result

  WIN = [["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]]

  def initialize(player)
    @player = player
    @rps = ["Rock", "Paper", "Scissors"]
    @game = []
  end

  def player_roll(choice)
    @player_move = @player.choice(choice)
    @game << @player_move
  end

  def ai_roll
    @ai_move = @rps.sample
    @game << @ai_move
  end

  def result
    WIN.include?(@game)
  end
end
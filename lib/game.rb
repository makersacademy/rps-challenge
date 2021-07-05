##require 'player'

class Game
  attr_reader :player, :rps, :result, :instance, :player_move, :ai_move

  WIN = [["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]]

  def initialize(player)
    @player = player
    @rps = ["Rock", "Paper", "Scissors"]
    @instance = []
  end

  def player_roll(choice)
    @player_move = @player.choice(choice)
    @instance << @player_move
  end

  def ai_roll
    @ai_move = @rps.sample
    @instance << @ai_move
  end

  def result
    if @instance[0] == @instance[1]
      return "draw"
    else
    WIN.include?(@instance)
    end
  end
end
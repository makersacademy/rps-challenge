require_relative 'player'

class Videogame

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
  p   @player_1 = Player.new(player_1)
      @player_2 = Player.new(player_2)
  end

  def move
  if player_1 =="rock" || "paper" || "scissors"
      @player_1.increase_points
    else
      "Try again!!"
    end
  end
end

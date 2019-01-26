require_relative 'player'

class Game
  attr_reader :weapon, :player

  def initialize(player)
    @player = player
    @weapon
  end

  def random_rps
    ["ROCK", "PAPER", "SCISSORS"].sample
  end

end

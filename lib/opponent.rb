class Opponent
  attr_reader :hand

  def initialize
    @player_two = [:rock, :paper, :scissors]
  end

  def hand
    @player_two.sample
  end
end

require_relative 'rules'

class Game
  attr_reader :player_two, :player_one, :name, :hand
  def initialize(player_one, hand)
    @player_one = player_one
    @player_two = [:rock, :paper, :scissors]
    @hand = hand
  end


end

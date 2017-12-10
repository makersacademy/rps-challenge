require_relative 'player'

class Game
  attr_reader :player_1, :player_2
  def initialize args
    @player_1 = args[:player_1]
    @player_2 = args[:player_2] || Player.new("AI")
  end
end

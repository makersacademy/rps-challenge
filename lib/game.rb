require_relative 'player'

class Game
  attr_reader :player_1, :player_2
  def initialize args
    @player_1 = Player.new(args[:name_1])
    @player_2 = Player.new(args[:name_2])
  end
end

require_relative 'player'

class Game
  attr_reader :player_choice, :player

  def initialize(player)
    @player = player
    @player_choice = nil
  end

end

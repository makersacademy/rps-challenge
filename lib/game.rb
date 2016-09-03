require_relative 'player'
class Game

  def initialize(player)
    @player = player

  end

  def player_name
    @player.return_name
  end

private

attr_reader :player

end

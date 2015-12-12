require_relative 'player'

class Game

  attr_reader :players, :player_1

  def initialize(player_klass = Player.new(:name_1))
    @player_1 = player_klass
    @players  = {p1: player_1}
  end

  def player_name_1
    players[:p1].name
  end
end

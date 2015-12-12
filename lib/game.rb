class Game
  attr_reader :player

  def initialize(player_klass)
    @player = player_klass
  end
end

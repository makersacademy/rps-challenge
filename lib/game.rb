class Game
  attr_reader :player

  def initialize(name, player_class)
    @player = player_class.new(name)
  end
end

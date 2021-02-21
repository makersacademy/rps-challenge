class Player
  attr_reader :name

  def initialize(player)
    @name = player.capitalize
  end
end

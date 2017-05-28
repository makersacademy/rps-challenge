class Player

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def name(player)
    @player = Player.new(player)
  end

  def person_playing
    @player
  end
end

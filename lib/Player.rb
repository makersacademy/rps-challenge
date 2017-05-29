class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  # def name(player)
  #   @player = Player.new(player)
  # end

  def person_playing
    @player
  end
end

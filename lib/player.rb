class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.set_player(name)
    @player = Player.new(name)
  end
end

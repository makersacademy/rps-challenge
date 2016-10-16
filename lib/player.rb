

class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.create(player_name)
    @player = Player.new(player_name)
  end

  def self.read
    @player
  end

end

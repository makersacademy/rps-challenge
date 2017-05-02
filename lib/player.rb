class Player

  def initialize(name)
    @name = name
    @weapon
  end

  def self.create_player_1(name)
    @player_1 = Player.new(name)
  end

  def self.create_player_2(name)
    @player_2 = Player.new(name)
  end

  def self.player_1
    @player_1
  end

  def self.player_2
    @player_2
  end

  def name
    @name
  end

  def choose(weapon)
    @weapon = weapon
  end

  def weapon
    @weapon
  end

end

class Player

  attr_reader :name, :weapon

  def self.create(player_name)
    @player = Player.new(player_name)
  end

  def self.instance
    @player
  end

  def initialize(player_name)
    @name = player_name
    @weapon = nil
  end

  def weapon_choice(weapon)
    @weapon = weapon
  end
end

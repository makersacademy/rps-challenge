class Player

  def self.find(id)
    players[id]
  end

  def self.add(id, player)
    players[id] = player
  end

  def self.players
    @players ||= {}
  end

  attr_reader :name, :weapon

  def initialize(name = "anon")
    @name = name
    @weapon = nil
  end

  def has_weapon?
    !!@weapon
  end

  def set_weapon(weapon)
    @weapon = weapon
  end

  def remove_weapon
    @weapon = nil
  end

end

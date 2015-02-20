class GameItems

  attr_reader :items

  def initialize(options)
    @items = {}
  end

  def add_weapon(weapon)
    @items.merge!(weapon)
  end

  def weapon_keys
  end

end
module GamePlayer

  attr_reader :name, :weapon

  def initialize(name:, weapon_class: Weapon, game_class: )
    @name = name
    @game_class = game_class
    @weapon_class = weapon_class
  end

  def winner?(other_weapon)
    weapon.beats?(other_weapon)
  end

end

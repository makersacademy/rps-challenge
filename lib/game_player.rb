module GamePlayer

  attr_reader :name, :weapon

  def initialize(name: 'Darth Vadar', weapon_class: Weapon, game_class: Game)
    @name = name
    @game_class = game_class
    @weapon_class = weapon_class
  end

  def winner?(other_weapon)
    weapon.beats?(other_weapon)
  end

  def to_s
    weapon.to_s
  end

end

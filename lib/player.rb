class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choose_weapon(weapon)
    fail 'Pick rock, paper or scissors!' unless [:rock, :paper, :scissors].include?(weapon.to_sym)
    @weapon = weapon.to_sym
  end
end

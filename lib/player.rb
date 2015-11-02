class Player
  attr_reader :name, :weapons, :choosen

  def initialize(name)
    @name = name
    @weapons = [:scissors, :paper, :rock]
    @choosen = nil
  end

  def choose_weapon(weapon)
    raise 'Cannot choose this weapon: weapon not present' unless @weapons.include?(weapon)
    @choosen = weapon
  end

end

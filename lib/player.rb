class Player
  attr_reader :name, :chosen_weapon

  def initialize(name, chosen_weapon)
    @name = name
    @chosen_weapon = chosen_weapon
  end

end

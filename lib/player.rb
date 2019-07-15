class Player

  attr_reader :name, :weapon, :winner
  
  CHOICE = ['Rock', 'Paper', 'Scissors']

  def initialize(name = nil)
    @name = name
    @weapon = nil
  end

  def select_weapon(weapon = CHOICE.sample)
    @weapon = weapon.downcase.to_sym
  end

end

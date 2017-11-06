class Computer
  attr_reader :weapons, :choose_weapon

  def initialize
    @weapons = ['rock', 'paper', 'scissors']
  end

  def choose_weapon
    @chosen_weapon = @weapons.sample
  end

end

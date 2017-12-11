
class Computer

  attr_reader :comp_weapon

  def initialize
    chosen_weapon
  end

  def chosen_weapon
    @comp_weapon = ['rock', 'paper', 'scissors'].sample
  end

end

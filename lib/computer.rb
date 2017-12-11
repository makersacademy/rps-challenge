
class Computer

  attr_reader :weapon

  def initialize
    chosen_weapon
  end 

  def chosen_weapon
    @weapon = ['rock', 'paper', 'scissors'].sample
  end

end

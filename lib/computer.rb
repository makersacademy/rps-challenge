class Computer

  attr_accessor :weapon

  def initialize
    @weapon = nil
  end

  def generate_weapon
    @weapon = ['Rock','Paper','Scissors'].sample
  end

end

class Computer

attr_reader :weapon

  def initialize
    @weapon = nil
  end

  def generate_weapon
    @weapon = ['Rock','Paper','Scissors'].sample
  end

end

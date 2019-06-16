class Computer
  attr_reader :weapon

  def initialize
    @weapon = random_weapon
  end  
 
  private

  def random_weapon
    ["Rock", "Paper", "Scissors"].sample
  end
end

class Computer
  attr_reader :computer_weapon
  
  def initialize
    @computer_weapon = ['rock', 'paper', 'scissors'].sample
  end
end

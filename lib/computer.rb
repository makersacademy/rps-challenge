class Computer

  def initialize
    @weapons = [:Rock, :Paper, :Scissors]  
  end

  def computer_choice
    @weapons.sample.to_s
  end

  def print_choice
    computer_choice
  end

end

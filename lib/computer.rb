class Computer

  attr_reader :weapons

  WEAPONS = ["rock", "paper", "scissors"]

  def initialize
    @weapons = WEAPONS.sample
  end

  # def computer_choice
  #   @weapons.sample
  # end

end

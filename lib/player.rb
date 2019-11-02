class Player
  attr_reader :name, :choice, :computer_choice

  def initialize(name)
    @name = name
    @choice = nil
    @computer_choice = nil
  end

  def weapons(weapon)
    ["rock", "paper", "scissors"].select { |w| @choice = weapon if weapon == w }.join("")
  end

  def computer_weapons(weapon)
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

end

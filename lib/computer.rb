class Computer
  attr_reader :name

  def initialize(name = 'computer')
    @name = name
    @weapons = ["rock", "paper", "scissors"]
  end

  def chose_weapon
    @weapons[rand(0..2)]
  end
end

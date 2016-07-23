class Machine

  attr_reader :weapon

  def initialize
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def choose_weapon
    @weapon = @weapons[rand(0..2)]
  end
end

class Computer

  attr_reader :weapon

  def generate_weapon
    @weapon = ["Rock", "Paper", "Scissors"].sample
  end

  def return_weapon
    @weapon
  end
end

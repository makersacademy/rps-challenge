class Computer

  attr_reader :weapon

  def generate_weapon
    @weapon = ["Rock", "Paper", "Scissors"].sample
  end

end

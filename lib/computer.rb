class Computer
  attr_reader :weapon

  def weapon
    ["Rock", "Paper", "Scissors"].sample
  end
end
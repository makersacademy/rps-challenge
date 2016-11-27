#randomly picks computer's choice

class Computer

  def initialize
    @attacks = ["Rock", "Paper", "Scissors"]
  end

  def counter_attack
    @attacks.sample
  end


end

class Hal
  attr_reader :attack, :attacks

  def initialize
    @attacks = ["Rock", "Paper", "Scissors"]
    @attack = @attacks.sample
  end
end

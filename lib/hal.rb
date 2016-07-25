class Hal
  attr_reader :attack, :attacks
  ATTACKS = ["Rock", "Paper", "Scissors"]
  def initialize
    @attacks = ["Rock", "Paper", "Scissors"]
    @attack = @attacks.sample
  end
end

class Hal
  attr_reader :attack, :attacks
  ATTACKS = ["Rock", "Paper", "Scissors"]
  def initialize
    @attacks = ATTACKS
    @attack = @attacks.sample
  end
end

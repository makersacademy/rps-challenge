class Computer
  attr_reader :attack, :possible_attacks

  def initialize
    @name = "Computer"
    @attack = nil
    @possible_attacks = [:rock, :paper, :scissors]
  end

  def attack_with(*)
    @attack = @possible_attacks.sample
  end

end
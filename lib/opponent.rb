class Opponent
  attr_reader :name, :weapon

  ATTACKS = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]

  def initialize(name = "Opponent")
    @name = name
    @weapon = nil
  end

  def attack
    @weapon = attack_selector
  end

  private

  def attack_selector
    ATTACKS.sample
  end

end

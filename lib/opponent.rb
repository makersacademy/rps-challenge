class Opponent
  attr_reader :name

  ATTACKS = ["Rock", "Paper", "Scissors"]

  def initialize(name = "Opponent")
    @name = name
  end

  def self.create(name = "Opponent")
    @opponent = Opponent.new(name)
  end

  def self.instance
    @opponent
  end

  def attack
    attack_selector
  end

  private

  def attack_selector
    ATTACKS.sample
  end

end

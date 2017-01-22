class Opponent
  attr_reader :name, :weapon

  ATTACKS = ["Rock", "Paper", "Scissors"]

  def initialize(name = "Opponent")
    @name = name
    @weapon = nil
  end

  def self.create(name = "Opponent")
    @opponent = Opponent.new(name)
  end

  def self.instance
    @opponent
  end

  def attack
    @weapon = attack_selector
  end

  private

  def attack_selector
    ATTACKS.sample
  end

end

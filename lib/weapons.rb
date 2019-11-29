
class Weapon
  attr_reader :choice

  def initialize(choice = ["Rock", "Paper", "Scissors"])
    @choice = choice.sample
  end
end

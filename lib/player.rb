class Player

attr_reader :name, :weapon

  def initialize(name="Deep Blue")
    @name = name
  end

  def choose_weapon(weapon=nil)
    @name == "Deep Blue" ? @weapon = generate_rps : @weapon = weapon
  end

  def generate_rps
    RPS.sample
  end

private

RPS = ["Rock", "Paper", "Scissors"]

end

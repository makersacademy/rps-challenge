class Computer
  WEAPONS = ["ROCK", "PAPER", "SCISSORS"]

  def name
    "RPSbot"
  end

  def weapon
    WEAPONS.sample
  end
end

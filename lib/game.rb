class Game
  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon
  end

  RESULTS = {
    "paper" => "rock",
    "scissors" => "paper",
    "rock" => "scissors"
  }

  def beats?(other_weapon)
    if RESULTS[weapon][other_weapon]
      "win"
    elsif RESULTS[other_weapon][weapon]
      "lose"
    else
      "draw"
    end
  end

end

class Game
  attr_reader :weapon, :weapon2

  def initialize(weapon)
    @weapon = weapon
  end

  def weapon2
    ["Rock", "Paper", "Scissors"].sample
  end

  def result
    if @weapon == self.weapon2
      "It's a draw. Me thinks you got lucky!"
    elsif @weapon == "Rock"
      return "You win" if self.weapon2 == "Scissors"
      return "You lose" if self.weapon2 == "Paper"
    elsif @weapon == "Paper"
      return "You win" if self.weapon2 == "Rock"
      return "You lose" if self.weapon2 == "Scissors"
    elsif @weapon == "Scissors"
      return "You win" if self.weapon2 == "Paper"
      return "You lose" if self.weapon2 == "Rock"
    end
  end
end

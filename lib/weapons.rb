class Weapons

  attr_reader :choices

  def initialize
    @choices = {
      rock: ["rock", "paper", "scissors"],
      paper: ["paper", "scissors", "rock"],
      scissors: ["scissors", "rock", "paper"]
    }
  end 

end

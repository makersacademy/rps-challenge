class Game

  def initialize
    @ai_pick = ["rock", "paper", "scissors"]
  end

  def ai_choice
    @ai_pick.sample
  end

end

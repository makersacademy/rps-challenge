class Game

  attr_reader :weapons

  def initialize
    @weapons = ["Rock", "Paper", "Scissor"]
  end

  def choice
    weapons.sample
  end

end

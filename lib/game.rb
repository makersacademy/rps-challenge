class Game

  attr_reader :player, :computer
  def initialize(player)
    @player = player
    @computer = nil
  end

  def computer_choice
    @computer = Game.random
  end

  def self.random
    ["Rock", "Paper", "Scissors"].sample
  end
end

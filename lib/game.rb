class Game
  attr_reader :choice, :players

  class << self
    attr_accessor :current
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @choice = ["Rock", "Paper", "Scissors"]
  end

end

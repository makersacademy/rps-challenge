class Game
  attr_reader :combinations

  def initialize
    @combinations = { rock: :scissors, paper: :rock, scissors: :paper }
    @player1 = []
    @player2 = []
  end

  def add_player1(player)
    @player1 << player
  end

  def add_player2(player)
    @player2 << player
  end
end
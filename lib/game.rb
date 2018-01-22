class Game

  def self.create(player1, player2)
    @game = new(player1, player2)
  end

  def self.instance
    @game
  end

  attr_reader :player1, :player2

  WINNING_MOVES = { rock: :scissors, scissors: :paper, paper: :rock }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    return :draw if @player1.choice == @player2.choice
    WINNING_MOVES[@player1.choice] == @player2.choice ? :win : :lose
  end

end

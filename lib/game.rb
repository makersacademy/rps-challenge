# Understands winning or losing a round
class Game
  attr_reader :players

  P1_WINNING_COMBOS = [
    [:rock, :scissors],
    [:paper, :rock],
    [:scissors, :paper]
  ].freeze

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def self.start(player1, player2)
    @game = new(player1, player2)
  end

  def self.instance
    @game ||= new
  end

  def play_round
    current_combo = [@players.first.choice, @players.last.choice]
    decide_winner(current_combo)
  end

  private

  def decide_winner(combination)
    return nil if combination.first == combination.last
    return @players.first if P1_WINNING_COMBOS.include?(combination)
    @players.last
  end
end

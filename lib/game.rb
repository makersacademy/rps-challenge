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

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def play_round
    current_combo = [player1.choice, player2.choice]
    decide_winner(current_combo)
  end

  private

  def decide_winner(combination)
    return nil if combination.first == combination.last
    return player1 if P1_WINNING_COMBOS.include?(combination)
    player2
  end
end

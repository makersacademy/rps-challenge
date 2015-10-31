class Game
  attr_reader :outcome

  RULES = {
    # This    | Loses to this
    rock:     :paper,
    paper:    :scissors,
    scissors: :rock
  }
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @outcome = "No game played yet"
  end

  def player1_name
    @player1.name
  end

  def player2_name
    @player2.name
  end

  def player1_hand=(hand)
    @player1.hand=(hand)
  end

  def player2_hand=(hand)
    @player2.hand=(hand)
  end

  def player1_hand
    @player1.hand
  end

  def player2_hand
    @player2.hand
  end

  def play
    @outcome = "A Draw!" if @player1.hand == @player2.hand
    @outcome = "#{player1_name} Won!" if rules(@player2.hand) == @player1.hand
    @outcome = "#{player2_name} Won!" if rules(@player1.hand) == @player2.hand
  end

  private
  def rules(hand)
    RULES[hand]
  end
end

class Game

  RULES = {
    # This      | Loses to this
    :rock     => :paper,
    :paper    => :scissors,
    :scissors => :rock
  }
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def player1_name
    @player1.name
  end

  def player2_name
    @player2.name
  end

  def set_player1_hand(hand)
    @player1.set_hand(hand)
  end

  def set_player2_hand(hand)
    @player2.set_hand(hand)
  end

  def play
    return :draw if @player1.get_hand == @player2.get_hand
    return :player1 if rules(@player2.get_hand) == @player1.get_hand
    return :player2 if rules(@player1.get_hand) == @player2.get_hand
  end

  private
  def rules(hand)
    RULES[hand]
  end
end

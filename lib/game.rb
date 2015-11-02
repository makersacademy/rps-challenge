class Game

  def initialize(rules_klass, player1, player2)
    @rules = rules_klass.new
    @player1 = player1
    @player2 = player2
  end

  def player1_name
    @player1.name
  end

  def player2_name
    @player2.name
  end

  def player1_hand=(hand)
    @player1.give_hand(hand)
  end

  def player2_hand=(hand)
    @player2.give_hand(hand)
  end

  def player1_hand
    @player1.hand
  end

  def player2_hand
    @player2.hand
  end
  def play
    @rules.play(player1_hand, player2_hand)
  end
end

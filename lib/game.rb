class Game
  attr_reader :opponent, :player_1_hand, :player_2_hand, :opponent_hand

  def initialize(opponent_klass=Opponent,result_klass=Result)
    @opponent = opponent_klass.new
    @result_klass = result_klass
  end

  def set_player_1_hand(hand)
    @player_1_hand = hand
  end

  def set_opponent_hand
    @opponent_hand = check_hand
  end

  def result
    @result_klass.run(@player_1_hand, @opponent_hand)
  end

  private

  def check_hand
    opponent.choose_hand
  end

end
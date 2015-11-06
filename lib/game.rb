class Game
  attr_reader :opponent, :player_1_hand, :player_2_hand, :opponent_hand, :history

  def initialize(opponent_klass=Opponent,result_klass=Result, history_klass = History)
    @opponent = opponent_klass
    @history = history_klass.new
    @result_klass = result_klass
  end

  def set_player_1_hand(hand)
    @player_1_hand = hand
  end

  def set_opponent_hand
    @opponent_hand = opponent.choose_hand(@history.player_1_history)
  end

  def result
    @result_klass.run(@player_1_hand, @opponent_hand)
  end

  def store_hands
    @history.store_hands(@player_1_hand, @opponent_hand)
  end

  def store_result
    @history.store_result(result)
  end

  def result_history
    {player1: @history.result_history.count(:player_1),
     player2: @history.result_history.count(:player_2),
     draw: @history.result_history.count(:draw),
     total: @history.result_history.length}
  end

end
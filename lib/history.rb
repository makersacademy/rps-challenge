class History
  attr_reader :player_1_history, :player_2_history, :result_history
  def initialize
    @player_1_history = []
    @player_2_history = []
    @result_history = []
  end

  def store_hands(hand1, hand2)
    @player_1_history << hand1
    @player_2_history << hand2
  end

  def store_result(result)
    @result_history << result
  end

end
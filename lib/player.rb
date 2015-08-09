class Player

  attr_reader :hands, :hand_to_play

  def initialize options
    @hands = options[:hands]
  end

  def set_hand hand
    check_valid_hand hand
    @hand_to_play = hand
  end

  private

  def check_valid_hand hand
    raise "not a valid hand" unless @hands.include?(hand)
  end
end
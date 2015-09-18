require_relative 'hand'

class Game

  def run_game(hand_1, hand_2)
    # fail 'You must pass two valid RPS hands to play.' unless ( hand_1.is_a? Hand ) && ( hand_2.is_a? Hand )

    return :tie if hand_1.shape? == hand_2.shape?

    return :hand_1_win if (
      ( hand_1.shape? == :rock ) && ( hand_2.shape? == :scissors )  ||
      ( hand_1.shape? == :paper ) && ( hand_2.shape? == :rock )  ||
      ( hand_1.shape? == :scissors ) && ( hand_2.shape? == :paper )
      )

    :hand_2_win
  end

end
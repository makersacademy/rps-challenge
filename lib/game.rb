class Game

  attr_reader :player_1, :player_2, :winner

  RULES = {scissors: :paper, paper: :rock, rock: :scissors}

  def initialize options
    @player_1 = options[:player_1]
    @player_2 = options[:player_2] if options[:player_2]
  end

  def play_hand_single_player player
    @player_1_hand = player.hand_to_play
    @computer_hand = computer_hand
    return :draw if check_for_draw? @player_1_hand, @computer_hand
    check_player_winner? ? :winner : :loser
  end

  def play_hand_two_player
    return :draw if check_for_draw? @player_1.hand_to_play, @player_2.hand_to_play
    @winner = check_two_player_winner
    check_two_player_winner
  end

  def check_player_winner?
    RULES[@player_1_hand] == @computer_hand
  end

  def check_two_player_winner
     winner = @player_1 if RULES[@player_1.hand_to_play] == @player_2.hand_to_play
     winner = @player_2 if RULES[@player_2.hand_to_play] == @player_1.hand_to_play
     winner
  end

  def winner_exists?
    return true if @winner
  end

  private

  def check_for_draw? hand_one, hand_two
    hand_one == hand_two
  end

  def computer_hand
    [:rock, :paper, :scissors].sample
  end
end
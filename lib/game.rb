class Game

  attr_reader :players

  RULES = {scissors: :paper, paper: :rock, rock: :scissors}

  def initialize options
    @players = []
    @players << options[:player_1]
  end

  def play_hand player
    @player_1_hand = player.hand_to_play
    @computer_hand = computer_play_hand
    return :draw if check_for_draw?
    check_player_winner? ? :winner : :loser
  end


  def check_player_winner?
    return true if RULES[@player_1_hand] == @computer_hand
  end

  private

  def check_for_draw?
    return true if @computer_hand == @player_1_hand
  end

  def computer_play_hand
    [:rock, :paper, :scissors].sample
  end
end
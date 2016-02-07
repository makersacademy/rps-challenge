class Game

  attr_reader :player_name, :computer_klass, :computer_turn, :player_weapon

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_name, computer_klass=Computer)
    @player_name = player_name
    # STILL NOT CLEAR ON KLASS
    @computer_klass = computer_klass
  end

  def start_game(player_weapon)
    @computer_turn = computer_klass.new #[WTF is computer_turn???]
    @player_weapon = player_weapon
  end

# UNSURE WHAT THIS DOES AND HOW
  def player_win?
    RULES[@player_weapon] == computer_turn.to_s
  end

# SAME
  def draw?
    computer_turn == player_weapon
  end

# WTF?
  def result
    if draw?
      :draw
    elsif player_win?
      :win
    else
      :lose
    end
  end

end

class Game

attr_reader :opponent_choice

  def play(player_choice)
    fail "Not a valid option" unless valid_choice?(player_choice)
    @opponent_choice = opponent_weapon
    if player_choice == @opponent_choice
      "It's a draw!"
    elsif player_choice == :rock
      player_chooses_rock
    elsif player_choice == :paper
      player_chooses_paper
    else player_choice == :scissors
      player_chooses_scissors
    end
  end

  def opponent_weapon
    [:rock, :paper, :scissors].sample
  end

  def valid_choice?(player_choice)
    [:rock, :paper, :scissors].include?(player_choice)
  end

  def player_chooses_rock
    @opponent_choice == :scissors ? win_message : lose_message
  end

  def player_chooses_paper
    @opponent_choice == :rock ? win_message : lose_message
  end

  def player_chooses_scissors
    @opponent_choice == :paper ? win_message : lose_message
  end

  def win_message
    "You win!"
  end

  def lose_message
    "You lose!"
  end

end
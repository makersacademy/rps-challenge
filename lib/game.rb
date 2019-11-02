class Game
  def random_move
    [:rock, :paper, :scissors].sample
  end

  def result(player_choice)
    computer_choice = random_move
    if player_choice == computer_choice
        :draw
    elsif player_choice == :rock and computer_choice == :scissors
          :win
    elsif player_choice == :paper and computer_choice == :rock
          :win
    elsif player_choice == :scissors and computer_choice == :paper
          :win
    else
          :lose
    end
  end

end

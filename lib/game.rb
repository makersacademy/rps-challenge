class Game
  def random_move
    moves = [:rock, :paper, :scissors]
    moves[Kernel.rand(3)]
  end

  def result(player_choice)
    computer_choice = random_move
    beatmap = { scissors: :paper, paper: :rock, rock: :scissors }

    if player_choice == computer_choice
      :draw
    elsif beatmap[player_choice] == computer_choice
      :win
    else
      :lose
    end
  end
  #   if player_choice == computer_choice
  #     :draw
  #   elsif player_choice == :rock and computer_choice == :scissors
  #     :win
  #   elsif player_choice == :paper and computer_choice == :rock
  #     :win
  #   elsif player_choice == :scissors and computer_choice == :paper
  #     :win
  #   else
  #     :lose
  #   end
  # end

end

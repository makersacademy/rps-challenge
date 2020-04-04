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
end

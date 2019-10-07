class Move

  def player_2_move(name)
    if name == "Robot"
      random_move
    end
  end

private

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

end

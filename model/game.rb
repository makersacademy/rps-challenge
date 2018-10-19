class Game
  def move
    move = cpu_move
    if move == 0
      "Rock"
    elsif move == 1
      "Paper"
    elsif move == 2
      "Scissors"
    end
  end

  def cpu_move
    rand(2)
  end

  def cpu_result
    true
  end
end

class VictoryMatrix
  VICTORY_MATRIX = [[2, 1, 0],[0, 2, 1],[1, 0, 2]]

  CHOICE_MATRIX = ['rock', 'paper', 'scissors']

  def result(x, y)
    VICTORY_MATRIX[x][y]
  end

  def choice_to_index(choice)
    CHOICE_MATRIX.index(choice)
  end
end

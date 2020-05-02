class VictoryMatrix
  VICTORY_MATRIX = [[5, 1, 0, 1, 0],[0, 5, 1, 0, 1],[1, 0, 5, 1, 0],[0, 1, 0, 5, 1],[1, 0, 1, 0, 5]]

  CHOICE_MATRIX = ['rock', 'paper', 'scissors', 'spock', 'lizard']

  def result(x, y)
    VICTORY_MATRIX[x][y]
  end

  def choice_to_index(choice)
    CHOICE_MATRIX.index(choice)
  end
end

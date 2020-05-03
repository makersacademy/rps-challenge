class VictoryMatrix
  VICTORY_MATRIX = [[5, 1, 0, 1, 0],
  [0, 5, 1, 0, 1],
  [1, 0, 5, 1, 0],
  [0, 1, 0, 5, 1],
  [1, 0, 1, 0, 5]]

  def result(player_1_choice, player_2_choice)
    VICTORY_MATRIX[player_1_choice][player_2_choice]
  end

  def choice_to_index(choice)
    Choices::MOVES.index(choice)
  end
end

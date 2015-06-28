class Scissors
  def versus opponent
    opponent.result_against_scissors
  end

  def result_against_scissors
    'scissors draws'
  end

  def result_against_rock
    'rock wins'
  end

  def result_against_paper
    'paper loses'
  end

end

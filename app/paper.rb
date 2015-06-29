class Paper
  def versus opponent
    opponent.result_against_paper
  end

  def result_against_scissors
    'scissors wins'
  end

  def result_against_rock
    'rock loses'
  end

  def result_against_paper
    'paper draws'
  end

end

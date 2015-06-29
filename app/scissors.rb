class Scissors
  def versus opponent
    opponent.result_against_scissors
  end

  def result_against_scissors
    'Scissors draws against scissors'
  end

  def result_against_rock
    'Rock wins against scissors'
  end

  def result_against_paper
    'Paper loses against scissors'
  end

end

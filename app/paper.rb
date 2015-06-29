class Paper
  def versus opponent
    opponent.result_against_paper
  end

  def result_against_scissors
    'Scissors wins against paper'
  end

  def result_against_rock
    'Rock loses against paper'
  end

  def result_against_paper
    'Paper draws against paper'
  end

end

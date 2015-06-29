# add module HandSign which covers results against unknown things and adding new types of opponent
class Rock
  def versus opponent
    opponent.result_against_rock
  end

  def result_against_paper
    'Paper wins against rock'
  end

  def result_against_scissors
    'Scissors loses against rock'
  end

  def result_against_rock
    'Rock draws against rock'
  end
end

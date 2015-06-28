# add module HandSign which covers results against unknown things and adding new types of opponent
class Rock
  def versus opponent
    opponent.result_against_rock
  end

  def result_against_paper
    'paper wins'
  end

  def result_against_scissors
    'scissors loses'
  end

  def result_against_rock
    'rock draws'
  end
end

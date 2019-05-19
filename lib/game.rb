class Game

  def initialize(play)
    @play = play
  end

  # 1 = rock, 2 = paper, 3 = scissors
  def random
    @num = @play.number + [1, 2, 3].sample
  end
end

require_relative 'game'

class Computer
  attr_reader :score
  DEFAULT_SCORE = 0

  def initialize(score = DEFAULT_SCORE)
    @score = score
  end

  def random_choice
    Game::WEAPONS.sample
  end

  def add_win
    @score += 1
  end

end

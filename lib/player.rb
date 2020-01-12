require_relative 'random_choice'

class Player
  attr_reader :score, :name

  def initialize(name, score = 0)
    @name = name
    @score = score
  end

  def increment_score(increment_amount = 0)
    @score += increment_amount
  end

  def random_choice
    choice = RandomChoice.new.return_random_choice 
  end
end

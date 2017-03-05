require_relative 'game'

class Computer

  attr_reader :options, :name, :score

  def initialize
    @options = Game::OPTIONS
    @name = "The Computer"
    @score = 0
  end

  def add_point
    @score += 1
  end

  def generate_rand_option
    @random_choice = options.sample
  end



end

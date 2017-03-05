require_relative 'game'

class Computer

  attr_reader :options, :name

  def initialize
    @options = Game::OPTIONS
    @name = "The Computer"
  end

  def generate_rand_option
    @random_choice = options.sample
  end

end

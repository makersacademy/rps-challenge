require_relative 'game'

class Computer

  attr_reader :options

  def initialize
    @options = Game::OPTIONS
  end

  def generate_rand_option
    @random_choice = options.sample
  end

end

require 'Game'
class Computer

  attr_reader :computer_options

  def initialize(computer_options)
    computer_options = Game::DEFAULT_OPTIONS
    @computer_options = computer_options

  end

  def computer_choice
    @computer_options.sample
  end

  def print_computer_choice
    @computer_options.map do |element|
      "Computer chose #{element.capitalize}"
    end
  end


end
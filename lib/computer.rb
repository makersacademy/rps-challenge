require_relative 'game'

class Computer

  attr_reader :name, :computer_selection

  def initialize
    @name = "Computer"
  end

  def option
    @computer_selection = Game::COMPUTER_OPTIONS.sample
  end

end

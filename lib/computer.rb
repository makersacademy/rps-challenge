require_relative 'game'

class Computer

  attr_reader :name

  def initialize
    @name = "Computer"
  end

  def option
    @computer_selections = GAME::COMPUTER_OPTIONS.sample
  end

end

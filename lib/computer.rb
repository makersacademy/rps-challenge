require "delegate"
require_relative "./game.rb"

class Computer < SimpleDelegator
  attr_reader :name, :computer_move


  def initialize
    @name = "Computer"
    @computer_move = nil
  end

  def computer_move_do
    Game::OPTIONS_ARR.sample
  end

end

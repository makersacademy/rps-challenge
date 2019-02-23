require "delegate"

class Computer < SimpleDelegator
  attr_reader :options_arr, :computer_move
  OPTIONS_ARR = ["rock", "paper", "scissors"]

  def initialize
    @computer_move = nil
  end

  def computer_move_do
    OPTIONS_ARR.sample
  end

end

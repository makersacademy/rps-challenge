require_relative 'computer'

class Game
  OPTIONS = [:rock, :paper, :scissors]
  RULES = {
  :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
  :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
  :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
  }

  attr_reader :player, :winner, :computer_choice
  attr_accessor :choice

  def initialize(player)
    @player = player
    @choice = nil
    @computer = Computer.new
    @computer_choice = nil
  end

  def ask_computer
    @computer_choice = @computer.choice
  end

  def result
    RULES[@choice.to_sym][computer_choice]
  end

end

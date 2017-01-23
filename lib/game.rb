require_relative 'computer'
require_relative 'player'

class Game

  @instance = nil

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    self.class.instance = self
  end

  # ------------- CLASS INSTANCE VARIABLES -------------

  def self.instance
    @instance
  end

  def self.instance=(something)
    @instance = something
  end

  # ------------------ PUBLIC METHODS ------------------

  def place_moves(choice)
    @player.select_choice(choice)
    @computer.select_choice
  end

  def result(moves = [player.choice, computer.choice])
    return :draw if moves[0] == moves[1]
    return [
      [:rock, :scissors],
      [:paper, :rock],
      [:scissors, :paper]].include?(moves) ? :win : :lost
  end

end

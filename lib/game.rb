require_relative 'computer'

class Game
  attr_reader :player, :computer

  @game_name = nil

  def self.instance
    @game_name
  end

  def self.instance=(value)
    @game_name = value
  end

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
    self.class.instance = self
  end

  def computer_rps
    computer.rock_paper_scissors
  end

  def player_rps
  end

end

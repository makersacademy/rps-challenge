require_relative './computer'

class Game

  attr_reader :player, :computer, :player_choice, :computer_choice

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
    paper: :rock,
    scissors: :paper }

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
    @computer_choice = @computer.choice
  end

  def player
    @player
  end

  def computer
    @computer
  end
  
  def player_choice=(weapon)
    @player_choice = weapon
  end

  def result
    return :draw if @player_choice == @computer_choice
    [RULES[@player_choice] == @computer_choice] ? :win : :lose
  end
end
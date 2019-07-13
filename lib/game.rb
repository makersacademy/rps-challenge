require_relative './computer'

class Game

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    computer_turn = @computer.computer_turn
    if @player.chosen_item == computer_turn
      return "It's a draw!"
    elsif RULES[@player.chosen_item] == computer_turn
      return "#{@player.name} wins!"
    else
      return "#{@player.name} loses!"
    end
  end

end

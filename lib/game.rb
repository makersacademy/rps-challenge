require_relative 'computer'

class Game

  attr_reader :player, :computer

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def check_result
    if @computer.weapon == @player.choice
      "It's a draw!"
    elsif @computer.weapon == 'Scissors' && @player.choice == 'Paper'
      'Computer wins!'
    elsif @computer.weapon == 'Rock' && @player.choice == 'Scissors'
      'Computer wins!'
    elsif @computer.weapon == 'Paper' && @player.choice == 'Rock'
      'Computer wins!'
    else
      'You win!'
    end
  end

end

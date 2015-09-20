require_relative 'player'

class Game

  attr_reader :player, :computer

  def initialize(player = Player.new, computer = Player.new)
    @player = player
    @computer = computer
  end

  def play
		if player.choice == computer.choice
      "It's a tie!"
    elsif player.choice == :rock && computer.choice == :scissors ||
       player.choice == :paper && computer.choice == :rock ||
       player.choice == :scissors && computer.choice == :paper
      "You win!"
    else
      "You lost!"
    end
  end

end

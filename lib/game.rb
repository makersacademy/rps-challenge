require_relative 'player'

class Game
  attr_reader :winner, :computer_choice, :player, :player_2

  DEFAULT_OPTIONS = [:rock, :paper, :scissors]

  def initialize(player, player_2 = nil)
    @player = player
    @options = DEFAULT_OPTIONS
    @computer_choice = self.generate_random
    @outcome = {
      win: "Yay! You win!",
      tie: "Tie!",
      lose: "Boo! You lost!"
    }
  end
  
  def generate_random
   @options.sample
  end

  def winner
    case @computer_choice
    when :scissors
      case @player.choice
      when :rock
        @outcome[:win]
      when :paper
        @outcome[:lose]
      else
        @outcome[:tie]
      end
    when :rock
      case @player.choice
      when :rock
        @outcome[:tie]
      when :paper
        @outcome[:win]
      else
        @outcome[:lose]
      end
    when :paper
      case @player.choice
      when :rock
        @outcome[:lose]
      when :paper
        @outcome[:tie]
      else
        @outcome[:win]
      end
    end
  end
end
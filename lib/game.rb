class Game
  attr_reader :winner, :computer_choice, :player_choice

  DEFAULT_OPTIONS = [:rock, :paper, :scissors]

  def initialize(player_choice)
    @player_choice = player_choice.to_sym
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
      case @player_choice
      when :rock
        @outcome[:win]
      when :paper
        @outcome[:lose]
      else
        @outcome[:tie]
      end
    when :rock
      case @player_choice
      when :rock
        @outcome[:tie]
      when :paper
        @outcome[:win]
      else
        @outcome[:lose]
      end
    when :paper
      case @player_choice
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
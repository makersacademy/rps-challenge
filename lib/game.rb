class Game
  attr_reader :player, :cpu

  def self.create(player, cpu)
    @game = Game.new(player, cpu)
  end

  def self.access
    @game
  end

  def initialize(player, cpu)
    @player = player
    @cpu = cpu
  end

  def result_message(player)
    case result
    when :player_win
      "Congratulations, #{player}, you won Rock-Paper-Scissors!"
    when :cpu_win
      "Sorry, #{player}, looks like you lost the game. Better luck next time!"
    when :draw
      "You both chose the same thing - the game is a draw!"
    end
  end

  def result
    case @player.selection
    when :rock
      rock_calculator
    when :paper
      paper_calculator
    when :scissors
      scissors_calculator
    end
  end

  def rock_calculator
    case @cpu.selection
    when :scissors
      :player_win
    when :paper
      :cpu_win
    when :rock
      :draw
    end
  end

  def paper_calculator
    case @cpu.selection
    when :rock
      :player_win
    when :scissors
      :cpu_win
    when :paper
      :draw
    end
  end

  def scissors_calculator
    case @cpu.selection
    when :paper
      :player_win
    when :rock
      :cpu_win
    when :scissors
      :draw
    end
  end
end

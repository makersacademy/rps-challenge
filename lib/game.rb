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

  def result
    case @player.selection
    when :rock
      rock_calculator
    when :paper
      paper_calculator
    when :scissors
      scissors
    end
  end

  def rock_calculator
    if @cpu.selection == :scissors
      :player_win
    elsif @cpu.selection == :paper
      :cpu_win
    else
      :draw
    end
  end
end

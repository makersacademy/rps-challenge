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
      scissors_calculator
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

  def paper_calculator
    if @cpu.selection == :rock
      :player_win
    elsif @cpu.selection == :scissors
      :cpu_win
    else
      :draw
    end
  end

  def scissors_calculator
    if @cpu.selection == :paper
      :player_win
    elsif @cpu.selection == :rock
      :cpu_win
    else
      :draw
    end
  end
end

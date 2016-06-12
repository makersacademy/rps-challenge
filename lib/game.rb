require_relative 'cpu'

class Game

  attr_reader :player

  def initialize(name, choice, cpu_choice)
    @player = name
    @choice = choice
    @cpu_choice = cpu_choice
  end

  def self.run(name, choice, cpu_choice = Cpu.new)
    new(name, choice, cpu_choice).winner
  end

  def winner
    if choice == cpu_choice
      "Draw"
    elsif choice == :rock
      cpu_choice == :paper ? "CPU Wins" : "#{@player} Wins"
    elsif choice == :paper
      cpu_choice == :scissors ? "CPU Wins" : "#{@player} Wins"
    elsif choice == :scissors
      cpu_choice == :rock ? "CPU Wins" : "#{@player} Wins"
    end
  end

  private

  attr_reader :choice, :cpu_choice

end

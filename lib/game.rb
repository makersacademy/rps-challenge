require_relative 'cpu'

class Game

  attr_reader :player

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(name, choice, cpu_choice)
    @player = name
    @choice = choice
    @cpu_choice = cpu_choice
  end

  def self.run(name, choice, cpu_choice = Cpu.run)
    new(name, choice, cpu_choice).winner
  end

  def winner
    return "Draw" if choice == cpu_choice
    RULES[choice] == cpu_choice ? "#{player} Wins" : "CPU Wins"
  end

  private

  attr_reader :choice, :cpu_choice

end

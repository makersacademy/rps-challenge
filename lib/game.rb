require_relative 'cpu'

class Game

  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  def initialize(choice, cpu_choice)
    @choice = choice
    @cpu_choice = cpu_choice
  end

  def self.run(choice, cpu_choice = Cpu.run)
    new(choice, cpu_choice).winner
  end

  def winner
    return :draw if choice == cpu_choice
    RULES[choice] == cpu_choice ? :win : :lose
  end

  private

  attr_reader :choice, :cpu_choice

end

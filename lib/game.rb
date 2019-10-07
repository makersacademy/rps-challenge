require_relative 'cpu'

class Game

  attr_reader :cpu_choice, :p1_choice

  def initialize(p1_choice, cpu = Cpu.new)
    @p1_choice = p1_choice
    @cpu_choice = cpu.choice
  end

  def result
    RULES[@p1_choice.to_sym][@cpu_choice.to_sym]
  end

  WIN = 'YOU WON!'
  LOSS = 'CPU WON!'
  DRAW = 'IT WAS A DRAW!'

  RULES = {
    ROCK: { ROCK: DRAW, PAPER: LOSS, SCISSORS: WIN },
    PAPER: { ROCK: WIN, PAPER: DRAW, SCISSORS: LOSS },
    SCISSORS: { ROCK: LOSS, PAPER: WIN, SCISSORS: DRAW }
    }

end

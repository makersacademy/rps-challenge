require './cpu.rb'

class Game

  def initialize(p1_choice, cpu = Cpu.new)
    @p1_choice = p1_choice
    @cpu_choice = cpu.choice
  end

  attr_reader :cpu_choice, :p1_choice

  def result
    if @p1_choice == @cpu_choice
      DRAW
    elsif @p1_choice == 'ROCK'
      @cpu_choice == 'SCISSORS' ? WIN : LOSS
    elsif @p1_choice == 'PAPER'
      @cpu_choice == 'ROCK' ? WIN : LOSS
    elsif @p1_choice == 'SCISSORS'
      @cpu_choice == 'PAPER' ? WIN : LOSS
    end
  end

  WIN = 'YOU WON!'
  LOSS = 'CPU WON!'
  DRAW = 'IT WAS A DRAW!'

end

require './cpu.rb'

class Game

  def initialize(p1_choice, cpu = Cpu.new)
    @p1_choice = p1_choice
    @cpu_choice = cpu.choice
  end

  attr_reader :cpu_choice

  def result
    if @p1_choice == @cpu_choice
      'IT WAS A DRAW!'
    elsif @p1_choice == 'ROCK'
      @cpu_choice == 'SCISSORS' ? 'YOU WON!' : 'CPU WON!'
    elsif @p1_choice == 'PAPER'
      @cpu_choice == 'ROCK' ? 'YOU WON!' : 'CPU WON!'
    elsif @p1_choice == 'SCISSORS'
      @cpu_choice == 'PAPER' ? 'YOU WON!' : 'CPU WON!'
    end
  end

end

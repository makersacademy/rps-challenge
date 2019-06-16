require './lib/cpu.rb'
require './lib/user.rb'

class Game
  attr_reader :user, :cpu

  def initialize(user, cpu = CPU.new)
    @user = user
    @cpu = cpu
  end

  def result(cpu)
    @cpu_input = cpu
    return "Pair!" if @user.input == @cpu_input
    return paper_scissor if @user.input == "Rock"
    return scissor_rock if @user.input == "Paper"
    return paper_rock if @user.input == "Scissors"
  end

  def paper_scissor
    return 'You Loose!' if @cpu_input == "Paper"
    return 'You Win!' if @cpu_input == "Scissors"
  end

  def scissor_rock
    return 'You Loose!' if @cpu_input == "Scissors"
    return 'You Win!' if @cpu_input == "Rock"
  end

  def paper_rock
    return 'You Loose!' if @cpu_input == "Rock"
    return 'You Win!' if @cpu_input == "Paper"
  end
end

require './lib/cpu.rb'
require './lib/user.rb'

class Game
  attr_reader :user, :cpu

  def initialize(user, cpu)
    @user = user
    @cpu = cpu
    @combo = [['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']]
  end

  def user_input
    @user.input
  end

  def cpu_input
    @cpu.random
  end

  def result
    reset
    if !user_input.nil?
      return 'Draw!' if user_input == @cpu.input
      return winner if @combo.include?(hand())
      return looser if !@combo.include?(hand())
    end
  end

  private

  def reset
    p @cpu.score
    if @cpu.score == 0 || @user.score == 0
      @cpu.reset_score
      @user.reset_score
    end
  end

  def winner
    cpu_score
    return 'You win!'
  end

  def looser
    user_score
    return'You loose!' 
  end

  def cpu_score
    @cpu.calc_score 
  end

  def user_score
    @user.calc_score
  end

  def hand
    [user_input, @cpu.input]
  end

  def self.create(user, cpu)
    @game = Game.new(user, cpu)
  end

  def self.instance
    @game
  end
end

require './lib/cpu.rb'
require './lib/user.rb'

class Game
  attr_reader :user, :cpu

  def initialize(user, cpu)
    @user = user
    @cpu = cpu
    @combo = [['rock', 'scissor'], ['paper', 'rock'], ['scissor', 'paper']]
  end

  def user_input
    @user.input
  end

  def result(user_input, cpu)
    return 'Draw!' if user_input == cpu
    return 'You win!' if @combo.include?(hand(user_input, cpu))
    return 'You loose!' if !@combo.include?(hand(user_input, cpu))
  end

  def self.instance
    @game
  end

  private

  def hand(user_input, cpu)
    @hand = [user_input, cpu]
  end

  def self.create(user, cpu)
    @game = Game.new(user, cpu)
  end
end

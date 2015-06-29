require_relative 'game'

class Player
  attr_accessor :name, :own_choice, :opponent_choice, :opponent

  def initialize
    @own_choice = ''
    @opponent_choice = ''
  end

  def choose(arg)
    @own_choice = arg
    opponent.receive(arg)
  end

  def receive(arg)
    @opponent_choice = arg
  end

  def won?
    if (@own_choice == 'rock' && @opponent_choice == 'scissors') || (@own_choice == 'scissors' && @opponent_choice == 'paper') || (@own_choice == 'paper' && @opponent_choice == 'rock')
      return true
    else
      return false
    end
  end
end

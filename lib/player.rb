require_relative 'game'

class Player
  attr_accessor :name, :own_choice, :opponent_choice
  attr_reader   :opponent

  def initialize
    @own_choice = ''
    @opponent_choice = ''
  end

  def choose(arg)
    @own_choice = arg
  end

  def receive(arg)
    @opponent_choice = arg
  end

  def win?
    
  end
end

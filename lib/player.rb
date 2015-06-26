require_relative 'game'

class Player
  attr_accessor :name, :choice
  attr_reader   :opponent,

  def initialize
    @choice = ''
  end

  def choose(arg)
    @choice = 'rock'
  end

  def receive(arg)
    arg
  end

  def win_lose

  end
end

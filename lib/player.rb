require_relative 'game'

class Player
  attr_accessor :name, :choice
  attr_reader   :opponent

  def choose(arg)
    arg
  end

  def receive(arg)
    arg
  end

  def win_lose

  end
end

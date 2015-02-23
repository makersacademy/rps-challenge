module Moves

  attr_accessor :choice

  def move
    move = { 1 => "rock", 2 => "paper", 3 => "scissors", 4 => "lizard", 5 => "spock" }
  end

  def random
    number = 1 + rand(5)
    @choice = move[number]
  end

  def make_move(num)
    @choice = move[num]
  end

end
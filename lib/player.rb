# Might be human or computer, makes a move choice and has a name

class Player
  attr_reader :name, :choice
  
  def initialize(name = "Computer")
    @name = name
  end

  def choose(move)
    @choice = move
  end

  def choose_random
    @choice = [:rock, :paper, :scissors].sample
  end
end

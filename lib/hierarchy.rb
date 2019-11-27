class Hierarchy
  def initialize rules
    @beats = rules 
  end

  def moves
    @beats.keys
  end

  def wins move1, move2
    return if move1 == move2
    return move1 if move2 == @beats[move1]
    move2
  end
end

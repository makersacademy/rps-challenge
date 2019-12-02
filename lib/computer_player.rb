class ComputerPlayer
  def initialize hierarchy
    @moves = hierarchy.moves
  end

  def move
    @moves.sample
  end
end

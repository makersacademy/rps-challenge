class ComputerPlayer

  attr_reader :valid_moves

  def initialize
    @valid_moves = [:rock, :paper, :scissors]
  end

  def randomly_chooses
    valid_moves.sample
  end

end
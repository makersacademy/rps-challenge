class Player

  def initialize(choice)
    @choice
  end

  def choose(move)
    moves = [:rock, :paper, :scissors]
    moves.include?(move) ? move : 'choose one of these options - :rock, :paper, :scissors'
  end

end

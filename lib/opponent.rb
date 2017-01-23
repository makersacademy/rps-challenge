module Opponent

  MOVES = [:rock, :paper, :scissors, :lizard, :spock]

  def self.choose_move
    MOVES.sample
  end

end

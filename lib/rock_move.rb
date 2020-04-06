class RockMove
  def initialize
    @type = :rock
  end

  def winner_vs(move)
    if move.type == :rock
      nil
    elsif move.type == :paper
      move
    else
      self
    end
  end
end
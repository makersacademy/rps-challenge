class ScissorsMove
  attr_reader :type
  def initialize
    @type = :scissors
  end

  def winner_vs(move)
    if move.type == :rock
      move
    elsif move.type == :paper
      self
    else
      nil
    end
  end
end
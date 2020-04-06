class PaperMove
  def initialize
    @type = :paper
  end

  def winner_vs(move)
    if move.type == :rock
      self
    elsif move.type == :paper
      nil
    else
      move
    end
  end
end
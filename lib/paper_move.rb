class PaperMove
  attr_reader :type

  def initialize
    @type = :paper
  end

  def winner_vs(move)
    if move.type == :rock
      self
    elsif move.type == :paper
      p 'here'
      nil
    else
      move
    end
  end
end
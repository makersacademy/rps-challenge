class PaperMove
  attr_reader :type

  def initialize
    @type = :paper
  end

  def winner_vs(move)
    case move.type
    when :lizard
      move
    when :paper
      nil
    when :rock
      self
    when :scissors
      move
    when :spock
      self
    end
  end
end

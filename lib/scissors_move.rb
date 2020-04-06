class ScissorsMove
  attr_reader :type
  def initialize
    @type = :scissors
  end

  def winner_vs(move)
    case move.type
    when :lizard
      self
    when :paper
      self
    when :rock
      move
    when :scissors
      nil
    when :spock
      move
    end
  end
end

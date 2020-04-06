class LizardMove
  attr_reader :type

  def initialize
    @type = :lizard
  end

  def winner_vs(move)
    case move.type
    when :lizard
      nil
    when :paper
      self
    when :rock
      move
    when :scissors
      move
    when :spock
      self
    end
  end
end

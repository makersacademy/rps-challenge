class RockMove
  attr_reader :type

  def initialize
    @type = :rock
  end

  def winner_vs(move)
    case move.type
    when :lizard
      self
    when :paper
      move
    when :rock
      nil
    when :scissors
      self
    when :spock
      move
    end
  end
end

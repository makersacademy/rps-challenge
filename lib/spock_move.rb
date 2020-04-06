class SpockMove
  attr_reader :type
  def initialize
    @type = :spock
  end

  def winner_vs(move)
    case(move.type)
    when :lizard
      move
    when :paper
      move
    when :rock
      self
    when :scissors
      self
    when :spock
      nil
    end
  end
end
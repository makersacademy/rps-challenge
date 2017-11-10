require_relative 'choice'

class Paper
  def initialize
    @name = :paper
    @kills = [:rock]
  end

  include Choice
end

class Scissors
  def initialize
    @name = :scissors
    @kills = [:paper]
  end

  include Choice
end

class Rock
  def initialize
    @name = :rock
    @kills = [:scissors]
  end

  include Choice
end

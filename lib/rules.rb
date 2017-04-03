require_relative 'hand'

class Rules

  def self.lizard
    @hands = [:rock, :lizard, :spock, :scissors, :paper]
    @rules = {}
    @hands.each do |x|
      @rules[x] = [@hands[@hands.index(x)-2], @hands[@hands.index(x)-4] ]
    end
    @rules
  end

end

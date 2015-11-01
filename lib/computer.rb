class Computer
  attr_reader :name, :hand
  def initialize(rules_klass)
    @rules = rules_klass.new
    @name = "Computer"
    @hand = nil
  end

  def hand=(_hand = nil)
    @hand = @rules.hands.sample
  end
end


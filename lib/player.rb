require_relative 'rules'

class Player

  attr_reader :name, :hand, :rules

  def initialize(name)
    @name = name
    @rules = Rules.spock
  end

  def set_hand(hand)
    @hand = rules[hand]
  end

  def robot
    @hand = rules.values.sample
  end

end

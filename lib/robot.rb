require_relative 'rules'

class Robot

  attr_reader :name, :hand, :rules

  def initialize
    @name = 'The computer'
    @rules = Rules.spock
  end

  def set_hand 
    @hand = rules.values.sample
  end

end

require_relative 'hands'
require_relative 'utilities_module'

class Computer
  include Utilities

  def initialize(hands = Hands.new)
    @hands = hands.show
    @name = "The Computer"
  end

  def name
    titleize(@name)
  end

  def hand
    select_random
  end

  private
  attr_reader :hands, :hands_values

  def select_random
    hands[rand(0..hands.count-1)].to_s
  end
end

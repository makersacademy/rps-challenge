require_relative 'choose'

class Player

  attr_reader :name, :choose

  def initialize(name)
    @name = name
  end

  def choose(decision)
    @choose = Choose.new(decision)
  end

  def comp_decision(randomiser = nil)
    randomiser ||= [:rock, :paper, :scissors].sample
    choose(randomiser)
  end
end

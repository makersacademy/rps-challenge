require_relative 'game'

class Player

  attr_reader :name, :choice

  CHOICE_ARRAY = [:rock, :paper, :scissors]

  def initialize(name)
    @name = name
  end

  def choice
    @choice = CHOICE_ARRAY.sample
  end
end

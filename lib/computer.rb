require_relative "weapons"

# Understanding a move
class Computer
  attr_reader :name, :choice
  DEFAULT_NAMES = ["Hugh Jass", "I.P. Freely", "Amanda Hugginkiss"].freeze

  def initialize
    @name = DEFAULT_NAMES.sample
  end

  def make_choice
    @choice = WEAPONS.sample
  end
end

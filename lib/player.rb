require_relative 'random_choice'

class Player
  attr_reader :name, :choice
  def initialize(name, choice = RandomChoice.choice)
    @name = name
    @choice = choice
  end
end

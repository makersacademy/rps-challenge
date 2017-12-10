require_relative 'choice'

class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(item = random_item)
    @choice = Choice.new(item)
  end

  def random_item
    random = [:rock, :paper, :scissors, :spock, :lizard].sample
    choose(random)
  end
end

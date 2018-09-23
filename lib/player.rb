class Player

  attr_reader :name
  attr_accessor :choice

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end
end

class Player
  def initialize(name)
    @name = name
    @choice = nil
  end
  attr_reader :name, :choice

  def choose(choice)
    @choice = choice
  end
end

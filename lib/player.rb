class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end

end

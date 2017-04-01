class Player
  attr_reader :name, :choice, :choose

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end

end

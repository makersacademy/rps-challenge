class Player

  attr_reader :name, :choose

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end

end

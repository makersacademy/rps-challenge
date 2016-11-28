class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @weapon = choice
  end

end

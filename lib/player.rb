class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def play(choice)
    @weapon = choice
  end

end

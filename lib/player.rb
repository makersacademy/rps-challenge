class Player

  attr_reader :choice

  def initialize(name)
    @name = name
  end

  attr_reader :name

  def choose=(choice)
    @choice = choice
  end
end

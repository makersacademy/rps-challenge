class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def selects(choice)
    @choice = choice
  end
end

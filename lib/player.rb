class Player
  attr_reader :name, :choice

  def initialize(name = nil)
    @name = name
  end

  def select(choice)
    @choice = choice
  end

end

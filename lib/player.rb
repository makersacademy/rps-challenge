class Player
  def initialize(name)
    @name = name
  end

  def move(choice)
    @choice = choice
  end

  attr_reader :name, :choice
end

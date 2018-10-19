class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def move(choice)
    @choice = choice
  end

end

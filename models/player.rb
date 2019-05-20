class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def move(choice)
    @move = choice
  end

end
class Player
  attr_reader :name, :moved
  def initialize(name)
    @name = name
  end

  def move(choice)
    @moved = choice
  end
end

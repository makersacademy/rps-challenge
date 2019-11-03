class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @move = choice
  end
end

class Player
  attr_reader :name, :selection

  def initialize(name)
    @name = name
    @selection = nil
  end

  def move(choice)
    @selection = choice
  end
end

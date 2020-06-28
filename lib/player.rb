class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @choice = choice
  end

  def choice
    "rock"
  end

end

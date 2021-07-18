class Player
  attr_reader :name
  attr_reader :selection

  def initialize(name)
    @name = name
  end

  def choose(selection)
    @selection = selection
  end
end

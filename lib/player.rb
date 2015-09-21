class Player

  attr_reader :name, :turns

  def initialize(name)
    @name = name
    @turns = []
  end

  def choose(option)
    turns << option
    option
  end

end

class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def move(action)
    @action = action
  end

end

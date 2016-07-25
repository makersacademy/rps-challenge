class Player

  attr_reader :name, :action

  def initialize(name)
    @name = name
  end

  def move(action)
    @action = action
  end

end

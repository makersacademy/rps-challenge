class Player

  attr_reader :name, :action

  def initialize(name)
    @name = name
    @action
  end

  def set_action(move)
    @action = move
  end
end

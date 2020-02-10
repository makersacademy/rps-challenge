class Player

  attr_reader :name, :action

  def initialize(name)
    @name = name
    @action = nil
  end

  def allocate(move)
    @action = move
  end
end

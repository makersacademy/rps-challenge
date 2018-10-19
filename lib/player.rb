class Player

  attr_reader :name, :current_pick

  def initialize(name)
    @name = name
  end

  def pick(item)
    @current_pick = item
  end

end

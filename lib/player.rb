class Player

  attr_reader :current_pick, :name

  def initialize(name)
    @name = name
  end

  def pick(item)
    @current_pick = item
  end

end

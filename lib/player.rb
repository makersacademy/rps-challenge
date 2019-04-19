class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def make_decision(chosen)
    @choice = chosen
  end

end

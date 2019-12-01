class Player
  attr_reader :name, :choice

  def initialize(name = "Computer")
    @name = name
    @choice = nil
  end

  def choose(option)
    @choice = option
  end

end

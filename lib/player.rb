class Player
  attr_reader :choice

  def initialize(name)
    @name =name
  end

  def choice(option)
    @choice = option
  end

  def name
    @name
  end

end

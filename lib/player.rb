class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def picks(option)
    @choice = option
  end
end

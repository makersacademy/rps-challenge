class Player
  attr_reader :name, :shape

  def initialize(name)
    @name = name
    @shape = nil
  end
end
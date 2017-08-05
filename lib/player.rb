class Player

  attr_reader :name
  attr_accessor :weapon
  def initialize(name)
    @name = name
    @weapon = nil
  end

end

class Player
  attr_reader :name
  attr_accessor :weapon

  def initialize(name, weapon = nil)
    @name = name
    @weapon = weapon
  end
end

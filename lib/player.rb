class Player

  attr_reader :name, :weapon
  # attr_accessor :weapon

  def initialize(name, weapon = "")
    @name = name
    @weapon = weapon
  end
  
end

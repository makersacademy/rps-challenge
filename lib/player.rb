class Player
  attr_reader :name, :weapon
  attr_writer :weapon
  
  def initialize(name)
    @name = name
    @weapon = nil
  end 	
end	

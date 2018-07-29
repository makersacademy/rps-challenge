class Player 
  attr_reader :name
  attr_accessor :weapon 
  def initialize(name=nil, weapon=nil)
    @name = name
    @weapon = nil
  end 
end

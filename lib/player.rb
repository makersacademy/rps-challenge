class Player
  
  attr_reader :name
  attr_accessor :weapon

  def initialize(name = 'Thor')
    @name = name
  end
end

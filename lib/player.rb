class Player
  attr_reader :name
  attr_accessor :move
  
  def initialize(name = 'Hal3000')
    @name = name.capitalize
    @move = nil
  end
end
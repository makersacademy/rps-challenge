class Player
  attr_reader :name
  
  def initialize(name = 'Hal3000')
    @name = name.capitalize 
  end
end
class Player
  
  attr_reader :name
  attr_writer :weapon

  def initialize(name = 'Thor')
    @name = name
  end

end

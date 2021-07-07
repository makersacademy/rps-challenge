class Player
  attr_reader :name, :throw

  def initialize(name)
    @name = name
  end

  def add(throw)
    @throw = throw
  end
  
end

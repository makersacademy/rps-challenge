class Player
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def add(throw)
    @throw = throw
  end

  def show_throw
    @throw
  end
end

class Player

  attr_reader :name
  attr_accessor :move

  def initialize(name)
    @name = name
  end

  def move
    {"#{@name}" => "#{@move}"}
  end

end
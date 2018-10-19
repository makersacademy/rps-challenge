class Player

  attr_reader :name, :playertype

  def initialize(name = "computer", playertype = "computer")
    @name = name
    @playertype = playertype
  end

end

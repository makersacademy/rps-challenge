class Player

  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end

end

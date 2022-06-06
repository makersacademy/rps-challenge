class Player
  attr_accessor :name, :choice

  def initialize(name)
    @name = name
  end

  def add(choice)
    @choice = choice
  end

end

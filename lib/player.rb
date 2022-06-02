class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add(choice)
    @choice = choice
  end

  def choice
    @choice
  end

end

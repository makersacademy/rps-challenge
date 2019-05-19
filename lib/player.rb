class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def selection(choice)
    @choice = choice
  end

end

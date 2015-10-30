class Gamer

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def option(choice)
    @choice = choice
  end

end

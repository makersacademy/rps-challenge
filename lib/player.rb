class Player

 attr_accessor :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end

end

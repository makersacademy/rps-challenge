class Player

  attr_reader :name, :choice


  def initialize(name)
    @name = name
  end

  def weapon(choice)
    @choice = choice
  end

end

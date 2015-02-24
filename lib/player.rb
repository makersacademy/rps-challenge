class Player

  attr_reader :name, :choice

  def initialize
    @name = name
    @choice
  end

  def name_player(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end

end
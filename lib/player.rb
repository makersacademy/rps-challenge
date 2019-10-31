class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose
    player.choice(choice)
  end

  def choice(choice)
    @choice = choice
  end

end

class Player

  attr_reader :name, :choice

  def initialize(name = "Player")
    @name = name
  end

  def choose(choice)
    @choice = choice.to_sym
  end

end

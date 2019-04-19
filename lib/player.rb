class Player
  attr_reader :name, :chosen

  def initialize(name)
    @name = name
  end

  def make_decision(choice)
    @chosen = choice
  end

end

class Player

  attr_reader :name, :choice

  def initialize(name, choice = nil)
    @name = name
    @choice = choice
  end

  def choose(choice)
    @choice = choice.to_sym
  end

end

class Player
  attr_reader :name, :choice

  def initialize(name, choice = nil)
    @name = name
    @choice = choice
  end

  def add_choice(choice)
    @choice = choice.to_sym
  end

end

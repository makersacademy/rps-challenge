class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def set_choice(choice)
    @choice = choice
  end
end

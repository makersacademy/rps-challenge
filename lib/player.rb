class Player

  def initialize(name)
    @name = name
    @choice

  end

  attr_reader :name, :choice

  def update_choice(choice)
    @choice = choice
  end
end

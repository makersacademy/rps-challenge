class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def update_choice(choice)
    @choice = choice
  end
end

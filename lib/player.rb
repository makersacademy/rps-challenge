class Player
  attr_reader :choice, :name
  def initialize(name)
    @name = name
  end

  def store_choice(choice)
    @choice = choice
  end

end

class Player
  attr_accessor :choice, :name
  def initialize(name)
    @name = name
    @choice
  end

  def store_choice(choice)
    @choice = choice
  end

end

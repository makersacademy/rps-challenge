class Player
  attr_reader :name, :move_choice

  def initialize(name)
    @name = name
    @move_choice
  end

  def move(choice)
    @move_choice = choice
  end
  
end
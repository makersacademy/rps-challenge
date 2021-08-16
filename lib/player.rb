class Player
  attr_reader :name, :move_choice

  def initialize(name)
    @name = name
  end

  def move(choice)
    @move_choice = choice.downcase
  end
  
end

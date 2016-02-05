class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def move_choice(choice)
    @move = choice
  end
end

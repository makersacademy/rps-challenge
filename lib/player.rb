class Player

  attr_reader :name, :weapon

  def initialize(player1)
    @name = player1
  end

  def move(choice)
    @weapon = choice
  end

end

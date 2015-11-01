class Player

attr_reader :name, :move_choice

  def initialize(name)
    @name = name
    @move_choice
  end

  def rock
    @move_choice = "rock"
  end

  def paper
    @move_choice = "paper"
  end

  def scissors
    @move_choice = "scissors"
  end

end

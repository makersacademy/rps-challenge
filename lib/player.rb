class Player 

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def pick(rock_paper_or_scissors)
    @move = rock_paper_or_scissors
  end

end
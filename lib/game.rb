class Game

  attr_reader :choice

  def initialize(choice)
    @choice = choice
  end

  # 0 stands for rock , 1 stands for paper, 2 stands for scissors

  def computersays
    rand(0..2)
  end

end

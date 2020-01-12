class Computer
  attr_reader :choice, :name

  def initialize
    @name = "Computer"
    @choice = nil
  end

  def move
    [:rock, :paper, :scissors].sample
  end

  def make_choice(move = self.move)
    @choice = move
  end
  
end

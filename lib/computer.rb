class Computer < Player
  def initialize(name = "Computer")
    @name = name
  end

  def random_throw
    [:rock, :paper, :scissors].sample
  end
end
class Computer
  attr_reader :name, :hand
  def initialize(name)
    @name = name
    @hand_array = [:rock, :paper, :scissors]
  end

  def random_hand
    @hand = @hand_array.sample
  end
end

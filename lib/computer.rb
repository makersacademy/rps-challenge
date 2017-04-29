class Computer
  attr_reader :name, :hand
  def initialize(name)
    @name = name
    @hand = 0
  end

  def random_hand
    @hand = rand(1..3)
  end
end

class Card
  attr_reader :idx
  RANDOM_INDEX = rand(0..2)

  def initialize(idx = RANDOM_INDEX)
    @idx = idx
  end
end

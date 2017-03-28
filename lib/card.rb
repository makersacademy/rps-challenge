class Card
  attr_reader :idx

  def initialize(idx =[0,1,2].sample)
    @idx = idx
  end
end

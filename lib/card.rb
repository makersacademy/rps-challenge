class Card
  attr_reader :index, :id
  RANDOM_INDEX= rand(1..3)

  def initialize(index= RANDOM_INDEX)
    @index= index
    @id= id
  end

  def id
    idx= @index.to_i 
    @id= ["rock", "paper", "scissors"].at(idx-1)
  end
end
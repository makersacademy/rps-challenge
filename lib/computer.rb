class Computer

  attr_reader :weapon, :points

  def initialize
    @points = 0
  end

  def move
    @weapon = ['Rock','Paper','Scissors'].sample
  end

  def name
    'Computer'
  end
end

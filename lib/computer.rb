class Computer

  attr_reader :weapon

  def move
    @weapon = ['Rock','Paper','Scissors'].sample
  end

  def name
    'Computer'
  end
end

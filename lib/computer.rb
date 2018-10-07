class Computer

  attr_reader :name

  def initialize
    @name = 'Rival'
  end

  def move
    ["Bulbasaur", "Squirtle", "Charmander"].sample
  end

end

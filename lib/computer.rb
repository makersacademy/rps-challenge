class Computer
  def initialize
    @name = 'Computer'
    @move = ['Rock', 'Paper', 'Scissors'].sample
  end
  attr_reader :name, :move
end

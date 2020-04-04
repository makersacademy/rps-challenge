class Comp
  def initialize
    @name = 'Computer'
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
  attr_reader :name, :choice
end

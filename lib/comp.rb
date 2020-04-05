class Comp
  def initialize
    @name = 'Computer'
    @choice = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'].sample
  end
  attr_reader :name, :choice
end

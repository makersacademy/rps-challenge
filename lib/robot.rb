class Robot

  attr_reader :name
  attr_accessor :choice 

  def initialize(name = 'Robot')
    @name = name
    @choice = ['Rock', 'Paper', 'Scissors'].sample
  end
end

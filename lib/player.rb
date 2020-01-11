class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end 

  def random_selection
    ['Paper', 'Rock', 'Scissors'].sample
  end




end
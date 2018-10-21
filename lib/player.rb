
#
class Player

  attr_reader :name, :move_made
#
  def initialize(name = 'Computer', move_made = random_pick)
    @name = name
    @move_made = move_made
  end

  def random_pick
    ['Rock', 'Paper', 'Scissors'].sample
  end
  
end

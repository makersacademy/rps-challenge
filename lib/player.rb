class Player

  attr_reader :name
  attr_accessor :selection

  def initialize(name = 'Josh', selection = random_pick)
    @name = name
    @selection = selection
  end

  private
  def random_pick
    ['Rock', 'Paper', 'Scissors'].sample
  end

end

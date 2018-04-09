class Player
  attr_reader :name
  attr_accessor :choice

  def initialize (name)

    @name = name
    @choice

  end

  def rand_choice
    ['Rock!', 'Paper!', 'Scissors!'].sample
  end

end

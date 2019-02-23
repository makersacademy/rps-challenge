class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end

  def make_choice
    num = rand(1..3)
    if num == 1
      @choice = 'Rock'
    elsif num == 2
      @choice = 'Paper'
    else
      @choice = 'Scissors'
    end
  end
end

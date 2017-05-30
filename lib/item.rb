class Item

  attr_reader :index, :name
  protected :index

  def initialize(name, index)
    @index = index
    @name = name
  end

  ROCK = Item.new('Rock', 0)
  PAPER = Item.new('Paper', 2)
  SCISSORS = Item.new('Scissors', 1)
  POSSIBILITIES = [ROCK, PAPER , SCISSORS ]

  def beats(item)
    (@index - item.index) % 3 == 2
  end

end

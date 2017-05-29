class Item

  attr_reader :index, :name

  def self.items
    @items ||= [Item.rock, Item.paper, Item.scissors]
  end

  def self.rock
    @rock ||= Item.new('Rock', 0)
  end

  def self.scissors
    @scissors ||= Item.new('Scissors', 1)
  end

  def self.paper
    @paper ||= Item.new('Paper', 2)
  end

  def initialize(name, index)
    @index = index
    @name = name
  end

  def beats(item)
    (@index - item.index) % 3 == 2
  end

end

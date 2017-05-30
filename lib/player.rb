class Player

  attr_reader :name, :item

  def initialize(name)
    @name = name
    @item = nil
  end

  def choose(item)
    @item = item
  end

end

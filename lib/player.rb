class Player
  attr_reader :name, :chosen_item

  def initialize(name)
    @name = name
  end

  def selects(item)
    @chosen_item = item
  end
end

class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = String.new
  end

  def select_weapon(choice, item)
    @weapon = item.items[choice]
  end

end
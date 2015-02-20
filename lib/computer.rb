class Computer

  attr_reader :weapon

  def initialize
    @weapon = {}
  end

  def random_weapon(item)
    @weapon = item.values.sample
  end

end
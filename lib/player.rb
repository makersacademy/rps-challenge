class Player
  attr_reader :name
  attr_accessor :weapon
  def initialize(name = '')

    raise "No name submit" if name.empty?
    @name = name
  end

  def random(weapons)
    @weapon = weapons.sample
  end

end

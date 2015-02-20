class Marketer

  attr_reader :name

  def initialize
    @name = []
  end

  def add_name(name)
    @name << name
  end

  def choice(weapon)
    weapon
  end


end
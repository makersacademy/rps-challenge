class Marketer

  attr_reader :name, :choice

  def initialize
    @name = []
  end

  def add_name(name)
    @name << name
  end

  def chosen_option(weapon)
    @choice = weapon
  end


end
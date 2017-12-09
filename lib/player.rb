class Player

  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end

  def choose(weapon)
    @choice = Choice.new(weapon)
    raise "You can't use #{@choice.weapon} you oaf! Try again" if !@choice.available?
  end

end

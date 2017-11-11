class Computer

  attr_reader :name, :choice

  def initialize(name = "Siri")
    @name = name
    @choice = {}
  end

  def randomizer
    @choice = Game.options.sample
  end

end

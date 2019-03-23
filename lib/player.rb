class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose(choice)
    @choice = choice
  end

  def choose_random(options)
    @choice = Kernel.rand(options - 1)
  end
end

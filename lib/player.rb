class Player

  attr_reader :choice


  def initialize(name)
    @name = name
    @choice
  end

  def name
    @name
  end

  def choose=(choice)
    @choice = choice
  end
end

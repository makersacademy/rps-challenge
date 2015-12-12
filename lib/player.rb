class Player

  attr_reader :choice, :name

  def initialize(name)
    @name = name
    @choice = nil
  end

  def rps(choice)
    @choice = choice
  end

end

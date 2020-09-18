class Player

  attr_accessor :choice

  def initialize(name)
    @name = name
  end

  def shake(choice)
    @choice = choice
  end

end

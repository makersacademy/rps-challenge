class Player

  attr_accessor :choice, :name

  def initialize(name)
    @name = name
  end

  def shake(choice)
    @choice = choice
  end

end

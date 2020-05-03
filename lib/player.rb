class Player

  attr_reader :name
  attr_accessor :choice

  def initialize(name, choice)
    @name = name
    @choice = choice
  end

end

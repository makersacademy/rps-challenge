class Player

  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end

  def choose(choice)
    Choice.new(choice)
  end

end

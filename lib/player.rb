class Player

  # attr_reader :name
  attr_accessor :shapes

  def initialize(name)
    @name = name
  end

  def choice(choice)
    @choice = choice
  end

  def name
    @name
  end
end
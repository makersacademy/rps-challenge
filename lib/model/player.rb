require_relative '../app'

class Player

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def choose(choice)
    @choice = choice
  end

  def choice
    @choice
  end

end

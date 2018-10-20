
class Human
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choice
    @choice
  end

  def store(choice)
    @choice = choice
  end

end

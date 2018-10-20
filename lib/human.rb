
class Human
  attr_reader :name

  def initialize(name)
    @name = name
  end

  attr_reader :choice

  def store(choice)
    @choice = choice.downcase.to_sym
  end

end

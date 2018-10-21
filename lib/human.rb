
class Human

  def initialize(name)
    @name = name
  end

  attr_reader :name

  attr_reader :choice

  def store(choice)
    @choice = choice.downcase.to_sym
  end

end

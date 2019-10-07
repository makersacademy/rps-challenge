
class Human

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def store(choice)
    @choice = choice.downcase.to_sym
  end

end

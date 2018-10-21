
class Human


  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  attr_reader :choice

  def store(choice)
    @choice = choice.downcase.to_sym
  end

end

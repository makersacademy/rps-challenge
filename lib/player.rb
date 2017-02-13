class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choose(choice)
    choice.to_sym
  end

end

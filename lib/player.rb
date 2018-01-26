
class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def makes_choice(choice)
    @choice = choice.to_sym
  end

end

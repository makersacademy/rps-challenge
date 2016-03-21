class Player

  attr_reader :name , :choice

  def initialize(name)
    @name = name
  end

  def make_a_choice(choice)
    @choice = choice.to_sym
  end

end

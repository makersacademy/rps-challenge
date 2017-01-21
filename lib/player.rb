class Player

  attr_reader :name, :choice

  def initialize(name, choice = nil)
    @name = name
    @choice = choice
  end

  def select_choice(choice)
    @choice = choice.downcase.to_sym
  end

end

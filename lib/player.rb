class Player

  attr_reader :name, :choice_index

  def initialize(name)
    @name = name
  end

  def make_choice(choice)
    @choice_index = Game::CHOICES.index(choice.downcase.to_sym)
  end

end

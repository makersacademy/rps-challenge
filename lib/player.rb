class Player
  attr_reader :name, :choice, :score

  def initialize(name)
    @name = name
    @choice = ""
  end

  def set_choice(choice)
    @choice = choice
  end

  def show_choice
    @choice
  end
end

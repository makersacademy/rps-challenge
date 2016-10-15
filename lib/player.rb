class Player

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def choice(choice)
    selection = Game.choices
    selection[choice]
  end

end

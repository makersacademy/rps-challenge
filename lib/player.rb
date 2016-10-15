class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice
  end

  def selection(rps) # 0, 1, 2
    available_choices = Game.choices
    @choice = available_choices[rps]
  end

end

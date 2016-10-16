class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def selection(rps) # 0, 1, 2
    @choice = Game.choices[rps]
  end

end

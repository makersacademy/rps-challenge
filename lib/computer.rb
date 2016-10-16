class Computer

  attr_reader :name

  def initialize(name = "Computer")
    @name = name
  end

  def selection
    Game.choices[rand(0..2)]
  end

end

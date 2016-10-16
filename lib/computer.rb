class Computer

  attr_reader :name, :choice

  def initialize(name = "Computer")
    @name = name
  end

  def selection
    @choice = Game.choices[rand(0..2)]
  end

end

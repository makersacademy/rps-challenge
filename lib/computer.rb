class Computer

  attr_reader :name, :choice

  def initialize(name = "Computer")
    @name = name
  end

  def selection(rps)
    # @available_choices = Game.choices
    @choice = Game.choices[rand(0..2)]
  end

end

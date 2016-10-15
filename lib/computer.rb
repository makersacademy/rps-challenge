class Computer

  attr_reader :name, :available_choices

  def initialize(name = "Computer")
    @name = name
    @available_choices = available_choices
  end

  def choices_available
    @available_choices = Game.choices
    # @choice = available_choices[rand(0..2)]
  end

end

class Computer

  attr_reader :choice

  def initialize
    @choice = choice
  end

  def name
    "Computer"
  end

  def auto_selection
    available_choices = Game.choices
    @choice = available_choices[rand(0..2)]
  end

end

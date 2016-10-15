class Computer

  attr_reader :choice, :auto_selection

  def name
    "Computer"
  end

  def auto_selection
    available_choices = Game.choices
    available_choices[rand(0..2)]
  end

end

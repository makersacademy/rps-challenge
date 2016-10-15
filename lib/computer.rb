class Computer

  attr_reader :choice

  def name
    "Computer"
  end

  def choice
    selection = Game.choices
    selection[rand(0..2)]
  end

end

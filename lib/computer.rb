class Computer

  attr_reader :choice

  def name
    "Computer"
  end

  def choice
    selection = ["Rock", "Paper", "Scissors"]
    selection[rand(0..2)]
  end

end

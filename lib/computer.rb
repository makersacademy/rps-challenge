class Computer

  def choice
    choices = ["rock", "paper", "scissors"]
    choice = choices[rand(choices.length)]
    @choice =choice
  end

end
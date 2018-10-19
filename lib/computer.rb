class Computer

  def choice
    choice = Kernel.rand(1..3)
    choice = 'rock' if choice == 1
    choice = 'paper' if choice == 2
    choice = 'scissors' if choice == 3
    return choice
  end

end

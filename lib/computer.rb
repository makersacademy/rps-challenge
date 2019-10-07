class Computer

  def choice
    choice = Kernel.rand(1..3)
    choice = 'Rock' if choice == 1
    choice = 'Paper' if choice == 2
    choice = 'Scissors' if choice == 3
    return choice
  end

end

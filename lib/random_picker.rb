module RandomPicker 

  def random_choice
    num = rand(1..3)

    return "Rock" if num == 1
    return "Paper" if num == 2
    return "Scissors" if num == 3
  end

end

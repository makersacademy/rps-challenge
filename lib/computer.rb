class Computer
  def make_selection
    random_number = rand(1..3)
    return "Rock" if random_number == 1
    return "Paper" if random_number == 2
    return "Scissors" if random_number == 3
  end
end

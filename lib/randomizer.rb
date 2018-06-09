class Randomizer
  def result
    randomly_select
  end

  private

  def randomly_select
    random_number = Kernel.rand(3)
    return "Rock" if random_number == 1
    return "Paper" if random_number == 2
    return "Scissors" if random_number == 3
  end
end

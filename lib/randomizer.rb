class Randomizer
  def result
    randomly_select
  end

  private

  def randomly_select
    random_number = Kernel.rand(3)
    if random_number == 1
      return "Rock"
    elsif random_number == 2
      return "Paper"
    elsif random_number == 3
      return "Scissors"
    end
  end
end

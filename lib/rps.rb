class Rps
  def random_output
    return "Rock" if rand(1..3) == 1
    return "Paper" if rand(1..3) == 2
    return "Scissors" if rand(1..3) == 3
  end
end

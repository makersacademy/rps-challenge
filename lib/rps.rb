class Rps
  def random_output
    if rand(1..3) == 1
      return "Rock"
    elsif rand(1..3) == 2 
      return "Paper"
    elsif rand(1..3) == 3
      return "Scissors"
    end 
  end
end
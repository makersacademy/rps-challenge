class CPU
  def choice
    num = rand(3)
    if num == 2
      "Rock"
    elsif num == 1
      "Paper"
    else
      "Scissors"
    end
  end
end
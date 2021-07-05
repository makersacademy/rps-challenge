class AI

  def choice
    choice = rand(1..3)
    choice == 1 ? "Rock" : choice == 2 ? "Paper" : "Scissors"
  end

end

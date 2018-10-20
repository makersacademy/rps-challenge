class Computer

  def computer_move
    move = ""
    number = rand(3)
    if number == 0
      move = "rock"
    elsif number == 1
      move = "paper"
    else
      move = "scissors"
    end
  end

end

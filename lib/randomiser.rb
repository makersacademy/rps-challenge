class Randomiser

  def random_number
    @num = rand(3)
  end

  def computer
    if @num == 0
      "rock"
    elsif @num == 1
      "paper"
    else
      "scissors"
    end
  end


end

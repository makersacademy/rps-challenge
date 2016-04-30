class Computer

  def chosen_hand
    num = choose_rand
    if num == 1
      @chosen = "rock"
    elsif num == 2
      @chosen = "paper"
    else
      @chosen = "scissors"
    end
  end

  private

  def choose_rand
    rand(1..3)
  end
end

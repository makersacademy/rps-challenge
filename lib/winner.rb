class Winner

  def determine(name1, name2)
    @name1 = name1
    @name2 = name2
    return name1_won if name1.move == "rock" && name2.move == "paper"
    return name2_won if name1.move == "rock" && name2.move == "scissors"
    return draw if name1.move == "rock" && name2.move == "rock"
    return name2_won if name1.move == "paper" && name2.move == "rock"
    return draw if name1.move == "paper" && name2.move == "paper"
    return name1_won if name1.move == "paper" && name2.move == "scissors"
    return name1_won if name1.move == "scissors" && name2.move == "rock"
    return name2_won if name1.move == "scissors" && name2.move == "paper"
    return draw if name1.move == "scissors" && name2.move == "scissors"
  end

  def name1_won
    "#{@name1.name} won!"
  end

  def name2_won
    "#{@name2.name} won!"
  end

  def draw
    "It's a draw!"
  end

end

class Throw

  def random_choice
    num = Kernel.rand(3)
    return "rock" if num.zero?
    return "paper" if num == 1
    return "scissors" if num == 2 
  end

end

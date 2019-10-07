class Result

  @result = ""

  def self.run(user, computer)
    if user == computer
      @result = "It's a tie! Play again!"
    elsif self.win?(user, computer) == true
      @result = "You win!"
    elsif self.lose?(user, computer) == true
      @result = "You lose!"
    end
  end

  def self.win?(user, computer)
    user == "rock" && computer == "scissors" || user == "paper" && computer == "rock" || user == "scissors" && computer == "paper"
  end

  def self.lose?(user, computer)
    user == "paper" && computer == "scissors" || user == "scissors" && computer == "rock" || user == "rock" && computer == "paper"
  end
end

class Computer < Player
  OPTIONS = ["rock", "paper", "scissors"]
  def random_option
    @chosen_option = OPTIONS.sample
  end
end

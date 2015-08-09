class Computer

  def computer_choice
    @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
    @throws = @defeat.keys
    @throws.sample
  end
end

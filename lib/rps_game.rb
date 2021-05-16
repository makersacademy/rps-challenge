class RPSGame
  attr_reader :outcome

  def play(choice)
    @outcome = ['win', 'loss', 'draw'].sample
  end
end

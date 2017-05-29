class Rules

  def initialize
    @outcome = ['DRAW', 'PLAYER WON', 'COMPUTER WON', 'PLAYER WON', 'COMPUTER WON']
  end

  def winner(player_choice, computer_choice)
    @outcome[player_choice - computer_choice]
  end
end

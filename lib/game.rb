class Game

  attr_accessor :player, :choices, :selection, :outcome

  WINNERS = [['Scissors', 'Paper'], ['Paper', 'Rock'], ['Rock', 'Scissors']]
  LOSERS = [['Paper', 'Scissors'], ['Rock', 'Paper'], ['Scissors', 'Rock']]

  def initialize(player)
    @player = player
    @choices = ['Rock', 'Paper', 'Scissors']
    @selection = selection
    @outcome = []
  end

  def computer_choice
    @outcome << choices.sample
  end

  def player_selection
    @outcome << selection
  end

  def win?
    return true if WINNERS.include?(@outcome)
    return false if LOSERS.include?(@outcome)
    return "draw"
  end

end

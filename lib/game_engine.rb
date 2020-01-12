class GameEngine

  attr_reader :guess1, :computer

  def initialize(guess1:, computer:)
    @guess1 = guess1
    @computer = computer
  end

  def winner_is
    puts guess1
    if game_rules[guess1.to_sym].include? @computer
      'Player 1 Wins'
    elsif game_rules[computer.to_sym].include? @guess1
      'Player 2 Wins'
    else
      "Sorry it was a Tie!"
    end
  end

  def game_rules
    {
        'Paper': ['Rock'],
        'Rock': ['Scissors'],
        'Scissors': ['Paper']
    }
  end
end
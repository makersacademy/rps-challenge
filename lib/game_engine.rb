class GameEngine

  attr_reader :guess1, :computer

  def initialize(guess1:, computer:)
    @guess1 = guess1
    @computer = computer
  end

  def winner_is
    if game_rules[guess1.to_sym].include? @computer
      "#{Player.instance.name} the Human Wins"
    elsif game_rules[computer.to_sym].include? @guess1
      "Computer Wins"
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
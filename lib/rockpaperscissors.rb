class Rockpaperscissors

  attr_reader :beaten_by

  def initialize
    @beaten_by = {rock: [:paper, :spock],
                  scissors: [:rock, :spock],
                  paper: [:scissors, :lizard],
                  lizard: [:scissors, :rock],
                  spock: [:lizard, :paper]}
  end

  def winner(name1, choice1, name2, choice2)
    return :draw if choice1==choice2
    @beaten_by.values_at(choice1)[0].include?(choice2) ? name2 : name1
  end

end

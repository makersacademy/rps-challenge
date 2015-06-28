class GameType

  attr_reader :rpssl

  def initialize

    @rpssl = {rock: [:lizard, :scissors],
              paper: [:rock, :spock],
              scissors: [:paper, :lizard],
              spock: [:scissors, :rock],
              lizard: [:spock, :paper]}
  end

  def winner? choice_1, choice_2

    return :draw if choice_1 == choice_2
    return choice_1 if rpssl[choice_1].include?(choice_2)
    choice_2
  end
end
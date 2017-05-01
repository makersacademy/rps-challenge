class Game

  RULES = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }

  attr_reader :player_choice, :computer_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def result
    return 'Draw' if beats? == :draw
    return 'Win' if beats?
    'Lose'
  end

  private

  def beats?
    return :draw if player_choice == computer_choice
    RULES[player_choice] == computer_choice
  end

end

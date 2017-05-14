class Game

  WEAPONS = [:rock, :paper, :scissors]
  RULES = {:rock => :scissors, :paper => :rock, :scissors => :paper}

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @result = winner
  end

  attr_reader :player_choice, :computer_choice, :rules, :result

  def self.create(player_choice, computer_choice)
    @game = Game.new(player_choice, computer_choice)
  end

  def self.instance
    @game
  end
  def winner
    return "Draw" if player_choice == computer_choice
    if RULES[player_choice] == computer_choice
    return "A player victory"
    else
    return "A computer victory"
    end
  end
  private

  attr_writer :player_choice, :computer_choice, :result

end

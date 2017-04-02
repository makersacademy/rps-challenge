
class Game

  RULES = {:rock => :scissors, :paper => :rock, :scissors => :paper}

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @result = winner
  end

  attr_reader :player_choice, :computer_choice, :rules, :result

  def winner
    return self.result = :draw if player_choice == computer_choice
    if RULES[player_choice] == computer_choice
    self.result = :player 
    else
    self.result = :computer
    end
  end
  private

  attr_writer :player_choice, :computer_choice, :result

end

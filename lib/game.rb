require 'pry'

class Game

  RULES = {:rock => :scissors, :paper => :rock, :scissors => :paper}

  def initialize
    @player_choice = nil
    @computer_choice = nil
    @result = nil
  end

  attr_reader :player_choice, :computer_choice, :rules, :result

  def input_weapons(weapon_1, weapon_2)
    self.player_choice = weapon_1
    self.computer_choice = weapon_2
  end


  def winner
    self.result = :draw if player_choice == computer_choice
    self.result = :player if RULES[player_choice] == computer_choice
    self.result = :computer
  end
  private

  attr_writer :player_choice, :computer_choice, :result

end

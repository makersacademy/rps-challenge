require "./lib/weapon.rb"

class Game
  RULES = {
    Weapon::WEAPONS[0] => { :rock => :draw, :paper => :paper, :scissor => :rock }, #=> rock
    Weapon::WEAPONS[1] => { :rock => :rock, :paper => :scissor, :scissor => :draw }, #=> scissors 
    Weapon::WEAPONS[2] => { :rock => :paper, :paper => :draw, :scissor => :scissor } #=> paper
  }

  attr_reader :player_choice, :computer_choice
  
  def initialize(player_choice, computer_choice = Weapon::WEAPONS.sample)
    player_choice = Weapon::WEAPONS.sample unless Weapon::WEAPONS.include?(player_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end 


  def lets_play(player_choice, computer_choice)
    RULES[player_choice][computer_choice]
  end
  
end



require 'forwardable'

class Game
  extend Forwardable

  def_delegator :player_1, :name, :player_1_name
  def_delegator :player_2, :name, :player_2_name

  WEAPONS = [:rock, :paper, :scissors, :spock, :lizard]
  RULES = {
    :rock => {:paper =>'lose',:scissors => 'win',:spock => 'lose', :lizard => 'win'},
    :paper => {:rock =>'win',:scissors => 'lose',:spock => 'win',:lizard => 'lose'},
    :scissors => {:rock =>'lose',:paper => 'win',:spock => 'lose',:lizard => 'win'},
    :spock => {:rock =>'win',:scissors => 'win',:paper => 'lose',:lizard => 'lose'},
    :lizard => {:rock =>'lose',:scissors => 'lose',:spock => 'win',:paper => 'win'}
  }

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  # def has_player_1_won?(player_1.weapon_choice,player_2.weapon_choice)
  #
  #   RULES[:rock][:paper]
  # end

  def draw?
    player_1.weapon_choice == player_2.weapon_choice
  end
end

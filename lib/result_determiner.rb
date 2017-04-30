require_relative './ai'
require 'set'

class ResultDeterminer

  WEAPONS = Ai::CHOICES.to_set

  RULES = {
  :rock     => { :rock => :draw, :paper => :paper, :scissors => :rock,
    :lizard => :rock, :spock => :spock },
  :paper    => { :rock => :paper, :paper => :draw, :scissors => :scissors,
    :lizard => :lizard, :spock => :paper },
  :scissors => { :rock => :rock, :paper => :scissors, :scissors => :draw,
    :lizard => :scissors, :spock => :spock },
  :spock => { :rock => :spock, :paper => :paper, :lizard => :lizard,
    :spock => :draw, :scissors => :spock },
  :lizard => { :lizard => :draw, :paper => :lizard, :scissors => :scissors,
    :spock => :lizard, :rock => :rock }
  }

  def self.calculate(player_1, player_2)
    check_names(player_1, player_2)
    check_weapons(player_1, player_2)
    return :draw if player_1.choice == player_2.choice
    hash = {
      player_1.choice => player_1.name,
      player_2.choice => player_2.name,
     }
    hash[RULES[player_1.choice][player_2.choice]]
  end

  def self.check_names(player_1, player_2)
    raise 'Each player must have a name' if player_1.name.empty? || player_2.name.empty?
  end

  def self.check_weapons(player_1, player_2)
    choices = [player_1.choice, player_2.choice].to_set
    raise 'That is not an accepted weapon' unless choices.subset?(WEAPONS)
  end

end

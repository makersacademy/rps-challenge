require_relative 'computer'

class RPS
  RULES = { :rock => :scissors, :scissors => :paper, :paper => :rock }

  attr_reader :pair

  def initialize(user_weapon = :rock, computer = Computer)
    @pair = {}
    @user_weapon = user_weapon
    @computer = computer.new
  end

  def pair_weapons
    @pair = { user: @user_weapon, computer: random_computer_weapon }
  end

  def combinations
    RULES
  end

  private

  def random_computer_weapon
    @computer.random_weapon
  end

end

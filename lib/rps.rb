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
    @pair = { @user_weapon => computer_weapon }
  end

  def combos
    RULES
  end

  private

  def computer_weapon
    @computer.random_weapon
  end

end

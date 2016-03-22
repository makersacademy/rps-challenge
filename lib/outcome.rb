require 'pry'
class Outcome


  def self.check(weapon, weapon2)
    @attacker_weapon = weapon
    @defender_weaon = weapon2
    (Outcome.new(weapon, weapon2)).winner?
  end

  def self.attacker
    @attacker_weapon
  end

  def initialize(weapon, weapon2)
    @attacker = weapon
    @defender = weapon2
  end

  def winner?
    battle
  end

  private

    def battle
      return :tie if @attacker ==  @defender
      matcher(@attacker) == @defender ? :player1 : :player2
    end

    def matcher(weapon)
      match={
        'rock' => 'scissors', 
        'scissors' => 'paper',
        'paper' => 'rock'}
      match[weapon]
    end

end
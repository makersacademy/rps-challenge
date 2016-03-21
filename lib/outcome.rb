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
    return :player1 if battle == :win 
    return :player2 if battle == :loose
    :tie
  end

  private

    def battle
      return :tie if @attacker ==  @defender
      return :win if matcher(@attacker) == @defender
      :loose
    end

    def matcher(weapon)
      match={
        'rock' => 'scissors', 
        'scissors' => 'paper',
        'paper' => 'rock'}
      match[weapon]
    end

end
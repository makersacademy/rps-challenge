require 'pry'
class Outcome

  def self.check(weapon)
    @attacker_weapon = weapon
    (Outcome.new(weapon)).winner?
  end

  def self.attacker
    @attacker_weapon
  end

  def initialize(weapon)
    @attacker = weapon
    @defender = cp_attack
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

    def cp_attack
      weapon = {1 => 'rock', 2 => 'paper', 3=> 'scissors'}
      weapon[rand]
    end

    def rand
      Kernel.rand(1..3)
    end

    def matcher(weapon)
      match={
        'rock' => 'scissors', 
        'scissors' => 'paper',
        'paper' => 'rock'}
      match[weapon]
    end

end
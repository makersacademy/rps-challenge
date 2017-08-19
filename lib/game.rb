class Game

  attr_reader :result, :weapon1, :weapon2

  RULES = {
      :rock     => { :rock => 'tie', :paper => 'lose', :scissors => 'win' },
      :paper    => { :rock => 'win', :paper => 'tie', :scissors => 'lose' },
      :scissors => { :rock => 'lose', :paper => 'win', :scissors => 'tie' }
  }

  def initialize(weapon1, weapon2 = Weapon.new)
    @weapon1 = weapon1
    @weapon2 = weapon2
    @result = nil
  end

  def shoot(w1 = @weapon1.type, w2 = @weapon2.type)
    @result = RULES[w1.to_sym][w2.to_sym]
  end

end

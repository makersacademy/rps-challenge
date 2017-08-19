class Game

  RULES = {
      :rock     => {:rock => 'tie', :paper => 'lose', :scissors => 'win'},
      :paper    => {:rock => 'win', :paper => 'tie', :scissors => 'lose'},
      :scissors => {:rock => 'lose', :paper => 'win', :scissors => 'tie'}
  }

  def shoot(p1, p2 = @weapon)
    RULES[p1.to_sym][p2.to_sym]
  end

  def initialize(player, weapon = Weapon.new)
    @player = player
    @weapon = weapon
  end
end

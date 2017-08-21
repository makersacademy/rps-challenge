class Game

  attr_reader :result, :weapon1, :weapon2

  RULES = {
      :rock     => { :rock => :tie, :paper => :lose,
                     :scissors => :win, :spock => :lose,
                     :lizard => :win },
      :paper    => { :rock => :win, :paper => :tie,
                     :scissors => :lose, :spock => :win,
                     :lizard => :lose },
      :scissors => { :rock => :lose, :paper => :win,
                     :scissors => :tie, :spock => :lose,
                     :lizard => :win },
      :spock    => { :rock => :win, :paper => :lose,
                     :scissors => :win, :spock => :tie,
                     :lizard => :lose },
      :lizard   => { :rock => :lose, :paper => :win,
                     :scissors => :lose, :spock => :win,
                     :lizard => :tie }
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

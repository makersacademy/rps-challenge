class Rules

  def self.make_rules
    hands = [:rock, :lizard, :spock, :scissors, :paper]
    rules = {}
    hands.each do |x|
      rules[x] = [hands[hands.index(x)-2], hands[hands.index(x)-4] ]
    end
    rules
  end

  def self.make_rules_2 
    hands = [:rock, :lizard, :spock, :scissors, :paper]
    rules = {}
    hands.each do |x|
      rules[x] = []
      jump = 2
      (hands.length/2).times do
         rules[x] << hands[hands.index(x)-jump]
         jump+=2
      end
    end
    rules
  end


end

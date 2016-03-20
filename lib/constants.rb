module Constants

  MOVES = {:rock => [:scissors => 'crushes', :lizard => 'crushes'],
           :paper => [:rock => 'covers', :spock => 'disproves'],
           :scissors => [:paper => 'cut', :lizard => 'decapitate'],
           :lizard => [:spock => 'poisons', :paper => 'eats'],
           :spock => [:scissors => 'smashes', :rock => 'vaporises']}
end

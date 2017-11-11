def rules
  {
    rock: rock_rules,
    paper: paper_rules,
    scissors: scissors_rules,
    spock: spock_rules,
    lizard: lizard_rules
  }
end

def rock_rules
  { rock: { verdict: 'tied', phrase: 'clashed with' }, 
    paper: { verdict: 'lost', phrase: 'was crushed by' }, 
    scissors: { verdict: 'won', phrase: 'crushed' }, 
    spock: { verdict: 'lost', phrase: 'was vaporised by' }, 
    lizard: { verdict: 'won', phrase: 'crushed' } 
  }
end

def paper_rules
  { rock: { verdict: 'won', phrase: 'covered' }, 
    paper: { verdict: 'tied', phrase: 'clashed with' }, 
    scissors: { verdict: 'lost', phrase: 'was cut by' }, 
    spock: { verdict: 'won', phrase: 'disproved' }, 
    lizard: { verdict: 'lost', phrase: 'was eaten by' } 
  }
end

def scissors_rules
  { rock: { verdict: 'lost', phrase: 'were crushed by' }, 
    paper: { verdict: 'won', phrase: 'cut' }, 
    scissors: { verdict: 'tied', phrase: 'clashed with' }, 
    spock: { verdict: 'lost', phrase: 'were smashed by' }, 
    lizard: { verdict: 'won', phrase: 'decapitated' } 
  }
end

def spock_rules
  { rock: { verdict: 'won', phrase: 'vaporised' }, 
    paper: { verdict: 'lost', phrase: 'was disproved by' }, 
    scissors: { verdict: 'won', phrase: 'smashed' }, 
    spock: { verdict: 'tied', phrase: 'clashed with' }, 
    lizard: { verdict: 'lost', phrase: 'was poisoned by' } 
  }
end

def lizard_rules
  { rock: { verdict: 'lost', phrase: 'was crushed by' }, 
    paper: { verdict: 'won', phrase: 'ate' }, 
    scissors: { verdict: 'lost', phrase: 'was decapitated by' }, 
    spock: { verdict: 'won', phrase: 'poisoned' }, 
    lizard: { verdict: 'tied', phrase: 'clashed with' } 
  }
end

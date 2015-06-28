class RPS

CHOICES = { :rock => :paper,
            :paper => :scissors,
            :scissors => :rock }

def self.play p1choice, p2choice
  if p1choice == p2choice
    "Draw"
  elsif CHOICES[p1choice] == p2choice
    "Player 2 Wins"
  else
    "Player 1 Wins"
  end
end

def self.random_choice
  [:rock, :paper, :scissors].sample
end

end
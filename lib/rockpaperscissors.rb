class RockPaperScissors
  DEFAULT_ROUNDS = 5
  CHOICES = [:rock, :paper, :scissors]
  COMBINATION_MAP = {
    :rock => { :rock => 'Draw', :paper => 'Loss', :scissors => 'Win' },
    :paper => { :rock => 'Win', :paper => 'Draw', :scissors => 'Loss' },
    :scissors => { :rock => 'Loss', :paper => 'Win', :scissors => 'Draw' }
  }
end
class Hands

attr_reader :HAND_STRENGTHS, :HANDS

def initialize
  @HANDS = HANDS
  @HAND_STRENGTHS = HAND_STRENGTHS
end

HAND_STRENGTHS = {
  rock:{rock:0,paper:-1,scissors:1,lizard:1,spock:-1},
paper:{rock:1,paper:0,scissors:-1,lizard:-1,spock:1},
scissors:{rock:-1,paper:1,scissors:0,lizard:1,spock:-1},
lizard:{rock:-1,paper:1,scissors:-1,lizard:0,spock:1},
spock:{rock:1,paper:-1,scissors:1,lizard:-1,spock:0}}

HANDS = [:rock,:paper,:scissors,:lizard,:spock]

end

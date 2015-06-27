module Comparator
                
def self.compair comparable_player_1, comparable_player_2
  metrics comparable_player_1, comparable_player_2
end

def self.metrics

  if    comparable_player_1[0] is_a? Scissor && comparable_player_2[1] is_a? Rock
    comparable_player_2[1]
  elsif comparable_player_1[0] is_a? Rock    && comparable_player_2[1] is_a? Scissor
  comparable_player_1[1]

  elsif comparable_player_1[0] is_a? Scissor && comparable_player_2[1] is_a? Paper
    comparable_player_1[1]
  elsif comparable_player_1[0] is_a? Paper   && comparable_player_2[1] is_a? Scissor
  comparable_player_2[1]

  elsif comparable_player_1[0] is_a? Rock    && comparable_player_2[1] is_a? Paper
    comparable_player_2[1]
  elsif comparable_player_1[0] is_a? Paper   && comparable_player_2[1] is_a? Rock
    comparable_player_1[1]

  elsif comparable_player_1[0] is_a? Rock    && comparable_player_2[1] is_a? Rock
  elsif comparable_player_1[0] is_a? Paper   && comparable_player_2[1] is_a? Paper
  elsif comparable_player_1[0] is_a? Scissor && comparable_player_2[1] is_a? Scissor
  end

end






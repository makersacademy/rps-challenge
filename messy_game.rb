# choice = [:rock, :paper, :scissors]
# @draw = [[:rock, :rock], [:paper, :paper], [:scissors, :scissors]]
# @win_play_1 = [[:paper, :rock], [:rock, :scissors], [:scissors, :paper]]
# @outcome = []
@player_1_wins = 0
@player_2_wins = 0


# def computers_turn(arr)
#   arr.sample
# end
#
# def player_1_turn(arr)
#   arr.sample
# end

# @player_1 = computers_turn(choice)
# @player_2 = player_1_turn(choice)
#
# @outcome.push(@player_1, @player_2)
#
# def is_draw
#   @draw.include?@outcome
# end
#
# def play_1_win
#   @win_play_1.include?@outcome
# end
#
# def player_1_outcome
#   @player_1_wins += 1
#   puts "Player 1 has won"
# end
#
# def player_2_outcome
#   @player_2_wins += 1
#   puts "Player 2 has won"
# end

# def result
#   if is_draw == true
#     puts "Its a draw"
#   elsif play_1_win == true
#     player_1_outcome
#   else
#     player_2_outcome
#   end
# end

def score
  result
  puts "Player 1 has scored #{@player_1_wins} and Player 2 has scored #{@player_2_wins}"
end


class Game
def initialize
choice = [:rock, :paper, :scissors]
@draw = [[:rock, :rock], [:paper, :paper], [:scissors, :scissors]]
@win_play_1 = [[:paper, :rock], [:rock, :scissors], [:scissors, :paper]]
@outcome = []
@player_1 = computers_turn(choice)
@player_2 = player_1_turn(choice)
end

def win(player)
player.win_point
end

def computers_turn(arr)
arr.sample
end

def player_1_turn(arr)
arr.sample
end

@outcome.push(@player_1, @player_2)

def is_draw
@draw.include?@outcome
end

def play_1_win
@win_play_1.include?@outcome
end

def player_1_outcome
puts "Player 1 has won"
end

def player_2_outcome
puts "Player 2 has won"
end

def result
  if is_draw == true
    puts "Its a draw"
  elsif play_1_win == true
    player_1_outcome
  else
    player_2_outcome
  end
end

end



# class Player
# DEFAULT_WINS = 0
# attr_reader :name, :wins

# def initialize(name, wins = DEFAULT_WINS)
# @name = name
# @wins = wins
# end


# end

choice = [:rock, :paper, :scissors]
@draw = [[:rock, :rock], [:paper, :paper], [:scissors, :scissors]]
@win_play_1 = [[:paper, :rock], [:rock, :scissors], [:scissors, :paper]]
@outcome = []
@player_1_wins = 0
@player_2_wins = 0


def computers_turn(arr)
  arr.sample
end

def player_1_turn(arr)
  arr.sample
end

@player_1 = computers_turn(choice)
@player_2 = player_1_turn(choice)

@outcome.push(@player_1, @player_2)

def is_draw
  @draw.include?@outcome
end

def play_1_win
  @win_play_1.include?@outcome
end

def result
  if is_draw == true
    puts "Its a draw"
  elsif play_1_win == true
    @player_1_wins += 1
    puts "Player 1 has won"
  else
    @player_2_wins += 1
    puts "Player 2 has won"
  end
end

def score
  result
  puts @player_1_wins
  puts @player_2_wins
end

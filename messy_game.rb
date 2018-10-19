arr = [:rock, :paper, :scissors]
@draw = [[:rock, :rock], [:paper, :paper], [:scissors, :scissors]]
@win_play_1 = [[:paper, :rock], [:rock, :scissors], [:scissors, :paper]]

@outcome = []

def computers_turn(arr)
  arr.sample
end

def player_1_turn(arr)
  arr.sample
end

@player_1 = computers_turn(arr)
@player_2 = player_1_turn(arr)

@outcome.push(@player_1, @player_2)

def is_draw
  print @outcome
  @draw.include?@outcome
end

def play_1_win
  print @outcome
  @win_play_1.include?@outcome
end

def result
  if is_draw == true
    puts "Its a draw"
  elsif play_1_win
    puts "Player 1 has won"
  else
    puts "Player 2 has won"
  end
end

result

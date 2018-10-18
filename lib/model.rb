def machine_move
  @player_2_move = ["rock", "paper", "scissors"].sample
end

def rock(player_2_move)
  @player_2_move = player_2_move
  @result = "It's a tie!" if @player_2_move == "rock"
  @result = "Bad luck, you lost!" if @player_2_move == "paper" 
  @result = "Congratulations, you won!" if @player_2_move == "scissors"
  @result
end

def paper(player_2_move)
  @player_2_move = player_2_move
  @result = "Congratulations, you won!" if @player_2_move == "rock"
  @result = "It's a tie!" if @player_2_move == "paper" 
  @result = "Bad luck, you lost!" if @player_2_move == "scissors"
  @result
end

def scissors(player_2_move)
  @player_2_move = player_2_move
  @result = "Bad luck, you lost!" if @player_2_move == "rock"
  @result = "Congratulations, you won!" if @player_2_move == "paper" 
  @result = "It's a tie!" if @player_2_move == "scissors"
  @result
end

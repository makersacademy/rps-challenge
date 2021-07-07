def machine_move
  @player_2_move = ["rock", "paper", "scissors"].sample
end

def rock(player_2_move)
  @player_2_move = player_2_move
  @result = "it's a tie!" if @player_2_move == "rock"
  @result = "bad luck, you lost!" if @player_2_move == "paper" 
  @result = "congratulations, you won!" if @player_2_move == "scissors"
  @result
end

def paper(player_2_move)
  @player_2_move = player_2_move
  @result = "congratulations, you won!" if @player_2_move == "rock"
  @result = "it's a tie!" if @player_2_move == "paper" 
  @result = "bad luck, you lost!" if @player_2_move == "scissors"
  @result
end

def scissors(player_2_move)
  @player_2_move = player_2_move
  @result = "bad luck, you lost!" if @player_2_move == "rock"
  @result = "congratulations, you won!" if @player_2_move == "paper" 
  @result = "it's a tie!" if @player_2_move == "scissors"
  @result
end

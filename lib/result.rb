def result
  if @guess1 == @guess2
      erb :draw
  elsif @guess2 == 'rock' && @guess1 == 'paper' || @guess2 == 'paper' && @guess1 == 'scissors' || @guess2 == 'scissors' && @guess1 == 'rock'
      erb :player_1_win
  elsif @guess1 == 'rock' && @guess2 == 'paper' || @guess1 == 'paper' && @guess2 == 'scissors' || @guess1 == 'scissors' && @guess2 == 'rock'
      erb :player_2_win
  end
end

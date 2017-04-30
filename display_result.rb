class DisplayResult

  case @result.winner
  when :player
    @winner_name = @player
  when :computer
    @winner_name = "Computer"
  when :draw
    @winner_name = "None. It's a draw!"
  end

end

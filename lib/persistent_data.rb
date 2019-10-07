class AllGames
  attr_reader :all_comp_hands, :all_player_hands, :all_player_win, :all_comp_win, :all_draws
  
  # for every hand played, += 1 at ind -> h[0] == rock, h[1] == paper, h[2] == scissors
  # writing to this arr is the last thing that happens before session terminates
  # read from this file into SQL
  @all_comp_hands = [0, 0, 0]
  @all_player_hands = [0, 0, 0]
  @all_comp_win = 0
  @all_draws = 0
  @all_player_win = 0

end
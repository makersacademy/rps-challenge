class Game
  RPS = ['rock', 'paper', 'scissors']
  WINNERS = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}

  def random_rps
    RPS.sample
  end

  def play(player_choice)
    @game_choice = random_rps
    result(player_choice)
  end

  def result(player_choice)
    return "WIN" if WINNERS[player_choice] == @game_choice
    return "LOSE" if WINNERS[@game_choice] == player_choice
    "DRAW"
  end

end

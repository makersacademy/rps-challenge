module RPSHelper
  def single_player
    player_1 = Player.new(params[:player_1_name])
    player_2 = Bot.new
    $game = Game.new(player_1, player_2)    
    redirect '/play'
  end

  def multi_player
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)    
    redirect '/play_mp'
  end
end

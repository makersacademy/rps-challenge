def reset_round
  @game.player_1.round_choice(nil)
  @game.player_2.round_choice(nil)
end

def set_single_play_round
  @player_1 = @game.player_1
  @player_1.round_choice(params[:option])
  @game.player_2.round_choice
end

def set_single_play_game
  player = Player.new(params[:Player])
  bot = Bot.new("Computer")
  @game = Game.create(player, bot)
end

def set_multy_play_game
  player_1 = Player.new(params[:Player_1])
  player_2 = Player.new(params[:Player_2])
  @game = Game.create(player_1,player_2)
end

def set_player_move(player)
  player.round_choice(params[:option])
end
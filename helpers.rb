helpers do
  def current_game
    Game.find(session[:game_id])
  end

  def add_game(game)
    Game.games
    id = game.object_id
    Game.add(id, game)
    session[:game_id] = id
  end
end

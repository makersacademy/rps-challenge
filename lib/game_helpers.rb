module GameHelpers
  def store_game(game)
    Game.add(game.object_id, game)
    session[:current_game_id] = game.object_id
  end

  def current_game
    Game.find(session[:current_game_id])
  end
end

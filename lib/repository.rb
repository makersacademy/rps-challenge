class Repository

  def initialize
    @players = {}
    @games = {}
    @moves = {}
  end

  def add_player(player)
    @players[player.id] = player
  end

  def player(id)
    @players[id]
  end

  def all_players
    @players.values
  end

  def add_game(game)
    @games[game.name] = game
  end

  def delete_game(game)
    @games.delete(game.name)
  end

  def game(id)
    @games[id]
  end

  def all_games
    @games.values
  end

  def add_move(player_id, move)
    @moves[player_id] = move
  end

  def delete_move(player_id)
    @moves.delete(player_id)
  end

  def move(player_id)
    @moves[player_id]
  end
end
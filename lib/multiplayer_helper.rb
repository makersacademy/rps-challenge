module MultiplayerHelper
  MULTIPLAYERS = []

  def create_player(choice)
    player = Player.new(session[:name])
    session[:choice] = choice if choice
    player.choose(session[:choice])
    player
  end

  def waiting_player(player)
    other_players = MULTIPLAYERS.select { |saved_player| saved_player.object_id != session[:my_player] }
    return erb :waiting if other_players.empty?
    @result, @computers_choice = battle_the_found_player(player, other_players.first)
    MULTIPLAYERS.delete(other_players.first)
    erb :result
  end

  def battle_the_found_player(player, other_player)
    result = Game.new(player, other_player).winner
    computers_choice = other_player.choice
    [result, computers_choice]
  end

  def multiplayer(player)
    return create_waiting_player(player) if MULTIPLAYERS.empty?
    other_player = MULTIPLAYERS.shift
    @result, @computers_choice = battle_the_found_player(player, other_player)
    MULTIPLAYERS << player
    erb :result
  end

  def create_waiting_player(player)
    MULTIPLAYERS << player
    session[:my_player] = player.object_id
    session[:multiplayer] = 'waiting'
    erb :waiting
  end

  def single_player(player)
    @result, @computers_choice = battle_the_found_player(player, AI.new)
    erb :result
  end
end

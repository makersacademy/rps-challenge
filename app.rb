require 'sinatra/base'

# use radio buttons to select move
# use some kind of show/hide form to lock in player move

class RPS < Sinatra::Base

  require './lib/Item'
  require './lib/Game'
  require './lib/Player'

  set :session_secret, "qwerty"

  get '/' do
    erb(:rps)
  end

  post '/start-game' do
    p1 = { name: params['player_1_name'], type: params['player_1_type'].to_sym }
    p2 = { name: params['player_2_name'], type: params['player_2_type'].to_sym }
    game_type = params['gametype']
    best_of = params['bestof']
    player_1 = Player.new(p1[:name], p1[:type])
    player_2 = Player.new(p2[:name], p2[:type])
    $game = Game.new(player_1, player_2, game_type, best_of)
    redirect '/play-screen'
  end

  get '/play-screen' do
    @game = $game
    redirect('game-over') if @game.game_over?
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @current_player = @game.current_player
    erb(:play_screen)
  end

  post '/make-move' do
    @game = $game
    move = params['move'].to_sym unless move == nil
    @game.current_player.make_move(@game, move)
    @game.change_player
    redirect('round-over') if @game.round_over?
    redirect('play-screen')
  end

  get '/round-over' do
    @game = $game
    $game.increase_winner_score
    erb(:round_over)
  end

  get '/game-over' do
    @game = $game
    erb(:game_over)
  end

  run! if app_file == $0
end

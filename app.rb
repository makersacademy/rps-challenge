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
    p params['player_1_type']
    p1 = { name: params['player_1_name'], type: params['player_1_type'].to_sym }
    p2 = { name: params['player_2_name'], type: params['player_2_type'].to_sym }
    player_1 = Player.new(p1[:name], p1[:type])
    player_2 = Player.new(p2[:name], p2[:type])
    $game = Game.new(player_1, player_2)
    redirect '/play-screen'
  end

  get '/play-screen' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb(:play_screen)
  end

  run! if app_file == $0
end

require 'sinatra/base'
require './lib/player'
require './lib/rps_game'

class App < Sinatra::Base
enable :sessions

  before do
    @game = Rps_game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name], params[:RPSRadio])
    player_2 = Player.new("AI Overlord", "")
    @game = Rps_game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choose_object' do
    @game.player_1.weapon = params[:RPSRadio]
    redirect '/play_weapon'
  end

  get '/play_weapon' do
    erb :play_weapon
  end

  post '/AI_turn' do
    @game.player_2.weapon = @game.player_2.ai_choose_weapon
    redirect '/outcome'
  end

  get '/outcome' do
    @game.outcome(@game.player_1.weapon, @game.player_2.weapon)
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

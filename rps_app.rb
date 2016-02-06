require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/cpu_player'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    name1 = params[:player_1_name]
    session[:game] = Game.new(Player.new(name1), CpuPlayer.new)
    redirect to '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/weapon' do
    @game = session[:game]
    @game.player_1.weapon = params[:weapon]
    redirect to '/round'
  end

  get '/round' do
    @game = session[:game]
    erb @game.round_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end

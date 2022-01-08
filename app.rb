require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'


class RpsChallenge < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  # Routes
  
  get '/' do
    erb :index
  end

  post '/names' do
    # session[:player_name] = params[:player_name]
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    #@player_name = session[:player_name]
    @player_name = $player.name
    @play_option = session[:play_option]
    erb :play
  end

  post '/play' do
    p session
    session[:play_option] = params[:play_option]
    redirect('/play')
  end


  run! if app_file == $0
end
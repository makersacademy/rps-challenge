require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    player = Player.new(session[:player_name])
    $game = Game.new()
    erb :play
  end

  post '/weapon_selection' do
    @player_weapon = params[:weapon]
    erb :weapon
  end

  run! if app_file == $0
end
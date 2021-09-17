require 'sinatra/base'
require 'sinatra/reloader'
require './lib/opponent'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    erb :play, :locals => {:player_name => session[:player_1_name]}
  end

  post '/play' do
    opponent = Opponent.new
    opponent.choose_weapon
    player = Player.new(session[:player_1_name], params[:weapon_choise])
    game = Game.new(player, opponent)

    erb :results, :locals => {:game => game}
  end
  

  run! if app_file == $0
end
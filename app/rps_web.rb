require 'sinatra/base'
require 'sinatra/reloader'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/computer'
require_relative '../lib/controller'

class RPSApp < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :game
  end
  

  post '/setup' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :setup
  end

  post '/calc' do
    session[:weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    player_1 = Player.new(session[:player_name], session[:weapon])
    player_2 = Computer.new('cpu')
    @game = Controller.create(player_1, player_2)
    @result = Controller.run_game
    @weapon = session[:weapon]
    @cpu_weapon = player_2.weapon
    @player_name = session[:player_name]
    erb @result
  end
  
  run! if app_file == $0
end
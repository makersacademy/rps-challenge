require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'


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
    erb :play
  end

  
  post '/game' do
    session[:play_option] = params[:play_option]
    
    redirect('/game')
  end


  get '/game' do
    @play_option = session[:play_option]
    $computer = Computer.new
    @computer_weapon = $computer.select_move
    @result = Game.new.result(@play_option, @computer_weapon)
    erb :game
  end


  run! if app_file == $0
end
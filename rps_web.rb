require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class RockPaperScissors < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
    enable :sessions
  
    get '/' do
      erb :index
    end

    post '/name' do 
      $player = Player.new(params[:player_name])
      redirect '/play'
    end

    get '/play' do
      $player_name = $player.name
      erb :play
    end

    get '/game' do     
      $player_name = $player.name
      erb :game
    end
  
    run! if app_file == $0
  end
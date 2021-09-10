require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
    enable :sessions
  
    get '/' do
      erb :index
    end

    post '/name' do 
      session[:player_name] = params[:player_name]
      redirect '/play'
    end

    get '/play' do
      @player_name = session[:player_name]
      erb :play
    end

    get '/game' do     
      @player_name = session[:player_name]
      erb :game
    end
  
    run! if app_file == $0
  end
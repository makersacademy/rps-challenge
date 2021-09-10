require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
  
    get '/' do
      erb :index
    end

    post '/play' do 
      @player_name = params[:player_name]
      erb :play
    end
  
    run! if app_file == $0
  end
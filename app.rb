require 'sinatra/base' 
require './lib/rps.rb'
# require './lib/player_name.rb'
# require './lib/outcome.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions
    get '/' do 
      erb :index
    end

    post '/names' do
      session['player_name'] = params[:player_name]
  
      redirect '/player_move'
    end

    get '/player_move' do
      @player_name = session
      ['player_name']

    erb :player_move
    end

    get '/outcome' do
      erb :outcome
    end  

    run! if app_file == $0
end

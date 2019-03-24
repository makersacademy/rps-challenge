require 'sinatra/base'
# require 'player'
# require 'game'

class Battle < Sinatra::Base
  enable :sessions

  get '/greet' do 
    @player_1_name= session[:player_1_name]
    # p session[:player_1_name]
    
    erb(:greet)
  end 

  get '/' do
    erb(:index)

  end 

  post '/name' do 
    session[:player_1_name] = params[:player_1_name]
    redirect '/greet'
  end 





  run! if app_file == $0
end 


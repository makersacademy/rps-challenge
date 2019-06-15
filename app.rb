require 'sinatra'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do    
    session[:player] = params[:player]    
    redirect '/choose_move'
  end

  get '/choose_move' do    
    @player = session[:player]      
    erb :choose_move
  end

  get '/play/:choice' do    
    @player_choice = params[:choice]   
    @player = session[:player]      
    erb :play
  end  
end

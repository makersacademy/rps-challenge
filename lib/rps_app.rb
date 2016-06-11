require 'sinatra/base'

class RpsApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end
  
  get '/game' do
    @player_1_name = session[:player_1_name]
    erb :game
  end

  post'/player_name' do
    session[:player_1_name] = params[:player_1_name] 
    redirect '/game'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

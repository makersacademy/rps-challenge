require 'sinatra/base'
class Battle < Sinatra::Base
   
  get '/' do
    erb :index
  end
  
  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/play' do 
    @choice = params[:choice]
    erb :result
  end
 
  run! if app_file == $0 
end

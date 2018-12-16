require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do 
    erb :index
  end 

  post '/names' do 
    @player_1 = params[:player_1]
    erb :names
  end 

  run! if app_file == $0
end
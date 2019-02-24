require 'sinatra/base'

class Game < Sinatra::Base 
  get '/' do 
    erb :index
  end 

  post '/player' do
    @player_name = params[:player_name]
    erb :player
  end
  run! if app_file == $0
end

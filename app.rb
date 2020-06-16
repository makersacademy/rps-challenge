require 'sinatra/base'

class Game < Sinatra::Base 
  get '/' do 
    erb :index
  end 

  post '/player' do
    @player_name = params[:player_name]
    erb :player
  end

  get '/results' do
    @player_move = params[:player_move]
    erb :results 
  end 

  run! if app_file == $0
end

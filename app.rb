require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do 
    erb :index
  end

  post '/game' do
    @player_1_name = params[:player_1_name]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player = params[:player_name]
    erb :play
  end

  get '/play' do
    erb :play
  end
  
  run! if app_file == $0
end

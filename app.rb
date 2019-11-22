require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/names' do
    @player_name = params[:player_name]
    erb :game
  end
end

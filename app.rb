require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/result' do
    erb :game
  end

end

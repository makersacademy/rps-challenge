require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :game
  end

  post '/play' do
    p params
    @player_name = params[:player_name]
    erb :play
  end

end

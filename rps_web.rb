require 'sinatra/base'

class RPSWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :game
  end

  post '/game' do
    @player_move = params[:player_move]
    erb :play
  end
end

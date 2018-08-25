require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/enter_name' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/play' do
    @move = params[:player_move]
    erb :game_result
  end

  run! if app_file == $0
end

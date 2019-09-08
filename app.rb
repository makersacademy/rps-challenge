require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/game_over' do
    @play = params[:play]
    erb :game_over
  end

  run! if app_file == $0
end

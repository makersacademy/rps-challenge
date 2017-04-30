require 'sinatra/base'

class RPS < Sinatra::Base

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :start_menu
  end

  get '/game_start' do
    erb :names
  end

  post '/names' do
    @player_1_name = (params[:player_1_name])
    @player_2_name = (params[:player_2_name])
    erb :play
  end

  run! if app_file == $0
end

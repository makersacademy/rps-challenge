require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/weapon' do
    @player_weapon = params[:player_weapon]
    erb :result
  end

  run! if app_file == $0
end

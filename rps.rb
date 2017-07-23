require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/registered-player' do
    @player_1_name = params[:player_1_name]
    @player_hand_side = params[:player_hand_side]
    erb :play
  end


  run! if app_file == $0
end

require 'sinatra/base'
require_relative './lib/player'

class Rsp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
   $player_1 = Player.new(params[:player_1_name])
   redirect '/play'
  end

  get '/play'do
    @player_1_name = $player_1.name

    erb :play
  end 

  # post '/play' do
  #   params[player_1_choice]
  # end 

  # get '/result'do

  # end

 run! if app_file == $0
end 
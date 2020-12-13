require 'sinatra/base'
#require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
    enable :sessions


  get '/' do
    erb :index
  end

#   post '/names' do
#     @player #= Player.new(params[:name])
#     redirect '/play'
#   end

  post '/play' do
      @player = params[:player]
      erb :play
  end

  get '/move' do
     
      @move = params[:user_move]
      erb :move
  end
end
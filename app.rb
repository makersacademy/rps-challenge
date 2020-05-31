require 'sinatra/base'
require_relative './lib/player'

class RPS < Sinatra::Base
  set :session_secret, 'super super secret'
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :index
  end

  get '/play' do
    erb :play
  end

  post '/player_move' do
    @move_1 = Player.new(params[:choice])
    @move = @move_1.choice
    erb :player_move
  end

  run! if app_file == $0

end

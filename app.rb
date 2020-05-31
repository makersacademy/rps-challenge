require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'

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

  post '/first_game' do
    @player_move = Player.new(params[:choice])
    @player = @player_move.choice
    @computer_move = Computer.new.computers_turn
    erb :first_game
  end

  run! if app_file == $0

end

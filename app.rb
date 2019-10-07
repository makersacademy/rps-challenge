require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/random_move'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  set :session_secret, 'super secret'
  enable :sessions

  get "/" do
    erb :index
  end

  post "/play" do
    @player = params[:player]
    erb :play
  end

  post '/move' do
    @random_generator = RandomMove.new
    @opponent_move = @random_generator.random_move
    @player_move = params[:player_move]
    @game = Game.new(@player_move, @opponent_move)
    erb :move
  end

  get '/secret' do
    'This is a secret page'
  end

  run! if app_file == $0
end

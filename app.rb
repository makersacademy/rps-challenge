require 'sinatra/base'
require './lib/user'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/users' do
    player_1 = User.new(params[:user], params[:move])
    player_2 = User.new
    @game = Game.create(player_1, player_2)
    redirect '/match'
  end

  get '/match' do
    @user = @game.player_1
    @computer = @game.player_2
    @user_move = @game.player_1.move
    @computer_move = @game.player_2_move
    erb :match
  end

  run! if app_file == $0
end

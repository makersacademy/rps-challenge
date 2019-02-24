require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    Game.create(player)
    redirect '/login'
  end

  get '/login' do
    erb :login
  end

  post '/play' do
    erb :play
  end

  post '/move' do
    winner = @game.winner(params[:choice], @game.make_move)
    if winner == 1
      @message = "#{@game.player.name} wins"
    elsif winner == 2
      @message = "Computer wins"
    else
      @message = "Draw"
    end
    erb :winner
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

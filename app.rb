require_relative "lib/player"
require_relative "lib/game"
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/single_name' do
    erb :single_name
  end

  get '/multi_name' do
    erb :multi_name
  end

  post '/sp_game' do
    @game = Game.create
    player1 = Player.new(params[:name])
    player2 = Player.new("Computer")
    @game.add(player1, player2)
    redirect '/play'
  end

  post '/multi_game' do
    @game = Game.create
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game.add(player1, player2)
    redirect '/multi_play'
  end

  get '/multi_play' do
    erb :multi_play
  end

  get '/play' do
    erb :play
  end

  get '/end' do
    erb :end
  end

  post '/move' do
    @game.play_vs_comp(params[:move])
    redirect '/end'
  end

  post '/multi_move' do
    @game.player1.move(params[:move1])
    @game.player2.move(params[:move2])
    redirect '/end'
  end
  run! if app_file == $0

end

require './lib/game'
require './lib/player'
require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(player: params[:player_name])
    redirect to '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  get '/lose' do
    @game = Game.instance
    erb(:lose)
  end

  get '/draw' do
    @game = Game.instance
    erb(:draw)
  end

  get '/win' do
    @game = Game.instance
    erb(:win)
  end

  post '/choose_rock' do
    @game = Game.instance
    @game.player.choose_rock
    @game.choose_move
    redirect to '/lose' if @game.chosen_move == "Paper"
    redirect to '/draw' if @game.chosen_move == "Rock"
    redirect to '/win' if @game.chosen_move == "Scissors"
  end

  post '/choose_paper' do
    @game = Game.instance
    @game.player.choose_paper
    @game.choose_move
    redirect to '/lose' if @game.chosen_move == "Scissors"
    redirect to '/draw' if @game.chosen_move == "Paper"
    redirect to '/win' if @game.chosen_move == "Rock"
  end

  post '/choose_scissors' do
    @game = Game.instance
    @game.player.choose_scissors
    @game.choose_move
    redirect to '/lose' if @game.chosen_move == "Rock"
    redirect to '/draw' if @game.chosen_move == "Scissors"
    redirect to '/win' if @game.chosen_move == "Paper"
  end

  get '/move' do
    @game = Game.instance
    erb(:move)
  end

  run! if app_file == $0
end

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

  post '/choose_rock' do
    @game = Game.instance
    @game.player.choose_rock
    @game.choose_move
    redirect to '/lose' if @game.chosen_move == "Paper"
    redirect to '/move' if @game.chosen_move != "Paper"
  end

  post '/choose_paper' do
    @game = Game.instance
    @game.player.choose_paper
    @game.choose_move
    redirect to '/move'
  end

  post '/choose_scissors' do
    @game = Game.instance
    @game.player.choose_scissors
    @game.choose_move
    redirect to '/move'
  end

  get '/move' do
    @game = Game.instance
    erb(:move)
  end

  run! if app_file == $0
end

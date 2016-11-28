require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/rps' do
    @game.player_1.choice(params[:choice])
    redirect '/game2'
  end

  get '/game2'do
    erb :game2
  end

  post '/rps2' do
    @game.player_2.choice(params[:choice])
    @game.choice
    @game.players_choices
    redirect '/result'
  end

  get '/result' do
      erb :result
  end

  run! if app_file == $0
end

require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before { @game = Game.instance }

  get '/' do
    erb :index
  end

  post '/name' do 
    @player = Player.new(params[:player_name])
    @player2 = Player.new
    @game = Game.create(@player, @player2)
    redirect '/play'
  end

  get '/play' do
    @player = @game.player1
    erb :play
  end

  post '/select' do
    @player = @game.player1
    @player.selection = params[:player_selection]
    redirect '/battle'
  end

  get '/battle' do
    @game = @game
    @player = @game.player1
    erb :battle
  end

  get '/result' do
    @game = @game
    @player = @game.player1
    @player2 = @game.player2
    erb :result
  end

  run! if app_file == $0
end

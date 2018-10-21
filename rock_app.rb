require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPSchallenge < Sinatra::Base

  before { @game = Game.instance }

  get '/' do
    erb :index
  end

  post '/name' do
    @player1 = Player.new(params[:player_name])
    @player2 = Player.new
    @game = Game.create(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = @game.player1
    erb :play
  end

  post '/select' do
    @player1 = @game.player1
    @player1.move_made = params[:player_selection]
    redirect '/battle'
  end

  run! if app_file == $0
end

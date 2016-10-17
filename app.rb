require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base


  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    @game.rock
    @game.computer_move
    redirect '/move'
  end

  post '/paper' do
    @game.paper
    @game.computer_move
    redirect '/move'
  end

  post '/scissors' do
    @game.scissors
    @game.computer_move
    redirect '/move'
  end

  get '/move' do
    @game.outcome
    erb :move
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

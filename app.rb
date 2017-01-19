require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
    @player = Player.instance
    @computer = Computer.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.create
    @player.add_name(params[:player_name])
    @computer = Computer.create
    @game = Game.create(@player, @computer)
    redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  post '/result' do
    @player.choose(params[:RPS])
    erb @game.result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

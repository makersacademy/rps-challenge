require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
    @player = Player.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player = Player.create
    @player.add_name(params[:player_name])
    Game.create(@player, Computer.new)
    redirect '/choose'
  end

  get '/choose' do
    erb(:choose)
  end

  post '/round' do
    @player.choose(params[:RPS])
    @winner = @game.winner
    erb(:outcome)
  end

  get '/result' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

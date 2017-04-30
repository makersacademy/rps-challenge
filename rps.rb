require 'sinatra'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'
require 'sinatra/base'

class RPS < Sinatra::Base
  # enable :sessions


  get '/' do
    erb :home
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    single_player ? player2 = bot : player2 = Player.new(params[:player2])
    @game = Game.start(player1, player2)
    redirect '/game'
  end

  before do
    @game = Game.instance
  end

  get '/game' do
    erb :game
  end

  get '/rock' do
    @game.rock
    erb :rock
  end

  get '/paper' do
    @game.paper
  end

  get '/scissors' do
    @game.scissors
  end

  def single_player
    params[:player2] == 'Computer'
  end

  def bot
    Computer.new(params[:player2])
  end

  run! if app_file == $0
end

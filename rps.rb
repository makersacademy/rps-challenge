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

  get '/game' do
    @game = Game.instance
    erb :game
  end

  get '/rock' do
    @game.rock
  end

  def single_player
    params[:player2] == 'Computer'
  end

  def bot
    Computer.new('Computer')
  end

  run! if app_file == $0
end

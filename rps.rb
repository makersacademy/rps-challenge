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
    @player1 = Player.new(params[:player1])
    @player2 =Player.new(params[:player2])
    Game.start(@player1, @player2)
    redirect '/game'
  end

  # before do
  #
  # end

  get '/game' do
    @game = Game.instance
    erb :game
  end

  get '/rock' do
    @game = Game.instance
    @game.rock
  end

  # def single_player
  #   params[:player2] == 'Computer'
  # end
  #
  # def bot
  #   Computer.new(params[:player2])
  # end

  run! if app_file == $0
end

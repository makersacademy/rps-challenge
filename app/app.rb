require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/computer'
require_relative '../lib/game'

class RPS < Sinatra::Base
  attr_reader :game

  enable :sessions

  attr_reader :game

  get '/' do
    erb :index
  end

  post '/name' do
    @player1 = Player.new(params[:player_name])
    @player2 = Computer.new
    @game = Game.new(@player1, @player2)
    session[:game] = @game
    redirect to '/choice'
  end

  get '/choice' do
    @game = session[:game]
    erb :choice
  end

  post '/moved' do
    @game = session[:game]
    @game.player1.choose(params[:choice].to_sym)
    @game.player2.choose(params[:choice].to_sym)
    session[:game] = @game
    redirect to '/draw' if @game.player1.move == @game.player2.move
    redirect to '/winner'
  end

  get '/winner' do
    @game = session[:game]
    erb :winner
  end

  get '/draw' do
    @game = session[:game]
    erb :draw
  end
end

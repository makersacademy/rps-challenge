require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    @player1_name = params[:player1_name]
    erb(:index)
  end

  post '/name' do
    p params
    @game = Game.create
    @player1_name = params[:player1_name]
    session[:player1_name] = @player1_name
    redirect to('/play')
  end

  get '/play' do
    @player1_name = session[:player1_name]
    erb(:play)
  end

  get '/move_confirmation' do
    @player1_name = session[:player1_name]
    @game_move = @game.play
    erb(:move_confirmation)
  end

  run! if app_file == $0

end

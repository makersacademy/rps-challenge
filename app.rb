require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    session[:player_1] = @player_1
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @winner = session[:winner]
    erb :play
  end

  post '/choose' do
    @player_1 = session[:player_1]
    @player_1.choose(params[:shape])
    @player_2 = Computer.new
    session[:player_2] = @player_2
    @winner = Game.new.run(@player_1.shape, @player_2.shape)
    session[:winner] = @winner
    redirect '/play'
  end

  run! if app_file == $0

end

require 'sinatra/base'
require './lib/computer'
require './lib/game'

class RPSBattle < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/selection' do
    session[:selection] = params[:weapon]
    redirect '/selection'
  end

  get '/selection' do
    @player_name = session[:player_name]
    @selection = session[:selection]
    @computer = Computer.new.random_selection
    game = Game.new(@selection, @computer)
    @result = game.check_result
    erb :selection
  end

  run! if app_file == $0
end

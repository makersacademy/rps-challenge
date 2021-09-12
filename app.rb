require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissor < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    session[:game] = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  post '/move' do
    @game = session[:game]
    session[:player_move] = params[:weapon]
    session[:computer_move] = @game.player_2.choose
    redirect '/results'
  end

  get '/results' do
    @game = session[:game]
    erb @game.check_result(session[:player_move], session[:computer_move])
  end

  run! if app_file == $0
end

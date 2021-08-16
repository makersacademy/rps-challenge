require 'sinatra'
require "sinatra/reloader" if development?

require './lib/player'
require './lib/game'
require './lib/winner'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1])
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/make_move' do
    p params
    session[:rps_move] = params[:rps_move]
    session[:game] = Game.new(params[:rps_move], winner_class: Winner)
    redirect '/result'
  end

  get '/result' do
    @user_move = session[:rps_move]
    @game = session[:game]
    @computer_move = @game.computer_move
    erb(:result)
  end

  run! if app_file == $0
end

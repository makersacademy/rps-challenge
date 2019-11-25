require 'sinatra/base'
require './lib/rps_game'
# require './lib/player'

class Game < Sinatra::Base
  enable :sessions

  # before do
  #   @game = RPSGame.new
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:p1_name] = params[:p1_name]
    @p1_name = session[:p1_name]
    erb :names
  end

  post '/play' do

    erb :play
  end

  #  need to get the controller and the model layer communicating
  #  form input is posting
  get '/result' do
    session[:p1_move] = params[:p1_move]
    @p1_move = session[:p1_move]
    @game = RPSGame.new
    @game.results(params[:p1_move])
    erb :result
  end

  run! if app_file == $0
end

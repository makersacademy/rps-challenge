require 'sinatra/base'
require './lib/computer_rps'
require './lib/game_formular'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:marketeer_player] = params[:marketeer1]
    @marketeer_player = session[:marketeer_player]
    erb :play
  end
  #
  # post '/play' do
  #   @marketeer_player = session[:marketeer_player]
  #   erb :result
  # end

  get '/result' do
    @marketeer_player = session[:marketeer_player]
    session[:marketeer_move] = params[:marketeer_move]
    @marketeer_move = session[:marketeer_move]
    @comp_move = Computer.new.move
    @outcome = Winner.new.result_calc(@marketeer_move)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

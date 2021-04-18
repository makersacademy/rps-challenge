require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :names_form
  end

  post '/names' do
    session[:player_1_name] = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  # post '/move' do
  #   @player_1_name = session[:player_1_name]
  #   @cp_move = Game.new.cp_move
  #   @player_move = Game.new.player_move
  #   @message = Game.new.message
  #   session[:cp_move] = @cp_move
  #   session[:player_move] = @player_move
  #   session[:message] = @message
  #   erb :move
  # end

  run! if app_file == $0
end

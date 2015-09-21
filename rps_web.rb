require 'sinatra/base'
require_relative 'lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions
  set :views, proc{File.join(root, '' , 'views')}


  get '/' do
    erb :index
  end

  post '/play-game' do
    session[:name] = params[:name]
    redirect '/play-game'
  end

  post '/result' do
    session[:weapon] = params[:weapon]
    @game = Game.new
    @user_choice = session[:weapon]
    @game.user_choice @user_choice
    @computer_choice = @game.comp_choice
    @game_result = @game.result
    erb :result
    # redirect '/result'
  end

  # get '/result' do
  #   erb :result
  # end

  get '/play-game' do
    @name = session[:name]
    erb :play_game
  end

  run! if app_file == $0
end

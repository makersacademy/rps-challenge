require 'sinatra/base'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name   = session[:player_name]
    @player_choice = session[:player_choice]
    @game_choice =  session[:game_choice]
    @winner = session[:winner]
    erb :play
  end

  post '/play' do
    session[:player_choice] = params[:player_choice]
    @game = Game.create(session[:player_choice])
    @game.choose
    session[:game_choice] = @game.game_choice
    session[:winner] = @game.determine_the_winner
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

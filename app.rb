require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    session[:computer_name] = params[:computer_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @computer_name = session[:computer_name]
    erb :play
  end

  post '/rps' do
    session[:player_move] = params[:player_move]
    session[:computer_move] = ['rock', 'paper', 'scissors'].sample
    redirect '/end_of_round'
  end

  get '/end_of_round' do
    @player_name = session[:player_name]
    @computer_name = session[:computer_name]
    @player_move = session[:player_move]
    @computer_move = session[:computer_move]
    erb :end_of_round
  end

 post '/new-game' do
   redirect '/play'
 end

end

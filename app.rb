require 'sinatra/base'

class RockPaperScissor < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    p params
    session[:player_name] = params[:player_name]
    redirect '/play'
  end
  
  get '/play' do 
    @player_name = session[:player_name]
    erb :welcome_player
  end

  post '/game' do
    @player_name = session[:player_name]
    @move = params[:Move]
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    erb :who_wins
  end

  run! if app_file == $0
end

require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions 

  configure :development do
    
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/attack' do
    @player_name = session[:player_name]
    @player_move = params[:move]
    @computer_move = Game.new.computer_move
    erb :attack
  end
end
require 'sinatra/base'
require_relative './lib/player'

class RoShamBo < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]  
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end
  
  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play 
  end

  post '/move' do
    session[:player_1_move] = params[:player_1_move]
    session[:player_2_move] = params[:player_2_move]
    redirect '/result'
  end

  get '/result' do
    @player_1_name = session[:player_1_name]
    @player_1_move = session[:player_1_move]
    @player_1 = Player.new(@player_1_name, @player_1_move)

    @player_2_name = session[:player_2_name]
    @player_2_move = session[:player_2_move]
    @player_2 = Player.new(@player_2_name, @player_2_move)
    @game = Game.new(@player_1, @player_2)
    @game.round
    erb :result
  end
    
    
    run! if app_file == $0 

end





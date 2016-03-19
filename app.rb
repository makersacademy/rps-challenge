require 'sinatra/base'
require './lib/game_controller'
require './lib/computer_player'

class Rpsls < Sinatra::Base
  enable :sessions

  get '/' do
    erb :welcome
  end

  post '/input_name' do
    session[:username] = params[:username]
    session[:wins] = 0
    session[:losses] = 0
    redirect '/game'
  end

  post '/choose_attack' do
    session[:attack_type] = params[:attack_type]
    redirect '/attack_resolution'
  end

  get '/game' do
    @player_name = session[:username]
    @player_wins = session[:wins]
    @player_losses = session[:losses]
    erb :game
  end

  get '/attack_resolution' do
    @attack = session[:attack_type].to_sym
    @defence = ComputerPlayer.pick_attack
    @win = GameController.choose_winner @attack , @defence
    @win ? session[:wins] += 1 : session[:losses] += 1
    @winner = (@win? session[:username] : 'Computer')
    erb :attack_resolution
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

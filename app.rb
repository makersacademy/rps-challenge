require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/rungame'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = Player.new(params[:player_1_name])
    session[:player2] = Player.new(params[:player_2_name])
    redirect '/choose_player1'
  end

  get '/choose_player1' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:choose_player1)
  end

  post '/select_player1' do
    @player1 = session[:player1]
    @player1.select_weapon(params[:weaponpicker])
    p @player1.weapon
    session[:player1] = @player1
    redirect '/choose_player2'
  end

  get '/choose_player2' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:choose_player2)
  end

  post '/select_player2' do
    @player2 = session[:player2]
    @player2.select_weapon(params[:weaponpicker1])
    session[:player2] = @player2
    redirect '/result'
  end

  get '/result' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @game = RunGame.new(@player1, @player2)
    erb(:result)
  end

  run! if app_file == $0
end

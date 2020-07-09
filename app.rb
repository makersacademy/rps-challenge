require 'sinatra/base'
require './lib/game'

class RpsGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/singleplayer' do
    erb(:singleplayer)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  post '/name_single' do
    session[:name] = params[:name]
    redirect '/play_single'
  end

  post '/name_multi' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play_multi'
  end

  get '/play_single' do
    @name = session[:name]
    erb(:play)
  end

  get '/play_multi' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:play_multi)
  end

  get '/outcome' do
    session[:choice] = params[:choice]
    @name = session[:name]
    @game = Game.new(@name)
    @game.computer_turn
    @game.outcome(session[:choice])
    erb(:outcome)
  end

  get '/outcome_multi' do
    session[:choice_1] = params[:choice_1]
    session[:choice_2] = params[:choice_2]
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    @game = Game.new(@player_1, @player_2)
    @game.outcome(session[:choice_1],session[:choice_2])
    erb(:outcome_multi)
  end
end
